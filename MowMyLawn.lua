
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/StopReverseEngineeringMyScripts/WhatAreYouDoingHere/main/YummySource",true))()

local main = library:CreateWindow('Mow My Lawn')


local StartFarming = main:Button('Auto-Click (J = on k = off)', function()
    wait(2)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Started Auto-Clicking";
Icon = "rbxassetid://1299491401";
Duration = 5;
})
wait(0.1)
    if not syn or pebc_execute or CALAMARI_PLATFORM or XPROTECT or if_sirhurt_closure or elysianexecute or SECURE_LOAD then
		local localplayer = game:GetService("Players").LocalPlayer
		local mouse = localplayer:GetMouse()

		mouse.KeyDown:Connect(function(key)
			if key == 'j' then
				asd = game:GetService('RunService').Stepped:Connect(function()
					mouse1click()
				end)
			end
		end)

		mouse.KeyDown:Connect(function(key)
			if key == 'k' then
				asd:Disconnect()
			end
		end)
    end
end)


local StartFarming = main:Button('Auto Mow', function()
    	local plr = game:GetService'Players'.LocalPlayer
	local human = plr.Character.Humanoid

	while wait() do
		for _,v in next, workspace.GRASS:GetChildren() do
			human.WalkToPoint = v.Position
			wait()
		end
		
	end
	
	wait(2)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Started Auto-Mowing";
Icon = "rbxassetid://1299491401";
Duration = 5;
})


end)


local WalkingSlider = main:Slider('Walk Speed Adjuster', {min = 16, max = 25, default = 16}, function(value)
    game:GetService('Players').LocalPlayer.Character.Humanoid.WalkSpeed = value
end)



local JumpingSlider = main:Slider('Jump Power Adjuster', {min = 50, max = 60, default = 50}, function(value)
    game:GetService('Players').LocalPlayer.Character.Humanoid.JumpPower = value
end)

local TPBosses = main:Button('TP to Boss Area', function()
local TeleportService = game:GetService("TeleportService")
local Place = 311061265
TeleportService:Teleport(Place, player)
end)

local Badge = main:Button('Get Secret Badge', function()
	local CPart = game:GetService("Workspace").Map["Turbo Supreme"].Tire.Part

	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CPart.Position)
    end)


local thefunny = main:Button('Say The Funny', function()
    local args = {
    [1] = "Mow the lawn they said",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

wait(3)


local args = {
    [1] = "It would be easy they said",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end)

local SHout = main:Box('Serverwide Shout', 'Text', function(value)
end)


local SHoutButton = main:Button('Shout', function()
local Text2Shout = SHout.Text
    
local args = {
    [1] = (Text2Shout)
}

workspace["Heck Yeah"].BlahBlahBlahBlah:FireServer(unpack(args))
end)
