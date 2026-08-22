local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local player = Players.LocalPlayer
local nick = player.Name .. "!"

task.wait(1)


StarterGui:SetCore("SendNotification", {
	Title = "Script loaded",
	Text = "Welcome, " .. nick,
	Duration = 7,
})
task.wait(0.5)

local PlayerGui = player:WaitForChild("PlayerGui")
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://131661992591924"
sound.Volume = 1.5
sound.Name = "NotificationSound"
sound.Parent = PlayerGui
sound:Play()

task.wait(1)

sound.Ended:Connect(function()
	sound:Destroy()
end)
