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
local Home = Window:NewTab("- Offline -")
local Section = Home:NewSection("Fenny is Offline")
