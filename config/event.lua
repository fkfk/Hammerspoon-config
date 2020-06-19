local eikanaEvent = require('function/eikanaEvent')

eikana = hs.eventtap.new(
  {
    hs.eventtap.event.types.keyDown,
    hs.eventtap.event.types.flagsChanged
  },
  eikanaEvent.eventHandler
)

eikana:start()
