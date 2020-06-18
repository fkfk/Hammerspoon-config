local eikanaEvent = require('eikanaEvent')

eikana = hs.eventtap.new(
  {
    hs.eventtap.event.types.keyDown,
    hs.eventtap.event.types.flagsChanged
  },
  eikanaEvent.eventHandler
)

eikana:start()
