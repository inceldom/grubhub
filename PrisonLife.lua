local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/StopReverseEngineeringMyScripts/WhatAreYouDoingHere/main/YummySource",true))()

local Tools = library:CreateWindow('Main')
local Misc = library:CreateWindow('Misc')
local Teleport = library:CreateWindow('Teleport')

noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
if key == "o" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)

---------------------------------------------

local Scrims = Misc:Button('Arrest All Criminals', function()
    local Player = game.Players.LocalPlayer
local cpos = Player.Character.HumanoidRootPart.CFrame
for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
if v.Name ~= Player.Name then
local i = 10
    repeat
    wait()
    i = i-1
    game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
    Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
    until i == 0
end
end
Player.Character.HumanoidRootPart.CFrame = cpos
end)


local M9 = Tools:Button('Get M9', function()
game.workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver.M9.ITEMPICKUP)
end)

local Remington = Tools:Button('Get Remington', function()
workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
end)

local CrudeKnife Tools:Button('Get Crude Knife', function()
game.workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single["Crude Knife"].ITEMPICKUP)
end)

local Hammer Tools:Button('Get Hammer', function()
game.workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single.Hammer.ITEMPICKUP)
end)

local AK74 Tools:Button('Get AK-47', function()
game.workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
end)
-----------------------------------------------------
local CriminalBase = Teleport:Button('TP to Criminal Base', function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end)

local CourtYard = Teleport:Button('TP to CourtYard', function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(798.999756, 95.1383057, 2540.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

local Caf1 = Teleport:Button('TP to Cafeteria', function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(875.049805, 96.9333496, 2271.5498, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end)
local Prison = Teleport:Button('TP to Prison', function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(590.699524, 98.0399399, 2269.83911)
end)
local Caf2 = Teleport:Button('TP to Cafeteria 2', function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(916.682251, 99.9899597, 2223.38721)
end)
local Sewers = Teleport:Button('TP to Sewers', function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(917.092468, 78.6991119, 2437.32397)
end)
local Prison = Teleport:Button('TP to Prison Cells', function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(917.500366, 99.9899902, 2458.89307)
end)
local Prison = Teleport:Button('TP to Prison Roof', function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(820.341248, 118.990005, 2378.33838)
end)
-----------------------------------------------------
local Guards = Tools:Button('Become Guard', function()
game.workspace.Remote.TeamEvent:FireServer("Bright blue")
end)

local Inamtes = Tools:Button('Become Inmate', function()
game.workspace.Remote.TeamEvent:FireServer("Bright orange")
end)

local Neutral = Tools:Button('Become Neutral', function()
Workspace.Remote.TeamEvent:FireServer("Medium stone grey")
end)

local Criminal = Tools:Button('Become Criminal', function()
local location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(location)
end)


local Doors = Tools:Toggle('Destroy Prison Fences', function()
    game:GetService("Workspace")["Prison_Fences"]:Destroy()
end)

local Meme = Tools:Toggle('Open Debug Stats', function(active)
    if active then
        game:GetService("Players").LocalPlayer.PlayerGui.TestGui.Frame.Visible = true
        else
        game:GetService("Players").LocalPlayer.PlayerGui.TestGui.Frame.Visible = false
end
end)

local Meme = Tools:Toggle('Destroy Annoying UI', function(active)
    if active then
        game:GetService("Players").LocalPlayer.PlayerGui.Home.hud.Visible = false
        else
        game:GetService("Players").LocalPlayer.PlayerGui.Home.hud.Visible = true
end
end)

local Prison = Teleport:Button('TP to Police Base', function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(835.926208, 99.9900055, 2267.71191)
end)

local Prison = Teleport:Button('TP to Gate Button', function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(504.488312, 102.039917, 2242.48389)
end)


local TP = Teleport:Button('TP to Survailence', function()
local CPart = game:GetService("Workspace").Prison_Guard_Outpost.furniture_cctv.cctv.Chair.Part

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CPart.Position)

end)

local Prison = Teleport:Button('TP to Neutral Spawn', function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(879.38031, 27.7899876, 2349.28955)
end)


local WalkingSlider = Misc:Slider('Walk Speed Adjuster', {min = 16, max = 200, default = 16}, function(value)
    game:GetService('Players').LocalPlayer.Character.Humanoid.WalkSpeed = value
end)



local JumpingSlider = Misc:Slider('Jump Power Adjuster', {min = 50, max = 300, default = 50}, function(value)
    game:GetService('Players').LocalPlayer.Character.Humanoid.JumpPower = value
end)


local HipSlider = Misc:Slider('HipHeight Adjuster', {min = 0.5, max = 100, default = 0.5}, function(value)
    game:GetService('Players').LocalPlayer.Character.Humanoid.HipHeight = value
end)


local Meme = Misc:Toggle('Noclip', function(state)

if state then
    
    noclip = true
    
         wait(0.1)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Enabled";
Icon = "rbxassetid://1299491401";
Duration = 3;
})
    
else
    
    noclip = false

         wait(0.1)
game.StarterGui:SetCore("SendNotification", {
Title = "Disabled";
Icon = "rbxassetid://1299491401";
Duration = 3;
})

end
end)

local Prison = Misc:Button('Remove Clothing', function()
game.Players.LocalPlayer.Character.Clothing:Destroy()
wait(0.1)
game.Players.LocalPlayer.Character.Clothing:Destroy()
end)


local TPBox = Misc:Box('TP To Player', 'Username', function(value)
    local plr1 = game.Players.LocalPlayer.Character
    local plr2 = game.Workspace:FindFirstChild(value)
    
    plr1.HumanoidRootPart.CFrame = plr2.HumanoidRootPart.CFrame * CFrame.new(0,2,0)
    
     wait(0.1)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Teleported";
Icon = "rbxassetid://1299491401";
Duration = 3;
})

    
end)


local Doors = Misc:Toggle('Destroy All Doors', function()
 game:GetService("Workspace").Doors:Destroy()  
 
 wait(0.1)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Destroyed Doors";
Icon = "rbxassetid://1299491401";
Duration = 3;
})
 
end)

local Doors = Misc:Button('Escape', function()
    
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(497.262573, 198.039948, 2212.94336)
    
end)

local Invis = Misc:Button('Invisible', function()
    local player = game.Players.LocalPlayer
position     = player.Character.HumanoidRootPart.Position
wait(0.1)
player.Character:MoveTo(position + Vector3.new(0, 1000000, 0))
wait(0.1)
humanoidrootpart = player.Character.HumanoidRootPart:clone()
wait(0.1)
player.Character.HumanoidRootPart:Destroy()
humanoidrootpart.Parent = player.Character
player.Character:MoveTo(position)
wait()

game.Players.LocalPlayer.Character.Torso.Transparency = 1
game.Players.LocalPlayer.Character.Head.Transparency  = 1
game.Players.LocalPlayer.Character["Left Arm"].Transparency = 1
game.Players.LocalPlayer.Character["Right Arm"].Transparency = 1
game.Players.LocalPlayer.Character["Left Leg"].Transparency = 1
game.Players.LocalPlayer.Character["Right Leg"].Transparency = 1
game.Players.LocalPlayer.Character.Humanoid:RemoveAccessories()
game.Players.LocalPlayer.Character.Head.face:Remove()
end)

local reset = Misc:Button('Reset Character', function()
    game.Players.LocalPlayer.Character:BreakJoints()
end)


local CarTp = Misc:Button('TP to Car', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").CarContainer.Sedan.Body.Seat.Position)
    end)
--local GMods = Misc:Button('Mod Guns', function()
        --wait(0.1)
--game.StarterGui:SetCore("SendNotification", {
--Title = "GrubHub";
--Text = "Gun Modding proceeding, un-equip items first.";
--Icon = "rbxassetid://1299491401";
--Duration = 3;
--})
--               wait(1)
--               while true do wait()
--local b = math.huge
--for i,c in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren())  do
--  local found = c:FindFirstChild("GunStates")
--   if found then 
--       local bluefacebaby = require(found)
--			bluefacebaby.Bullets = 10
--			bluefacebaby.Spread = 0
--			bluefacebaby.CurrentAmmo = 999
--			bluefacebaby.StoredAmmo = 9999
--			bluefacebaby.AutoFire = true
--			bluefacebaby.Range = 10000
--			bluefacebaby.FireRate = 0.001
--			bluefacebaby.MaxAmmo = 999
--			bluefacebaby.Damage = 100
--end
--end
--end
--end)
