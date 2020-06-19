local localInit = hs.configdir .. '/local.lua'

dofile(hs.configdir .. '/config/event.lua')

if hs.fs.attributes(localInit) then
  dofile(localInit)
end
