local Players = game:GetService("Players")

local Player = Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Hum = Character:WaitForChild("Humanoid")

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local MenuSettings = {
	Debug = true;
	DebugText = "menu menu menu";
	
	StandartSpeed = Hum.WalkSpeed;
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

local Section = Tab:CreateSection("Player")

Section:CreateSlider({
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

function Debug()
	if MenuSettings.Debug then
		print("Rayfield: "..MenuSettings.DebugText)
	end
end

Debug()
Rayfield:LoadConfiguration()
