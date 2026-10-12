"""Parse a guide addon file with RestedXP's own parser (its functions.lua and GuideLoader.lua).

usage: python3 -I tools/check_guide.py <dir containing lupa> <RXPGuides addon dir> <guide .lua> [CLASS Race] [-v]

The WoW API is stubbed and map lookups return fixed numbers, so this checks syntax (directives,
arguments, step tags, class filters), not in-game behaviour. CLASS/Race default to MAGE Gnome and
decide which "<< Class" lines apply. Exits 1 if a guide fails to parse or RestedXP logs an error.
"""
import sys

args = [a for a in sys.argv[1:] if a != '-v']
verbose = '-v' in sys.argv
lupa_dir, rxp_dir, guide_path = args[0], args[1], args[2]
player_class, player_race = (args[3], args[4]) if len(args) >= 5 else ('MAGE', 'Gnome')

sys.path.insert(0, lupa_dir)
from lupa import luajit21  # LuaJIT: Lua 5.1 like WoW, with the bit library RestedXP uses

L = luajit21.LuaRuntime(unpack_returned_tuples=True)
L.execute(r'''
local function Stub()
  return setmetatable({}, { __index = function() return Stub() end, __call = function() return nil end })
end
-- Unknown API tables and functions become stubs; ALL_CAPS globals (game strings) stay nil.
setmetatable(_G, { __index = function(_, k)
  if type(k) == "string" and k:match("^[A-Z0-9_]+$") then return nil end
  return Stub()
end })

GetBuildInfo = function() return "1.60.1", "70338", "Oct 9 2026", 16001 end
UnitFactionGroup = function() return "Alliance", "Alliance" end
UnitLevel = function() return 1 end
UnitSex = function() return 3 end
GetLocale = function() return "enUS" end
tinsert, tremove = table.insert, table.remove
strlower, strupper, strsub, strfind, strmatch = string.lower, string.upper, string.sub, string.find, string.match
strbyte, strchar, format, gsub = string.byte, string.char, string.format, string.gsub
strtrim = function(s) return (s:gsub("^%s+", ""):gsub("%s+$", "")) end
hooksecurefunc = function() end
CreateFrame = function() return Stub() end
C_Map = { GetAreaInfo = function(id) return "Area" .. tostring(id) end, GetMapInfo = function() return { parentMapID = 0 } end }
-- functions.lua keeps HereBeDragons as an upvalue for the goto parser.
HBD = {
  GetZoneCoordinatesFromWorld = function() return 0.5, 0.5 end,
  GetWorldCoordinatesFromZone = function() return 0, 0, 0 end,
}
LibStub = function(name) if tostring(name):match("HereBeDragons") then return HBD end return Stub() end
QUEST_MONSTERS_KILLED = "%s slain: %d/%d"
QUEST_ITEMS_NEEDED = "%s: %d/%d"
QUEST_OBJECTS_FOUND = "%s: %d/%d"
QUEST_FACTION_NEEDED = "%s: %s / %s"
QUEST_PLAYERS_KILLED = "Players slain: %d/%d"
ERR_QUEST_ADD_KILL_SII = "%s slain: %d/%d"
ERR_QUEST_ADD_ITEM_SII = "%s: %d/%d"
ERR_QUEST_ADD_FOUND_SII = "%s: %d/%d"
ERR_QUEST_OBJECTIVE_COMPLETE_S = "%s (Complete)"
NONE = "None"

LOGGED = {}
function recordLog(kind, ...)
  local parts = {}
  for i = 1, select("#", ...) do parts[i] = tostring((select(i, ...))) end
  LOGGED[#LOGGED + 1] = kind .. ": " .. table.concat(parts, " ")
end
RXPGuides = {}
addon = {
  functions = {}, separators = {}, guides = {}, guideList = {},
  player = { faction = "Alliance", season = 0 },
  game = "FOREVER", gameVersion = 16001,
  locale = { Get = function(s) return s end },
  settings = { profile = { season = 0, phase = 1 }, ReplaceColors = function(s) return s end },
  comms = {
    PrettyPrint = function(...) recordLog("PrettyPrint", ...) end,
    PrettyDebug = function(...) recordLog("PrettyDebug", ...) end,
  },
  mapConversion = {}, questConversion = {}, itemQueryList = {},
  RXPGuides = RXPGuides,
  GetMapInfo = function(zone, x, y) return tonumber(zone) or 1426, tonumber(x), tonumber(y) end,
  GetItemName = function(id) return "item" .. tostring(id) end,
  GetUnitName = function() return "Player" end,
  ReadCacheData = function() return "0" end,
  NewModule = function(_, _, t) return t or {} end,
}
''')

g = L.globals()
g.addon.player['class'] = player_class
g.addon.player['race'] = player_race
L.execute('UnitClass = function() return "%s", "%s", 0 end' % (player_class.title(), player_class))
L.execute('UnitRace = function() return "%s", "%s", 0 end' % (player_race, player_race))


def run_file(path, chunkname):
    loader = L.eval('function(src, name) local f, err = loadstring(src, name) if not f then error(err) end return f end')
    loader(open(path, encoding='utf-8').read(), chunkname)('RXPGuides', g.addon)


run_file(rxp_dir + '/functions.lua', '@functions.lua')
L.execute('addon.error = function(text) recordLog("error", text) end')  # record instead of raising
run_file(rxp_dir + '/GuideLoader.lua', '@GuideLoader.lua')
run_file(rxp_dir + '/DB/forever/flightData.lua', '@flightData.lua')  # .fp looks flight paths up by name
# Map names for .zone and .zoneskip. db.lua defines addon.mapId near the top and then needs tables this
# sandbox doesn't build, so run it protected and only require that the map table loaded.
db_loader = L.eval('function(src, a) local f = assert(loadstring(src, "@db.lua")) pcall(f, "RXPGuides", a) return a.mapId ~= nil end')
if not db_loader(open(rxp_dir + '/DB/forever/db.lua', encoding='utf-8').read(), g.addon):
    sys.exit('check_guide: DB/forever/db.lua did not define addon.mapId')
L.execute('addon.GetMapId = function(zone) return addon.mapId[zone] end')  # as in RXPGuides/map.lua

# Capture the guide file's RegisterGuide calls, then parse each guide.
L.execute('CAPTURED = {} RXPGuides.RegisterGuide = function(text) CAPTURED[#CAPTURED + 1] = text end')
L.execute(open(guide_path, encoding='utf-8').read())

report, failed = L.eval(r'''function(verbose)
  local out, failed = {}, false
  for gi, text in ipairs(CAPTURED) do
    addon.currentGuideName = nil
    local ok, guide, err = pcall(addon.ParseGuide, text)
    if not ok or err then
      failed = true
      out[#out + 1] = "guide " .. gi .. " failed: " .. tostring(ok and err or guide)
    else
      local shown = (guide.displayname and guide.displayname ~= guide.name) and (" (shown as " .. guide.displayname .. ")") or ""
      out[#out + 1] = string.format("guide %d: %s / %s%s, %d steps, next: %s",
        gi, tostring(guide.group), tostring(guide.name), shown, #guide.steps, tostring(guide.next))
      for si, step in ipairs(guide.steps) do
        for _, el in ipairs(step.elements) do
          if el.tag == "fp" and not el.fpId then
            failed = true
            out[#out + 1] = string.format("guide %d step %d: flight path not found: %s", gi, si, tostring(el.text))
          end
        end
        if verbose then
          local parts, flags = {}, {}
          for _, el in ipairs(step.elements) do
            local id = el.questId or el.id
            parts[#parts + 1] = (el.tag or "text") .. (id and (":" .. tostring(id)) or "")
          end
          for _, f in ipairs({ "label", "completewith", "requires", "sticky", "loop" }) do
            if step[f] then flags[#flags + 1] = f .. "=" .. tostring(step[f]) end
          end
          out[#out + 1] = string.format("  %2d [%s] %s", si, table.concat(flags, " "), table.concat(parts, " "))
        end
      end
    end
  end
  for _, e in ipairs(LOGGED) do out[#out + 1] = "logged " .. e; failed = true end
  return table.concat(out, "\n"), failed
end''')(verbose)
print(report)
sys.exit(1 if failed else 0)
