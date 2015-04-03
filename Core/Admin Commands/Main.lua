--[[
  Author: DragonSK16 (Colton Tipton)
  Date: 4/3/2015
]]--
  
  local db = require(script:WaitForChild("DB"))
  
  function Command(Player, msg)
    local Character = Player.Character
    
    
  end
  
  game.Players.PlayerAdded:connect(function(Player)
      Player.Chatted:connect(function(msg)
          Command(Player, msg)
      end)
  end)