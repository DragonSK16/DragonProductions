--[[
  Author: DragonSK16 (Colton Tipton)
  Date: 4/3/2015
]]--

local functions = {}

functions.RGB = function(r,g,b)
  return Color3.new(r/255,g/255,b/255)
end

functions.SetValue = function(self, prop, value)
  local b, msg = pcall(function() return self[prop] == value end)
  if b then
    return self[prop] = value
  else
    return 0, print(msg)
  end
end

return functions