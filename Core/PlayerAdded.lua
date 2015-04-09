--[[
  Author: DragonSK16 (Colton Tipton)
  Date: 4/3/2015
]]--
local functions = require(script.Parent.FunctionsModule.lua)

function PlayerAdded(Player)
  print(Player.Name .. " has entered game!")
  -- Code
end

function PlayerRemoved(Player)
  print(Player.Name .. " has left game!")
  -- Code
end

game.Players.PlayerAdded:connect(PlayerAdded)
game.Players.PlayerRemoved:connect(PlayerRemoved)