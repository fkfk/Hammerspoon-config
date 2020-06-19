local prevKeyCode
local eisuuEvent = {}

eisuuEvent.eventHandler = function(event)
  local isCmdKeyUp = not(event:getFlags()['cmd']) and event:getType() == hs.eventtap.event.types.flagsChanged
  if isCmdKeyUp and prevKeyCode == hs.keycodes.map['cmd'] then
    hs.eventtap.keyStroke({}, hs.keycodes.map['eisu'])
  elseif isCmdKeyUp and prevKeyCode == hs.keycodes.map['rightcmd'] then
    hs.eventtap.keyStroke({}, hs.keycodes.map['kana'])
  end

  prevKeyCode = event:getKeyCode()
end

return eisuuEvent
