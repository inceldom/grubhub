local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/StopReverseEngineeringMyScripts/WhatAreYouDoingHere/main/YummySource",true))()

local main = library:CreateWindow('Regular')
local main2 = library:CreateWindow('Spawn')

------------------------------------------------------------------


local part = Instance.new("Part")

part.Name = "JurrasicPart1"
part.Anchored = true
part.Parent = game.Workspace
part.Shape = Enum.PartType.Ball
part.Color = Color3.new(1, 1, 1)
part.CFrame = CFrame.new(-0.361601502, 13, -49.3537712)
part.Transparency = 1
part.CanCollide = false


local GetLabCoat = main:Button('Get Lab Coat', function()
    
    wait(0.1)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Teleporting...";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

wait(0.1)

function Tween(time,pos)
		pcall(function()
			workspace.Gravity = 0
			game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(time, Enum.EasingStyle.Linear), {CFrame = pos}):Play() wait(time)
			workspace.Gravity = 196.19999694824
		end)
	end

	wait(0.1)


		Tween(2,game:GetService("Workspace").Lab.Wardrobe.Button.CFrame) pcall(function()
wait(0.1)
        Tween(2,game:GetService("Workspace").Floor.CFrame)
        
            wait(0.1)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Collected";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

wait(0.1)
end)
end)

local DeleteAds = main:Toggle('Delete Ads', function(state)
    if state then

game:GetService("Workspace").Screen.Gui.Frame.Main.Ad:Destroy()

    wait(0.1)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Deleted Advertisements";
Icon = "rbxassetid://1299491401";
Duration = 5;
})


    else
        
    end
end)

local WalkingSlider = main:Slider('Walk Speed Adjuster', {min = 16, max = 100, default = 16}, function(value)
    game:GetService('Players').LocalPlayer.Character.Humanoid.WalkSpeed = value
end)



local JumpingSlider = main:Slider('Jump Power Adjuster', {min = 50, max = 100, default = 50}, function(value)
    game:GetService('Players').LocalPlayer.Character.Humanoid.JumpPower = value
end)


local GotoLab = main:Button('TP to Lab', function()
    
        wait(0.1)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Teleporting...";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

wait(0.1)

function Tween(time,pos)
		pcall(function()
			workspace.Gravity = 0
			game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(time, Enum.EasingStyle.Linear), {CFrame = pos}):Play() wait(time)
			workspace.Gravity = 196.19999694824
		end)
	end

	wait(0.1)


		Tween(1,game:GetService("Workspace").JurrasicPart1.CFrame) pcall(function()

        wait(0.1)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Teleported";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

wait(0.1)
end)
end)


local DeleteLabDoor = main:Toggle('Delete Lab Door', function(state)
    if state then

game:GetService("Workspace").Lab.Door:Destroy()

game:GetService("Workspace").Lab.Lasers:Destroy()

        wait(0.1)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Deleted Door";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

wait(0.1)
        
    end
end)


local SpawnBomb = main2:Toggle('Spawn Bomb', function(state)
    if state then

game:GetService("ReplicatedStorage").Games["A BOMB!"].Parent = game.Workspace

        wait(0.1)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "The bomb explodes every round.";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

wait(0.1)

else

game:GetService("Workspace")["A BOMB!"].Parent = game:GetService("ReplicatedStorage").Games


    end
end)



local Pyramid = main2:Toggle('Spawn Compass', function(state)
    if state then

game:GetService("ReplicatedStorage").Games["Face the East!"].Parent = game.Workspace

else

game:GetService("Workspace")["Face the East!"].Parent = game:GetService("ReplicatedStorage").Games
    end
end)

local OrangeButton = main2:Toggle('Spawn Material Floor', function(state)
    if state then

game:GetService("ReplicatedStorage").Games["Stand on grass"].Parent = game.Workspace

else

game:GetService("Workspace")["Stand on grass"].Parent = game:GetService("ReplicatedStorage").Games
    end
end)

local Chair = main2:Toggle('Spawn Chairs', function(state)
    if state then

game:GetService("ReplicatedStorage").Games["SIT!"].Parent = game.Workspace

else

game:GetService("Workspace")["SIT!"].Parent = game:GetService("ReplicatedStorage").Games
    end
end)


local People = main2:Toggle('Spawn NPCs', function(state)
    if state then

game:GetService("ReplicatedStorage").Games["Stand near the sailor"].Parent = game.Workspace

else

game:GetService("Workspace")["Stand near the sailor"].Parent = game:GetService("ReplicatedStorage").Games
    end
end)

local noob = main2:Toggle('Spawn Noob', function(state)
    if state then

game:GetService("ReplicatedStorage").Games["Touch noob's head"].Parent = game.Workspace

else

game:GetService("Workspace")["Touch noob's head"].Parent = game:GetService("ReplicatedStorage").Games
    end
end)
