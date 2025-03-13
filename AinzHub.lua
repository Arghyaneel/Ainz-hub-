local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

-- Password Lock System
local Password = "GOD999"
local UserInput = Rayfield:Prompt({
    Title = "Ainz's Hub",
    Subtitle = "Enter Password to Continue",
    InputType = "String"
})

if UserInput ~= Password then
    Rayfield:Notify({
        Title = "Access Denied",
        Content = "Incorrect Password!",
        Duration = 5
    })
    return
end

Rayfield:Notify({
    Title = "Access Granted",
    Content = "Welcome to Ainz's Hub",
    Duration = 3
})

-- Main GUI Window
local Window = Rayfield:CreateWindow({
    Name = "Ainz's Hub",
    LoadingTitle = "Loading Ainz's Hub...",
    LoadingSubtitle = "Please wait...",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "AinzHub",
        FileName = "Settings"
    }
})

-- Farm Section
local FarmTab = Window:CreateTab("Farm", 4483362458)
local AutoFarm = FarmTab:CreateToggle({
    Name = "Auto Farm",
    CurrentValue = false,
    Callback = function(Value)
        if Value then
            print("Auto Farm Enabled")
        else
            print("Auto Farm Disabled")
        end
    end
})

-- Misc Section
local MiscTab = Window:CreateTab("Misc", 4483362458)
local SpeedHack = MiscTab:CreateToggle({
    Name = "Speed Boost",
    CurrentValue = false,
    Callback = function(Value)
        if Value then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
        else
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end
    end
})

-- Teleport Section
local TeleportTab = Window:CreateTab("Teleport", 4483362458)
local TeleportToSpawn = TeleportTab:CreateButton({
    Name = "Teleport to Spawn",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.SpawnLocation.CFrame
    end
})

-- Event Section
local EventTab = Window:CreateTab("Event", 4483362458)
local EventMode = EventTab:CreateToggle({
    Name = "Activate Event Mode",
    CurrentValue = false,
    Callback = function(Value)
        if Value then
            print("Event Mode Activated")
        else
            print("Event Mode Deactivated")
        end
    end
})

-- Settings Section
local SettingsTab = Window:CreateTab("Settings", 4483362458)
local ResetCharacter = SettingsTab:CreateButton({
    Name = "Reset Character",
    Callback = function()
        game.Players.LocalPlayer.Character:BreakJoints()
    end
})

-- Shop Section
local ShopTab = Window:CreateTab("Shop", 4483362458)
local BuyItem = ShopTab:CreateButton({
    Name = "Buy Item (Example)",
    Callback = function()
        print("Purchased Item!")
    end
})

Rayfield:LoadConfiguration()
