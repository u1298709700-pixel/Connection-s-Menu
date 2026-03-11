local Players = game:GetService("Players")

local Player = Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Hum = Character:WaitForChild("Humanoid")

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local MenuSettings = {
	Debug = true;
	DebugText = "menu menu menu";
	
	StandartSpeed = Hum.WalkSpeed;
	
	WalkSpeed = {
		CanSlide = false;
	};
};

local Window = Rayfield:CreateWindow({
	Name = "Connection's FTAP Menu";
	Icon = 0;
	LoadingTitle = "Connection's FTAP Menu";
	LoadingSubtitle = "By Endermari123isthaun";
	Theme = "DarkBlue";
	
	DisableRayfieldPrompts = false;
	DisableBuildWarnings = false;
});

local Tab = Window:CreateTab("Player", 9525535512)

Tab:CreateToggle({
	Name = "Auto Farm",
	CurrentValue = false,
	Callback = function(Value)
		MenuSettings.WalkSpeed.CanSlide = Value
	end
})

Tab:CreateSlider({
	Name = "Walk Speed",
	Range = {0, 1000},
	Increment = 1,
	Suffix = "Speed",
	CurrentValue = MenuSettings.StandartSpeed,
	Callback = function(Value)
		if MenuSettings.WalkSpeed.CanSlide then
			Hum.WalkSpeed = Value
		end
	end
})

Rayfield:LoadConfiguration()
