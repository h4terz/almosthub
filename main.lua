local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "AlmostHub", HidePremium = false, SaveConfig = true, ConfigFolder = "AlmostConfig", IntroText="Hi" IntroIcon = "https://almostthere.niuxii.repl.co/host/images/icon.png", Icon = "https://almostthere.niuxii.repl.co/host/images/icon.png"})

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]

OrionLib:MakeNotification({
	Name = "Loaded!",
	Content = "Welcome to AlmostHub, "..Player.."!",
	Image = "https://almostthere.niuxii.repl.co/host/images/icon.png",
	Time = 5
})

local Main = Window:MakeTab({
	Name = "Almost Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local noclip = false

Main:AddButton({
	Name = "Noclip",
	Callback = function()
      		if noclip == false then
                local noclip = true char = game.Players.LocalPlayer.Character while true do if noclip == true then for _,v in pairs(char:children()) do pcall(function() if v.className == "Part" then v.CanCollide = false elseif v.ClassName == "Model" then v.Head.CanCollide = false end end) end end game:service("RunService").Stepped:wait() end
            end
  	end    
})

Main:AddButton({
	Name = "Fly",
	Callback = function()
            loadstring(game:HttpGet('https://almostthere.niuxii.repl.co/host/scripts/fly.lua'))()
  	end    
})

Main:AddButton({
	Name = "God",
	Callback = function()
            loadstring(game:HttpGet('https://almostthere.niuxii.repl.co/host/scripts/god.lua'))()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
