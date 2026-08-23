local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local player = Players.LocalPlayer
local nick = player.Name .. "!"
local nick2 = player.Name

task.wait(1)

-- Уведомление
StarterGui:SetCore("SendNotification", {
	Title = "Your script is outdated",
	Text = nick2 .. " ,please restart this script!",
	Duration = 7,
})
task.wait(0.5)
-- Звук через PlayerGui
local PlayerGui = player:WaitForChild("PlayerGui")
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://119708787414764" -- ID стандартного звука уведомления
sound.Volume = 1.5
sound.Name = "OutdateNotificationSound"
sound.Parent = PlayerGui
sound:Play()
task.wait(1)
sound.Ended:Connect(function()
	sound:Destroy()
end)
