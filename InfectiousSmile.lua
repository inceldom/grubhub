local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/StopReverseEngineeringMyScripts/WhatAreYouDoingHere/main/YummySource",true))()

------------------------------------------------------------------------------

local main = library:CreateWindow('Main')
local main2 = library:CreateWindow('Main')


local Farming = main:Section('Farming')
local Other = main2:Section('Other')

------------------------------------------------------------------------------

local part = Instance.new("Part")
local part2 = Instance.new("Part")
local part3 = Instance.new("Part")

------------------------------------------------------------------------------

part.Name = "JurrasicPart1"
part.Anchored = true
part.Parent = game.Workspace
part.Shape = Enum.PartType.Ball
part.Color = Color3.new(1, 1, 1)
part.CFrame = CFrame.new(-69.522522, 55, -3.22888899)
part.Transparency = 1
part.CanCollide = false


part2.Name = "JurrasicPart2"
part2.Anchored = true
part2.Parent = game.Workspace
part2.Shape = Enum.PartType.Ball
part2.Color = Color3.new(1, 1, 1)
part2.CFrame = CFrame.new(-350.522522, 55, -3.22888899)
part2.Transparency = 1
part2.CanCollide = false


part3.Name = "JurrasicPart3"
part3.Anchored = true
part3.Parent = game.Workspace
part3.Shape = Enum.PartType.Ball
part3.Color = Color3.new(1, 1, 1)
part3.CFrame = CFrame.new(-347.206757, 3, 23.9502506)
part3.Transparency = 1
part3.CanCollide = false

------------------------------------------------------------------------------

local hipHeightSlider = main2:Slider('Hip Height', {min = 0, max = 20, default = 0}, function(value)
    game:GetService('Players').LocalPlayer.Character.Humanoid.HipHeight = value
end)

------------------------------------------------------------------------------

local Reset = main2:Button('Reset Character', function()
    game:GetService("Players").LocalPlayer.Character.Ragdoll.Ragdoll:FireServer()
end)

------------------------------------------------------------------------------


local RemoveKillBricks = main:Button('Remove Kill Bricks', function()

for _,v in pairs(game.workspace:GetDescendants()) do

if string.find(v.Name,"Infector") then
v:Destroy()
end
end

wait(2)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Deleted";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

end)

------------------------------------------------------------------------------

local walkspeedBox = main:Box('Walkspeed', '16', function(value)
    game:GetService('Players').LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

------------------------------------------------------------------------------

local jumpspeedBox = main:Box('JumpPower', '50', function(value)
    game:GetService('Players').LocalPlayer.Character.Humanoid.JumpPower = value
end)

------------------------------------------------------------------------------

local PlaySexyMusic = main2:Box('Play Music', 'Sound ID', function(value)

    game.workspace.Sounds.Earthquake.SoundId = "rbxassetid://"..value

wait(2)

game.workspace.Sounds.Earthquake.Playing = true

wait(2)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Now Playing";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

end)

------------------------------------------------------------------------------

local DestroyAntiCheat = main:Toggle('Remove Anti-Cheat', function(state)
    if state then

game:GetService("Workspace").Map.AntiHack:Destroy()
game.Players.LocalPlayer.AntiFly:Destroy()

game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Destroyed";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

    else
        
    end
end)

------------------------------------------------------------------------------

local BuffBat = main:Button('Buff Bat', function()

game.Players.LocalPlayer.Character.Bat.MaxUses:Destroy()
game.Players.LocalPlayer.Character.Bat.Cooldown.Value = 0.01

game.StarterGui:SetCore("SendNotification", {
Title = "Buffed Bat";
Text = "You must have a Bat in your hand.";
Icon = "rbxassetid://1299491401";
Duration = 5;
})
    
end)

------------------------------------------------------------------------------

local TpWeapons = main2:Button('TP Weapons', function()
    workspace.Map.HumanBase.Vendor.BottleCollection.Bottle.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
workspace.Map.HumanBase.Vendor.BatCollection.Bat.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Teleported Weapons to your position.";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

end)

------------------------------------------------------------------------------

local BuffBottle = main:Button('Buff Bottle', function()


game.Players.LocalPlayer.Character.Bottle.MaxUses:Destroy()
game.Players.LocalPlayer.Character.Bottle.Cooldown.Value = 0

game.StarterGui:SetCore("SendNotification", {
Title = "Buffed Bottle";
Text = "you must have bottle in your hand.";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

end)
------------------------------------------------------------------------------

local StealthMode = main2:Toggle('Neutral Mode', function(state)
    if state then

game.Players.LocalPlayer.Team = Human

game.StarterGui:SetCore("SendNotification", {
Title = "GrubGub";
Text = "Switched to Neutral";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

    else
        
    end
end)

------------------------------------------------------------------------------

local signBypass = main:Box('Change Sign Text', 'Text', function(value)
    game:GetService("Workspace").Map.ConstantTerrain.CustomizeSign.SurfaceGui.TextLabel.Text = value
    
    game.StarterGui:SetCore("SendNotification", {
Title = "GrubGub";
Text = "Changed Sign Text to".. value;
Icon = "rbxassetid://1299491401";
Duration = 5;
})
end)

------------------------------------------------------------------------------

local GetSkins = main2:Toggle('Get all skins', function(state)

    if state then

wait(0.5)

game:GetService("Players").LocalPlayer.Marketplace.Skins.Bat.Diamond.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Bat.Flame.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Bat.Checkers.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Bat.Blue.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Bat.Green.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Bat.Orange.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Bat.Yellow.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Bat.Red.Value = true

wait(0.5)

game:GetService("Players").LocalPlayer.Marketplace.Skins.Knife.Diamond.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Knife.Flame.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Knife.Checkers.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Knife.Blue.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Knife.Green.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Knife.Orange.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Knife.Yellow.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Knife.Red.Value = true

wait(0.5)

game:GetService("Players").LocalPlayer.Marketplace.Skins.Shotgun.Diamond.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Shotgun.Flame.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Shotgun.Checkers.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Shotgun.Blue.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Shotgun.Green.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Shotgun.Orange.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Shotgun.Yellow.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Shotgun.Red.Value = true

wait(0.5)

game:GetService("Players").LocalPlayer.Marketplace.Skins.Handgun.Diamond.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Handgun.Flame.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Handgun.Checkers.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Handgun.Blue.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Handgun.Green.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Handgun.Orange.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Handgun.Yellow.Value = true
game:GetService("Players").LocalPlayer.Marketplace.Skins.Handgun.Red.Value = true

game.StarterGui:SetCore("SendNotification", {
Title = "GrubGub";
Text = "Redeemed Skins";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

    else
        
wait(0.5)

game:GetService("Players").LocalPlayer.Marketplace.Skins.Bat.Diamond.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Bat.Flame.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Bat.Checkers.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Bat.Blue.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Bat.Green.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Bat.Orange.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Bat.Yellow.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Bat.Red.Value = false

wait(0.5)

game:GetService("Players").LocalPlayer.Marketplace.Skins.Knife.Diamond.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Knife.Flame.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Knife.Checkers.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Knife.Blue.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Knife.Green.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Knife.Orange.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Knife.Yellow.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Knife.Red.Value = false

wait(0.5)

game:GetService("Players").LocalPlayer.Marketplace.Skins.Shotgun.Diamond.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Shotgun.Flame.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Shotgun.Checkers.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Shotgun.Blue.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Shotgun.Green.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Shotgun.Orange.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Shotgun.Yellow.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Shotgun.Red.Value = false

wait(0.5)

game:GetService("Players").LocalPlayer.Marketplace.Skins.Handgun.Diamond.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Handgun.Flame.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Handgun.Checkers.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Handgun.Blue.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Handgun.Green.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Handgun.Orange.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Handgun.Yellow.Value = false
game:GetService("Players").LocalPlayer.Marketplace.Skins.Handgun.Red.Value = false

    end

end)

------------------------------------------------------------------------------


local GoToEnd = main2:Button('Go To End', function()
    function Tween(time,pos)
		pcall(function()
			workspace.Gravity = 0
			game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(time, Enum.EasingStyle.Linear), {CFrame = pos}):Play() wait(time)
			workspace.Gravity = 196.19999694824
		end)
    end

game.StarterGui:SetCore("SendNotification", {
Title = "GrubGub";
Text = "Started Tweening";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

	wait(0.1)


		Tween(5.5,game:GetService("Workspace").JurrasicPart1.CFrame) pcall(function()
wait(0.1)
        Tween(5.5,game:GetService("Workspace").JurrasicPart2.CFrame)
wait(0.1)
        Tween(5.5,game:GetService("Workspace").JurrasicPart3.CFrame)

		end)
		
		game.StarterGui:SetCore("SendNotification", {
Title = "GrubGub";
Text = "Teleported";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

end)

------------------------------------------------------------------------------

local GoToEnd = main:Button('Delete Final Base Door', function()

game:GetService("Workspace").Map.ConstantTerrain.KillGateSwitcher.Gate:Destroy()

		game.StarterGui:SetCore("SendNotification", {
Title = "GrubGub";
Text = "Removed";
Icon = "rbxassetid://1299491401";
Duration = 3;
})

end)

------------------------------------------------------------------------------

local DestroyAllYellowDoors = main2:Toggle('Destroy Orange Doors', function(state)
    if state then

for _,v in pairs(game.workspace:GetDescendants()) do

if string.find(v.Name,"AntiSmiler") then
v:Destroy()
end
end

		game.StarterGui:SetCore("SendNotification", {
Title = "GrubGub";
Text = "Destroyed. There must be an orange door inside a stage for this to work.";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

else      
end
end)

------------------------------------------------------------------------------
