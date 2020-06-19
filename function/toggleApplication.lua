local obj = {}

obj.getToggleApplicationFunction = function (appName)
  return function ()
    local app = hs.application.get(appName)
    if (app ~= nil and app:isFrontmost()) then
      app:hide()
    else
      hs.application.launchOrFocus(appName)
    end
  end
end

return obj
