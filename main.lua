local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "AlmostHub", HidePremium = false, SaveConfig = true, ConfigFolder = "AlmostConfig", IntroText="Hi" IntroIcon = "https://almostthere.niuxii.repl.co/host/images/icon.png", Icon = "https://almostthere.niuxii.repl.co/host/images/icon.png"})

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
