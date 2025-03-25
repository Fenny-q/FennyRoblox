-- Fenny

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Fenny", "DarkTheme")

------------------------------------------------------

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Made by Fenny", -- Required
	Text = "fenny_q", -- Required
	Icon = "rbxassetid://96767567864000" -- Optional
})

------------------------------------------------------

-- Main
local Home = Window:NewTab("- Home -")
local Section = Home:NewSection("Home-Tab")

Section:NewButton("Fly", "Press F to make you fly", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Entitynt/Roblox-Fly-Script/refs/heads/main/FlyCommand.lua",true))()
end)

Section:NewSlider("Walk Speed", "Makes you fast⚡", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewToggle("Usain Bolt (FAST)", "Makes you FAST", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 10000
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
end)

Section:NewSlider("FOV", "Changes your FOV", 120, 70, function(s) -- 120 (MaxValue) | 70 (MinValue)
    game.Workspace.CurrentCamera.FieldOfView = s
end)

Section:NewSlider("Jump Power", "Makes you jump high", 1000, 50, function(s) -- 1000 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

Section:NewButton("No Clip", "Makes you go through walls", function()
    game:GetService('RunService').Stepped:connect(function()
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end)
end)

Section:NewButton("Infinite Jump", "Makes you jump infinitely", function()
    local Player = game.Players.LocalPlayer
    local Character = Player.Character or Player.CharacterAdded:Wait()
    local Humanoid = Character:WaitForChild("Humanoid")

    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if input.KeyCode == Enum.KeyCode.Space and not gameProcessed then
            Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end)
end)

Section:NewButton("Reset Character", "Resets your character", function()
    local Player = game.Players.LocalPlayer
    local Character = Player.Character or Player.CharacterAdded:Wait()

    Character:BreakJoints()
end)


------------------------------------------------------

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Home = Window:NewTab("- Teleport -")
local Section = Home:NewSection("Teleport-Tab")
 
players = {}
 
for i,v in pairs(game:GetService("Players"):GetChildren()) do
   table.insert(players,v.Name)
end
 
Section:NewDropdown("Select Player", " ", players, function(abc)
    Select = abc
end)
 
Section:NewButton("Teleport", " ", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Select].Character.HumanoidRootPart.CFrame
end)

------------------------------------------------------

local Home = Window:NewTab("- Fun -")
local Section = Home:NewSection("Fun-Tab")

Section:NewToggle("Sigma Walk", "Makes you walk like a Sigma", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 3
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
end)


------------------------------------------------------


Section:NewButton("Player count", "Displays the current player count", function()
    local Players = game:GetService("Players")
    local StarterGui = game:GetService("StarterGui")
    local SoundService = game:GetService("SoundService")

    -- Create and configure the sound
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://142252336" -- Asset ID for the sound
    sound.Volume = 1 -- Adjust the volume (1 is the default)
    sound.Parent = SoundService -- Parent it to SoundService so it's globally available

    -- Function to notify player count and play the sound
    local function notifyPlayerCount()
        local playerCount = #Players:GetPlayers() -- Get current player count
        StarterGui:SetCore("SendNotification", {
            Title = "Player count:",
            Text = "There are " .. playerCount .. " players in the server.", -- Display player count
            Duration = 5 -- Notification stays for 5 seconds
        })
        sound:Play() -- Play the sound
    end

    -- Trigger notification and sound when the button is clicked
    notifyPlayerCount()
end)
------------------------------------------------------

Section:NewSlider("Graphics Quality", "Adjust your graphics quality (1-10)", 10, 1, function(value)
    -- Adjust the game's graphics quality based on the slider's value
    settings().Rendering.QualityLevel = value
end)

------------------------------------------------------

local Home = Window:NewTab("- Music -")
local Section = Home:NewSection("Music-Tab")

-- Function to create a new sound object
local function createSound(soundId)
    local sound = Instance.new("Sound")
    sound.SoundId = soundId
    sound.Volume = 1 -- Default volume
    sound.Looped = true -- Enable looping
    sound.Parent = game:GetService("SoundService") -- Parent to SoundService
    return sound
end

-- Create sound objects
local sound1 = createSound("rbxassetid://1840040640") -- Replace with your first sound asset ID
local sound2 = createSound("rbxassetid://76248530644050") -- Replace with your second sound asset ID
local sound3 = createSound("rbxassetid://9045374455") -- Replace with your third sound asset ID
local sound4 = createSound("rbxassetid://1844309470") -- Replace with your third sound asset ID

-- Add toggle buttons for each sound
Section:NewToggle("On Fleek", "Toggles sound 1 on or off", function(state)
    if state then
        sound1:Play()
    else
        sound1:Stop()
    end
end)

Section:NewToggle("jugsta", "Toggles sound 2 on or off", function(state)
    if state then
        sound2:Play()
    else
        sound2:Stop()
    end
end)

Section:NewToggle("Ella Va", "Toggles sound 3 on or off", function(state)
    if state then
        sound3:Play()
    else
        sound3:Stop()
    end
end)

Section:NewToggle("Lacrimosa", "Toggles sound 4 on or off", function(state)
    if state then
        sound4:Play()
    else
        sound4:Stop()
    end
end)

-- Add a single slider to control the volume for all sounds
Section:NewSlider("Volume Control", "Adjust the sound volume", 10, 0, function(volume)
    local normalizedVolume = volume / 10 -- Normalize to 0.0 - 1.0 range
    sound1.Volume = normalizedVolume
    sound2.Volume = normalizedVolume
    sound3.Volume = normalizedVolume
    sound4.Volume = normalizedVolume
end)
