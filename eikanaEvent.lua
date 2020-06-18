local leftCmd = 0x37
local rightCmd = 0x36
local eisuu = 0x66
local kana = 0x68
local prevKeyCode

local eisuuEvent = {}

eisuuEvent.eventHandler = function(event)
  local isCmdKeyUp = not(event:getFlags()['cmd']) and event:getType() == hs.eventtap.event.types.flagsChanged
  if isCmdKeyUp and prevKeyCode == leftCmd then
    hs.eventtap.keyStroke({}, eisuu)
  elseif isCmdKeyUp and prevKeyCode == rightCmd then
    hs.eventtap.keyStroke({}, kana)
  end

  prevKeyCode = event:getKeyCode()
end

return eisuuEvent
