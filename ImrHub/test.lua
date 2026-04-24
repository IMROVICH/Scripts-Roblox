
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
Rayfield:LoadConfiguration()
local MainWindow = Rayfield:CreateWindow({
	Theme = "AmberGlow",
	Name = "Imr hub",
	LoadingTitle = "Loading...",
	LoadingSubtitle = "by IMR_IMROVICH",
	ConfigurationSaving = {
	   Enabled = true,
	   FolderName = "ImrHub", -- Create a custom folder for your hub/game
	   FileName = "ImrConfig"
	},
	Discord = {
	   Enabled = false,
	   Invite = "", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
	   RememberJoins = true -- Set this to false to make them join the discord every time they load it up
	},
	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
	   Title = "Imr hub",
	   Subtitle = "Key System",
	   Note = "Key",
	   FileName = "SiriusKey",
	   SaveKey = true,
	   GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
	   Key = "крыса тоже верталёт"
	}
 })


 local MainTab = MainWindow:CreateTab("Player") -- Title, Image
 local VisualTab = MainWindow:CreateTab("Visuals", )





 local Button = MainTab:CreateButton({
	Name = "print 'hello'",
	Callback = function(v)
		v = print('hello')
	end,
 })




 local Toggle = MainTab:CreateToggle({
	Name = "Infinite Jump",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(InfiniteJumpEnabled)
        local InfiniteJumpEnabled = true
        game:GetService("UserInputService").JumpRequest:connect(function()
            if InfiniteJumpEnabled then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
	end,
 })



 local Slider = MainTab:CreateSlider({
	Name = "Walkspeed",
	Range = {16, 250},
	Increment = 10,
	Suffix = "Walkspeed",
	CurrentValue = 10,
	Flag = "WalkSpeed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(v)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
	end,
 })



 local Slider = MainTab:CreateSlider({
	Name = "JumpPower",
	Range = {50, 500},
	Increment = 10,
	Suffix = "JumpPower",
	CurrentValue = 10,
	Flag = "JumpPower", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(v)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
	end,
 })
 
