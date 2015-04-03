--[[
  Author: DragonSK16 (Colton Tipton)
  Date: 4/3/2015
]]--

local db = {}

db["Kill"] = function(Player, msg)
  local P2;
  local b, msg = pcall(function()
  	local Name = (msg):match("%w+$");
	P2 = game.Players:FindFirstChild(Name)
  end)
  if b then
    local Name = (msg):match("%w+$");
    P2 = game.Players:FindFirstChild(Name)
  end
  if P2 ~= nil then
    if P2.Character then
      P2.Character:BreakJoints()
      print(Player.Name .. " killed " .. P2.Name)
    end
  end
end

return db