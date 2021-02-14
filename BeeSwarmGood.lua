local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/StopReverseEngineeringMyScripts/WhatAreYouDoingHere/main/YummySource",true))()

local main = library:CreateWindow('Main')
local waypoints = library:CreateWindow('Waypoints')
local remotes = library:CreateWindow('Remotes')
local Autofarming = library:CreateWindow('Autofarming')


local WalkingSlider = main:Slider('Walk Speed Adjuster', {min = 16, max = 150, default = 16}, function(value)
game:GetService('Players').LocalPlayer.Character.Humanoid.WalkSpeed = value

end)



local JumpingSlider = main:Slider('Jump Power Adjuster', {min = 50, max = 300, default = 50}, function(value)
   
game:GetService('Players').LocalPlayer.Character.Humanoid.JumpPower = value
end)





local NoCollectibles = main:Button('Remove Collectibles', function()
   
        	local part = game.Workspace.Collectibles

	part:ClearAllChildren()
	
	wait(1)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Removed Collectibles";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

end)


local AntiAfk = main:Toggle('Anti Afk', function(state)
    if state then
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

wait(1)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Anti-Afk On";
Icon = "rbxassetid://1299491401";
Duration = 5;
})
	
else
    
    wait(1)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Anti-Afk Off";
Icon = "rbxassetid://1299491401";
Duration = 5;
})
    end
    end)

local WaitBox = Autofarming:Box('Wait Time', '2', function(value)
end)


local StartFarming = Autofarming:Button('Start Farming', function()
local WaitValue = WaitBox.Text

wait(0.1)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Loading...";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

wait(WaitValue)
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Started Farming";
Icon = "rbxassetid://1299491401";
Duration = 5;
})


    function Tween(time,pos)
		pcall(function()
			workspace.Gravity = 0
			game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(time, Enum.EasingStyle.Linear), {CFrame = pos}):Play() wait(time)
			workspace.Gravity = 196.19999694824
		end)
	end

	wait(0.1)


	function Repeat()
		Tween(2.5,game:GetService("Workspace").Particles.Snowflakes.SnowflakePart.CFrame) pcall(function()

			wait(WaitValue)

    
			Repeat()
		end)
	end

	wait(WaitValue)
	
	Repeat()
	
end)


local WealthClock = Autofarming:Toggle('Auto-Wealth Clock', function(state)
    
    if state then
        
               wait(1)
        
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Enabled Auto-Wealth Clock";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

wait(0.1)
        
        while true do
            
            wait(0.1)
					
game.ReplicatedStorage.Events.ToyEvent:FireServer("Wealth Clock")

end
end        
end)



local GingerbreadHouse = Autofarming:Toggle('Auto GingerbreadHouse', function(state)
    
    if state then
        
               wait(1)
        
game.StarterGui:SetCore("SendNotification", {
Title = "GrubHub";
Text = "Enabled Auto-Gingerbread House";
Icon = "rbxassetid://1299491401";
Duration = 5;
})

wait(0.1)
        
        while true do
            
            wait(0.1)
					
game.ReplicatedStorage.Events.ToyEvent:FireServer("Gingerbread House")

end
end        
end)


local FallingLights = main:Button('TP to Falling Lights', function()
local CPart = game.Workspace.Particles.WarningDisk

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CPart.Position)
		
end)

local FallingCoconuts = main:Button('Catch Falling Coconuts', function()
local CPart = game.Workspace.Particles.WarningDisk

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CPart.Position)
		
end)

local RCodes = main:Button('Redeem All Codes', function()
    promo = game.ReplicatedStorage.Events.PromoCodeEvent
	promo:FireServer("38217")
	promo:FireServer("Bopmaster")
	promo:FireServer("Buzz")
	promo:FireServer("Cog")
	promo:FireServer("Connoisseur")
	promo:FireServer("Crawlers")
	promo:FireServer("Nectar")
	promo:FireServer("Roof")
	promo:FireServer("Wax")
	promo:FireServer("Wink")
	promo:FireServer("ClubBean")
	promo:FireServer("SecretProfileCode")
	promo:FireServer("WikiHonor")
	promo:FireServer("WikiAwardClock")
	promo:FireServer("GumdropsForScience")
	promo:FireServer("Sure")
	promo:FireServer("BloxyCelebration")
	promo:FireServer("ClubConverters")
	promo:FireServer("ClubBasket")
	promo:FireServer("Marshmallow")
	promo:FireServer("500Mil")
	promo:FireServer("Discord100k")
	promo:FireServer("BeeDay2019")
	promo:FireServer("TornadoGlitch")
	promo:FireServer("RebootCloud")
	promo:FireServer("Tornado")
	promo:FireServer("ClubCloud")
	promo:FireServer("Gumaden10T")
	promo:FireServer("Beesmasbegins")
	promo:FireServer("BeesBuzz123")
	promo:FireServer("JollyJelly")
	promo:FireServer("FestiveFrogs")
	promo:FireServer("BANNED")
	promo:FireServer("Mocito100T")
	promo:FireServer("RedMarket")
	promo:FireServer("5mMembers")
	promo:FireServer("Cubly")
	promo:FireServer("Buoyant")
	promo:FireServer("BigBag")
	promo:FireServer("Teespring")
	promo:FireServer("BeesBuzz123")
	promo:FireServer("Discord100k")
	promo:FireServer("ClubConverters")
	promo:FireServer("500mil")
	promo:FireServer("Marshmallow")
wait(0.5)
end)


local TP = waypoints:Button('TP to Storage', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-25.4011364, 3.10927987, 280.845856, -0.000101685524, -0.288733631, 0.957409501, -1, 0.000101685524, -7.55488873e-05, -7.55488873e-05, -0.957409501, -0.288733721)
end)

local TP = waypoints:Button('Tp to Beesmas Tree', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(19.7836571, 14.5350056, 366.429535, -2.81333923e-05, 0.56608367, -0.824347854, -1, -2.81333923e-05, 1.47819519e-05, -1.47819519e-05, 0.824347854, 0.56608361)
end)

local TP = waypoints:Button('TP to Candles', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-374.069397, 46.0520935, 280.252197, -1.1920929e-06, -0.999997973, 0.00207532127, -1.00000012, 1.01327896e-06, -1.16415322e-09, -1.16415322e-09, -0.00207532127, -0.999998093)
end)

local TP = waypoints:Button('TP to BBM', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(89.6343994, 310.092285, -276.434509, 2.75373459e-05, 0.650255442, -0.759715676, -1, 2.75373459e-05, -1.26957893e-05, 1.26957893e-05, 0.759715676, 0.650255382)
end)

local TP = waypoints:Button('TP Snow Machine', function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(277.956085, 92.2006073, 103.317726, 0, -1, -0, -1, 0, -0, 0, 0, -1)
end)

local TP = waypoints:Button('TP to Wreath', function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-281.724487, 17.5120964, 344.882782, -3.23057175e-05, -0.707060337, -0.707153201, -1, 3.23057175e-05, 1.33812428e-05, 1.33812428e-05, 0.707153201, -0.707060337)
end)

local TP = waypoints:Button('TP to Stockings', function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(235.246811, 33.9151669, 232.883942, 0, 0, -1, -1, 0, 0, 0, 1, 0)
end)

local TP = waypoints:Button('TP to Feast', function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-106.041, 127.202003, -113.750999, 0, 0, 1, -1, 0, 0, 0, -1, 0)
end)

local TP = waypoints:Button('TP to Gingerbread House', function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-205.300598, 4.44209599, 93.6090851, 0, 0, 1, -1, 0, 0, 0, -1, 0)
end)

local TP = waypoints:Button('TP to Lid Art', function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(34.1292305, 234.35878, -512.368103, -4.17232513e-06, 0.00216221809, 0.999997616, -1, -4.17232513e-06, -4.17232513e-06, 4.17232513e-06, -0.999997616, 0.00216221809)
end)

local TP = waypoints:Button('TP to Lid Snowbear Spawner', function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(43.179821, 20.9920959, 35.2696381, 0, 0, -1, -1, 0, 0, 0, 1, 0)
end)


local Remote = remotes:Button('Use Blue Field Booster', function()
    game.ReplicatedStorage.Events.ToyEvent:FireServer("Blue Field Booster")
end)

local Remote = remotes:Button('Use red Field Booster', function()
    game.ReplicatedStorage.Events.ToyEvent:FireServer("Red Field Booster")
end)

local Remote = remotes:Button('Use Glue Dispenser', function()
    game.ReplicatedStorage.Events.ToyEvent:FireServer("Glue Dispenser")
end)

local Remote = remotes:Button('Use Coconut Dispenser', function()
    game.ReplicatedStorage.Events.ToyEvent:FireServer("Coconut Dispenser")
end)

local Remote = remotes:Button('Use gingerbread House', function()
    game.ReplicatedStorage.Events.ToyEvent:FireServer("Gingerbread House")
end)

local Remote = remotes:Button('Use Strawberry Dispenser', function()
    game.ReplicatedStorage.Events.ToyEvent:FireServer("Strawberry Dispenser")
end)

local Remote = remotes:Button('Use Blueberry Dispenser', function()
    game.ReplicatedStorage.Events.ToyEvent:FireServer("Blueberry Dispenser")
end)

local Remote = remotes:Button('Use Treat Dispenser', function()
    game.ReplicatedStorage.Events.ToyEvent:FireServer("Treat Dispenser")
end)

local Remote = remotes:Button('Use Honey Dispenser', function()
    game.ReplicatedStorage.Events.ToyEvent:FireServer("Honey Dispenser")
end)

local Remote = remotes:Button('Equip Bubble Mask', function()
    game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = "Bubble Mask",["Category"]  = "Accessory"})
end)

local Remote = remotes:Button('Equip Diamond Mask', function()
    game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = "Diamond Mask",["Category"]  = "Accessory"})
end)

local Remote = remotes:Button('Equip Fire Mask', function()
    game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = "Fire Mask",["Category"]  = "Accessory"})
end)

local Remote = remotes:Button('Equip Demon Mask', function()
    game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = "Demon Mask",["Category"]  = "Accessory"})
end)

local Remote = remotes:Button('Equip Honey Mask', function()
    game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = "Honey Mask",["Category"]  = "Accessory"})
end)

local Remote = remotes:Button('Equip Gummy Mask', function()
    game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = "Gummy Mask",["Category"]  = "Accessory"})
end)

local ClrDeco = main:Button('Remove Field Decorations', function()
    for i, v in pairs(game.workspace.FieldDecos:GetChildren()) do	
		v:Destroy()
	end
end)

local ClrDeco = main:Button('Open Blender', function()
    		player = game:GetService("Players").LocalPlayer
		root = player.Character.HumanoidRootPart
		origPOS = root.CFrame
		player.Character.HumanoidRootPart.CFrame = CFrame.new(-426, 69, 38)
		game.ReplicatedStorage.Events.ToyEvent:FireServer("Blender")
		game.Players.LocalPlayer.PlayerGui.ScreenGui.Blender.Visible = true
		game.Players.LocalPlayer.PlayerGui.ScreenGui.Blender.RecipeProgress.Visible = true
		wait(1)
		root.CFrame = origPOS
		print("Blender GUI opened successfully")
    end)

local PopBBL = main:Button('TP to Bubble', function()
   local CPart = game.Workspace.Particles.Bubble

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CPart.Position) 
end)

local BlenderCheat = main:Toggle('MemoryMatch Cheat', function(state)
    if state then
        
        spawn (function()
		while wait() do
			for i,v in pairs(game.Players.LocalPlayer.PlayerGui.ScreenGui:WaitForChild("MinigameLayer"):GetChildren()) do
				for k,q in pairs(v:WaitForChild("GuiGrid"):GetDescendants()) do
					if q.Name == "ObjContent" or q.Name == "ObjImage" then
						q.Visible = true
					end
				end
			end
		end
end)
 else  
     end
end)
    
    
local PopBBL = Autofarming:Button('Rejoin Game', function()
    			local placeId = 1537690962
			game:GetService("TeleportService"):Teleport(placeId)
end)

local Rew = main:Button('Request Sprout', function()
    game.ReplicatedStorage.Events.ToyEvent:FireServer("Sprout Summoner")
end)

local GL = waypoints:Button('TP to Gummy Lair', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(270.561157, 25271.3359, -789.771545)
    end)

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


local killcoconut = false
local KillCocane = Autofarming:Toggle('Kill Coconut Crab', function(state)
if state then
      killcoconut = true
      noclip = true
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-256.375092, 112.547897, 500.457794, 0.998952866, -0.0450557806, 0.00794458669, -8.64538929e-09, 0.173648775, 0.98480767, -0.0457508452, -0.98377645, 0.173466951)
else
      killcoconut = false
      noclip = false
      end
    end)

local afksnail = false
local KillSnail = Autofarming:Toggle('Kill Stump Snail', function(state)

if afksnail == false then
      afksnail = true
      noclip = true
      while afksnail do
            wait()
 
            local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = CFrame.new(420,117,-178)
      end
else
      afksnail = false
      noclip = false
end
end)


local mondo = false
local KillMondo = Autofarming:Toggle('Kill Mondo Chick', function(state)

if mondo == false then
      mondo = true
      noclip = true
      while mondo do
            wait()
 
            local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
      uTorso.CFrame = CFrame.new(76.0186844, 207.248322, -167.660995)
      end
else
      mondo = false
      noclip = false
end
end)


local killvici = false
local KillVic = Autofarming:Toggle('Auto-Kill Vicious Bee', function(state)
if state then

killvici = true

noclip = true
      while killvici do
wait()

for _,i in pairs(game.workspace.Particles:GetChildren()) do
      if string.find(i.Name,"Waiti") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = i.CFrame
      end
      end
for _,v in pairs(game.workspace.Monsters:GetChildren()) do
      if string.find(v.Name,"Vici") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Torso.CFrame * CFrame.new(0,13,0)
 
      end
end
for _,r in pairs(game.workspace.Monsters:GetChildren()) do
      if string.find(r.Name,"Gifted") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = r.Torso.CFrame * CFrame.new(0,13,0)
 
            end
 
      end
      end
else
      killvici = false
      noclip = false
end
end)

local tpwindy = false

local windy = Autofarming:Toggle('Auto-Kill Windy Bee', function(state)
if tpwindy == false then

      tpwindy = true
      noclip = true
    local player = game.Players.LocalPlayer
    local sanghuman = player.Character.HumanoidRootPart
 
      while tpwindy do
            wait()
 
     for _,v in pairs(game.workspace.NPCBees:GetChildren()) do
      if string.find(v.Name,"Windy") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,25,0)
end
end
 for k,r in pairs(workspace.Collectibles:GetChildren()) do
            if tostring(r) == tostring(game.Players.LocalPlayer.Name) or tostring(r) == "C" then
                        if (r.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 25 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = r.CFrame
                local intvalue = Instance.new("IntValue",r)
                intvalue.Name = "Void"
end
end
end
      end
else
      tpwindy = false
      noclip = false
end
end)


local act5 = false

local AutoQuest = Autofarming:Toggle('Auto-Quest', function(state)

act5 = true

repeat
wait(5)
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Pepper")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Coconut")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Playtime")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Honey")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Quest")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Battle")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Ability")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Goo")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Sunflower")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Dandelion")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Mushroom")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Blue Flower")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Clover")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Spider")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Bamboo")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Strawberry")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Pineapple")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Pumpkin")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Cactus")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Rose")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Pine Tree")
game.ReplicatedStorage.Events.BadgeEvent:FireServer("Collect", "Stump")
game.ReplicatedStorage.Events.ToyEvent:FireServer("Glue Dispenser")
game.ReplicatedStorage.Events.ToyEvent:FireServer("Free Royal Jelly Dispenser")
game.ReplicatedStorage.Events.ToyEvent:FireServer("Blueberry Dispenser")
game.ReplicatedStorage.Events.ToyEvent:FireServer("Strawberry Dispenser")
game.ReplicatedStorage.Events.ToyEvent:FireServer("Treat Dispenser")
game.ReplicatedStorage.Events.ToyEvent:FireServer("Wealth Clock")
game.ReplicatedStorage.Events.CompleteQuestFromPool:FireServer("Brown Bear")
game.ReplicatedStorage.Events.CompleteQuestFromPool:FireServer("Polar Bear")
game.ReplicatedStorage.Events.CompleteQuestFromPool:FireServer("Honey Bee")
game.ReplicatedStorage.Events.CompleteQuestFromPool:FireServer("Black Bear")
game.ReplicatedStorage.Events.CompleteQuestFromPool:FireServer("Bucko Bee")
game.ReplicatedStorage.Events.CompleteQuestFromPool:FireServer("Riley Bee")
game.ReplicatedStorage.Events.GiveQuestFromPool:FireServer("Brown Bear")
game.ReplicatedStorage.Events.GiveQuestFromPool:FireServer("Polar Bear")
game.ReplicatedStorage.Events.GiveQuestFromPool:FireServer("Honey Bee")
game.ReplicatedStorage.Events.GiveQuestFromPool:FireServer("Black Bear")
game.ReplicatedStorage.Events.GiveQuestFromPool:FireServer("Bucko Bee")
game.ReplicatedStorage.Events.GiveQuestFromPool:FireServer("Riley Bee")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Treat Tutorial")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Treat Tutorial")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bonding With Bees")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bonding With Bees")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Search For A Sunflower Seed")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Search For A Sunflower Seed")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("The Gist Of Jellies")
game.ReplicatedStorage.Events.GiveQuest:FireServer("The Gist Of Jellies")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Search For Strawberries")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Search For Strawberries")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Binging On Blueberries")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Binging On Blueberries")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Royal Jelly Jamboree")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Royal Jelly Jamboree")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Search For Sunflower Seeds")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Search For Sunflower Seeds")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Picking Out Pineapples")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Picking Out Pineapples")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Seven To Seven")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Seven To Seven")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Mother Bears Midterm")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Mother Bears Midterm")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Eight To Eight")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Eight To Eight")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Sights On The Stars")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Sights On The Stars")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("The Family Final")
game.ReplicatedStorage.Events.GiveQuest:FireServer("The Family Final")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Preliminary Research")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Preliminary Research")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Biology Study")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Biology Study")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Proving The Hypothesis")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Proving The Hypothesis")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bear Botany")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bear Botany")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Kingdom Collection")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Kingdom Collection")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Defensive Adaptions")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Devensive Adaptions")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Benefits Of Technology")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Benefits Of Technology")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Spider Study")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Spider Study")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Roses And Weeds")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Roses And Weeds")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Blue Review")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Blue Review")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ongoing Progress")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ongoing Progress")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Red / Blue Duality")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Red / Blue Duality")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Costs Of Computation")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Costs Of Computation")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pollination Practice")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pollination Practice")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Optimizing Abilities")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Optimizing Abilities")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ready For Infrared")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ready For Infrared")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Breaking Down Badges")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Breaking Down Badges")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Subsidized Agriculture")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Subsidized Agriculture")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Meticulously Crafted")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Meticulously Crafted")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Smart, Not Hard")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Smart, Not Hard")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Limits of Language")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Limits of Language")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Patterns and Probability")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Patterns and Probability")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Chemical Analysis")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Chemical Analysis")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Mark Mechanics")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Mark Mechanics")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Meditating On Phenomenon")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Meditating On Phenomenon")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Beesperanto")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Beesperanto")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Hive Minded Bias")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Hive Minded Bias")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Mushroom Measurement Monotony")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Mushroom Measurement Monotony")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("The Power Of Information")
game.ReplicatedStorage.Events.GiveQuest:FireServer("The Power Of Information")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Testing Teamwork")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Testing Teamwork")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Epistemological Endeavor")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Epistemological Endeavor")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Egg Hunt: Panda Bear")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Egg Hunt: Panda Bear")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Lesson On Ladybugs")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Lesson On Ladybugs")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Rhino Rumble")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Rhino Rumble")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Beetle Battle")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Beetle Battle")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Spider Slayer")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Spider Slayer")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ladybug Bonker")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ladybug Bonker")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Spider Slayer 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Spider Slayer 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Rhino Wrecking")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Rhino Wrecking")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Final Showdown")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Final Showdown")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Werewolf Hunter")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Werewolf Hunter")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Skirmish with Scorpions")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Skirmish with Scorpions")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Mantis Massacre")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Mantis Massacre")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("The REAL Final Showdown")
game.ReplicatedStorage.Events.GiveQuest:FireServer("The REAL Final Showdown")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ant Arrival")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ant Arrival")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Winged Wack Attack")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Winged Wack Attack")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Fire Fighter")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Fire Fighter")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Army Ant Assault")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Army Ant Assault")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Colossal Combat")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Colossal Combat")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Eager Exterminator")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Eager Exterminator")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Leaper Lickin'")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Leaper Lickin'")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Colossal Combat 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Colossal Combat 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Outrageous Onslaught")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Outrageous Onslaught")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Royal Rumble")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Royal Rumble")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ultimate Ant Annihilation 1")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ultimate Ant Annihilation 1")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ultimate Ant Annihilation 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ultimate Ant Annihilation 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ultimate Ant Annihilation 3")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ultimate Ant Annihilation 3")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ultimate Ant Annihilation 4")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ultimate Ant Annihilation 4")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Ultimate Ant Annihilation 5")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Ultimate Ant Annihilation 5")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Star Journey 1")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Star Journey 1")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Star Journey 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Star Journey 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Star Journey 3")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Star Journey 3")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Star Journey 4")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Star Journey 4")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Star Journey 5")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Star Journey 5")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Egg Hunt: Riley Bee")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Egg Hunt: Riley Bee")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Egg Hunt: Bucko Bee")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Egg Hunt: Bucko Bee")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Sunflower Start")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Sunflower Start")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Dandelion Deed")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Dandelion Deed")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pollen Fetcher")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pollen Fetcher")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Red Request")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Red Request")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Into The Blue")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Into The Blue")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Variety Fetcher")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Variety Fetcher")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bamboo Boogie")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bamboo Boogie")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Red Request 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Red Request 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Cobweb Sweeper")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Cobweb Sweeper")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Leisure Loot")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Leisure Loot")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("White Pollen Wrangler")
game.ReplicatedStorage.Events.GiveQuest:FireServer("White Pollen Wrangler")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pineapple Picking")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pineapple Picking")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pollen Fetcher 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pollen Fetcher 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Weed Wacker")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Weed Wacker")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Red + Blue = Gold")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Red + Blue = Gold")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Colorless Collection")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Colorless Collection")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Spirit of Springtime")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Spirit of Springtime")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Weed Wacker 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Weed Wacker 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pollen Fetcher 3")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pollen Fetcher 3")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Lucky Landscaping")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Lucky Landscaping")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Azure Adventure")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Azure Adventure")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pink Pineapples")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pink Pineapples")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Blue Mushrooms")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Blue Mushrooms")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Cobweb Sweeper 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Cobweb Sweeper 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Rojo-A-Go-Go")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Rojo-A-Go-Go")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pumpkin Plower")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pumpkin Plower")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pollen Fetcher 4")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pollen Fetcher 4")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bouncing Around Biomes")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bouncing Around Biomes")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Blue Pineapples")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Blue Pineapples")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Rose Request")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Rose Request")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Search For The White Clover")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Search For The White Clover")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Stomping Grounds")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Stomping Grounds")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Collecting Cliffside")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Collecting Cliffside")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Mountain Meandering")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Mountain Meandering")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Quest Of Legends")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Quest Of Legends")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("High Altitude")
game.ReplicatedStorage.Events.GiveQuest:FireServer("High Altitude")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Blissfully Blue")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Blissfully Blue")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Rouge Round-up")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Rouge Round-up")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("White As Snow")
game.ReplicatedStorage.Events.GiveQuest:FireServer("White As Snow")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Solo On The Stump")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Solo On The Stump")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Colorful Craving")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Colorful Craving")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pumpkins, Please!")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pumpkins, Please!")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Smorgasbord")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Smorgasbord")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pollen Fetcher 5")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pollen Fetcher 5")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("White Clover Redux")
game.ReplicatedStorage.Events.GiveQuest:FireServer("White Clover Redux")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Strawberry Field Forever")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Strawberry Field Forever")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Tasting The Sky")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Tasting The Sky")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Whispy and Crispy")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Whispy and Crispy")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Walk Through The Woods")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Walk Through The Woods")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Get Red-y")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Get Red-y")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("One Stop On The Tip Top")
game.ReplicatedStorage.Events.GiveQuest:FireServer("One Stop On The Tip Top")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Blue Mushrooms 2")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Blue Mushrooms 2")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pretty Pumpkins")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pretty Pumpkins")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Black Bear, Why?")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Black Bear, Why?")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bee A Star")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bee A Star")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Spirit's Starter")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Spirit's Starter")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("The First Offering")
game.ReplicatedStorage.Events.GiveQuest:FireServer("The First Offering")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Rules of The Road")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Rules of The Road")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("QR Quest")
game.ReplicatedStorage.Events.GiveQuest:FireServer("QR Quest")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pleasant Pastimes")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pleasant Pastimes")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Nature's Lessons")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Nature's Lessons")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("The Gifts Of Life")
game.ReplicatedStorage.Events.GiveQuest:FireServer("The Gifts Of Life")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Out-Questing Questions")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Out-Questing Questions")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Forcefully Friendly")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Forcefully Friendly")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Sway Away")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Sway Away")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Memories of Memories")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Memories of Memories")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Beans Becoming")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Beans Becoming")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Do You Bee-lieve In Magic?")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Do You Bee-lieve In Magic?")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("The Ways Of The Winds / The Wind And Its Way")
game.ReplicatedStorage.Events.GiveQuest:FireServer("The Ways Of The Winds / The Wind And Its Way")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Beauty Duty")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Beauty Duty")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Witness Grandeur")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Witness Grandeur")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Beeternity")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Beeternity")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("A Breath Of Blue")
game.ReplicatedStorage.Events.GiveQuest:FireServer("A Breath Of Blue")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Glory Of Goo")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Glory Of Goo")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Tickle The Wind")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Tickle The Wind")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Rhubarb That Could Have Been")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Rhubarb That Could Have Been")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Dreams Of Being A Bee")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Dreams Of Being A Bee")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("The Sky Over The Stump")
game.ReplicatedStorage.Events.GiveQuest:FireServer("The Sky Over The Stump")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Space Oblivion")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Space Oblivion")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Pollenpalooza")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Pollenpalooza")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Dancing With Stick Bug")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Dancing With Stick Bug")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bean Bug Busser")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bean Bug Busser")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bombs, Blueberries, and Bean Bugs")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bombs, Blueberries, and Bean Bugs")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bean Bugs And Boosts")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bean Bugs And Boosts")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Make It Hasty")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Make It Hasty")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Total Focus")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Total Focus")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("On Your Marks")
game.ReplicatedStorage.Events.GiveQuest:FireServer("On Your Marks")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Look In The Leaves")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Look In The Leaves")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("What About Sprouts")
game.ReplicatedStorage.Events.GiveQuest:FireServer("What About Sprouts")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bean Bug Beatdown")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bean Bug Beatdown")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Bear Without Despair")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Bear Without Despair")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Spirit Spree")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Spirit Spree")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Echoing Call")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Echoing Call")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Spring Out Of The Mountain")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Spring Out Of The Mountain")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Goo")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Goo")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Medley")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Medley")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Mushrooms")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Mushrooms")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Picnic")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Picnic")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Pollen")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Pollen")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Rampage")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Rampage")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Roses")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Roses")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Scavenge")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Scavenge")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Skirmish")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Skirmish")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Strawberries")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Strawberries")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Tango")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Tango")
game.ReplicatedStorage.Events.GiveQuest:FireServer("Riley Bee: Tour")
game.ReplicatedStorage.Events.CompleteQuest:FireServer("Riley Bee: Tour")

until

act5 == false

end)
			
local Farm = Autofarming:Button('Open Farming UI', function()	
loadstring(game:HttpGet("https://raw.githubusercontent.com/StopReverseEngineeringMyScripts/WhatAreYouDoingHere/main/BSSAuto",true))()
end)
