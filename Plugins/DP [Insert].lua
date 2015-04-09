local Plugin = PluginManager():CreatePlugin()
local Toolbar = Plugin:CreateToolbar("DP [Insert]")

local Buttons = {
  
  Folder = Toolbar:CreateButton(
    "Folder",
    "Click to add a folder",
    "http://wiki.roblox.com/images/f/fc/ExplorerImageIndex77.png"
  ),
  
  Configuration = Toolbar:CreateButton(
    "Configuration",
    "Click to add a Configuration",
    "http://wiki.roblox.com/images/6/69/Configuration_icon.png"
  ),
  
  Script = Toolbar:CreateButton(
    "Script",
    "Click to add a Script",
    "http://wiki.roblox.com/images/a/ac/Script_icon.png"
  ),
  
  LocalScript = Toolbar:CreateButton(
    "Local Script",
    "Click to add a Local Script",
    "http://wiki.roblox.com/images/c/cf/Localscript_icon.png"
  ),
  
  ModuleScript = Toolbar:CreateButton(
    "ModuleScript",
    "Click to add a ModuleScript",
    "http://wiki.roblox.com/images/2/22/ExplorerImageIndex76.png"
  ),

  ScreenGui = Toolbar:CreateButton(
    "ScreenGui",
    "Click to add a ModuleScript",
    "http://wiki.roblox.com/images/6/67/Screengui_icon.png"
  ),

}

-- Code

function Clicked(Button)
  
  local s = game:GetService("Selection")
  local chs = game:GetService("ChangeHistoryService")
  local Item;
  if #s:Get() > 0 then
    Item = Instance.new(Button.Name, s:Get()[1])
  else
    Item = Instance.new(Button.Name, workspace)
  end
    s:Set({Item})
    chs:SetWaypoint(Item.Name)
    
end

for ClassName, Button in pairs(Buttons) do
  
  Button.Name = ClassName
  Button.Click:connect(function() return Clicked(Button) end)
  
end