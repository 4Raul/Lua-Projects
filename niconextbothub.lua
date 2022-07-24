repeat task.wait() until game:IsLoaded()

if game.PlaceId == 10118559731 then

local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("nico's nextbots / v1.4b")
local serv = win:Server("Nico's Nextbots Hub", "http://www.roblox.com/asset/?id=10334678583")

local gui = serv:Channel("Main")

gui:Label("Welcome to Nico's Nextbots Hub, "..game:GetService('Players').LocalPlayer.Name.."!")

gui:Seperator()

gui:Label("Discord Library: v3rmillion.net/showthread.php?tid=1104704")
gui:Label("Made by: 8bn#4573")

local btns = serv:Channel("Esp")

btns:Toggle("Nextbots Esp", true, function()
    for i, v in next, workspace.bots:GetDescendants() do
        if v:IsA('Model') then
            local billboard = Instance.new('BillboardGui')
            billboard.Parent = v.HumanoidRootPart
            billboard.AlwaysOnTop = true
            local esp = Instance.new('TextLabel')
            esp.Name = 'Esp'
            esp.Parent = billboard
            esp.Text = v.Name.. 'NextBot'
        end
    end
end)

btns:Toggle("Players Esp", true, function()
    for i, v in next, game:GetService('Players'):GetPlayers() do
        if v ~= game:GetService('Players').LocalPlayer then
            local billboard = Instance.new('BillboardGui')
            billboard.Parent = v.HumanoidRootPart
            billboard.AlwaysOnTop = true
            local esp = Instance.new('TextLabel')
            esp.Name = 'Esp'
            esp.BackgroundTransparency = 1
            esp.TextWrapped = true
            esp.Parent = billboard
            esp.Text = v.Name
        end
    end
end)

btns:Toggle("Saferooms Esp", true, function()
    for i, v in next, workspace:GetDescendants() do
        if v:IsA('Model') and v.Name == 'saferoom' then
            local billboard = Instance.new('BillboardGui')
            billboard.Parent = v.floor
            billboard.AlwaysOnTop = true
            local esp = Instance.new('TextLabel')
            esp.Name = 'Esp'
            esp.BackgroundTransparency = 1
            esp.TextWrapped = true
            esp.Parent = billboard
            esp.Text = v.Name
        end
    end
end)

btns:Seperator()

local msc = serv:Channel("Misc")

msc:Label("Nextbots Tools (client)")

msc:Seperator()

msc:Label("Select one bot to change (avaliables: obunga, nerd, speed, ")
msc:Label("quandie, delgado, aheno, yoshie, bateman) (presets: all)")

local bot = msc:Textbox("Bot", "Type here!", true, function()
    print(bot)
end)

msc:Seperator()

msc:Label("Select Image and Sound ID")

local imageid
local soundid
local volume

msc:Textbox("Image ID", "Type here! (rbxassetid://0)", true, function(State)
    imageid = State
end)

msc:Textbox("Sound ID", "Type here! (rbxassetid://0)", true, function(State)
    soundid = State
end)

msc:Seperator()

msc:Button("Change", function()
    if bot.Text ~= 'all' then
        for i, f in next, workspace.bots:GetDescendants() do
            if f:IsA('Model') and f.Name == bot then
                f:WaitForChild('HumanoidRootPart').BillboardGui.ImageLabel.Image = imageid
                f:WaitForChild('HumanoidRootPart').theme.SoundId = soundid
            end
        end
    end
    if bot.Text == 'all' then
        for i, g in next, workspace.bots:GetDescendants() do
            if g:IsA('Model') then
                g:WaitForChild('HumanoidRootPart').BillboardGui.ImageLabel.Image = imageid
                g:WaitForChild('HumanoidRootPart').theme.SoundId = soundid
            end
        end
    end

    DiscordLib:Notification("Notification", "You changed "..bot..' Nextbot!', "Okay!")
end)

msc:Seperator()

msc:Slider("Volume", 0, 100, 1, function(State)
    for i, v in next, workspace.bots:GetDescendants() do
        if v:IsA('Sound') then
            v.Volume = tonumber(State)
        end
    end
end)

local tp = serv:Channel("Teleports")

tp:Label("Saferooms")

tp:Button("Teleport to Safe Room #1", function()
    if game:GetService('Players').LocalPlayer.Character.Humanoid.Health ~= 100 then
        DiscordLib:Notification("Notification", "You can't teleport dead", "Okay!")
    else
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-282.836151, 34.7500458, 57.9939957, -0.999996126, 4.42031762e-08, 0.00277565583, 4.39605472e-08, 1, -8.74743051e-08, -0.00277565583, -8.73519497e-08, -0.999996126)
        DiscordLib:Notification("Notification", "You teleported to Safe Room #1", "Okay!")
    end
end)

tp:Button("Teleport to Safe Room #2", function()
    if game:GetService('Players').LocalPlayer.Character.Humanoid.Health ~= 100 then
        DiscordLib:Notification("Notification", "You can't teleport dead", "Okay!")
    else
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-89.7774124, 19.2499943, -12.5735607, -0.999984384, 3.06867491e-08, -0.00558901764, 3.05656727e-08, 1, 2.17487717e-08, 0.00558901764, 2.15776002e-08, -0.999984384)
        DiscordLib:Notification("Notification", "You teleported to Safe Room #2", "Okay!")
    end
end)

tp:Button("Teleport to Safe Room #3", function()
    if game:GetService('Players').LocalPlayer.Character.Humanoid.Health ~= 100 then
        DiscordLib:Notification("Notification", "You can't teleport dead", "Okay!")
    else
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-36.5609245, 49.7499886, 343.931305, 0.0243751034, -3.06734194e-08, 0.999702871, -4.25251345e-09, 1, 3.07862216e-08, -0.999702871, -5.00166752e-09, 0.0243751034)
        DiscordLib:Notification("Notification", "You teleported to Safe Room #3", "Okay!")
    end
end)

tp:Button("Teleport to Safe Room #4", function()
    if game:GetService('Players').LocalPlayer.Character.Humanoid.Health ~= 100 then
        DiscordLib:Notification("Notification", "You can't teleport dead", "Okay!")
    else
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-76.3739929, 34.7500229, 364.800903, 0.999993265, 8.54251425e-08, 0.0036780166, -8.56571774e-08, 1, 6.29298853e-08, -0.0036780166, -6.32445065e-08, 0.999993265)
        DiscordLib:Notification("Notification", "You teleported to Safe Room #4", "Okay!")
    end
end)

tp:Button("Teleport to a Random Safe Room", function()
    if game:GetService('Players').LocalPlayer.Character.Humanoid.Health ~= 100 then
        DiscordLib:Notification("Notification", "You can't teleport dead", "Okay!")
    else
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild('saferoom').floor.CFrame + Vector3.new(0, -4, 0)
        DiscordLib:Notification("Notification", "You teleported to a Random Safe Room", "Okay!")
    end
end)

tp:Seperator()

tp:Label("Gates")

tp:Button("Teleport to Gate #1", function()
    if game:GetService('Players').LocalPlayer.Character.Humanoid.Health ~= 100 then
        DiscordLib:Notification("Notification", "You can't teleport dead", "Okay!")
    else
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(132.154922, 23.9468842, 106.176483, 0.0268750675, -1.23529524e-08, 0.999638796, -3.16977129e-08, 1, 1.32096023e-08, -0.999638796, -3.20412745e-08, 0.0268750675)
        DiscordLib:Notification("Notification", "You teleported to Gate #1", "Okay!")
    end
end)

tp:Button("Teleport to Gate #2", function()
    if game:GetService('Players').LocalPlayer.Character.Humanoid.Health ~= 100 then
        DiscordLib:Notification("Notification", "You can't teleport dead", "Okay!")
    else
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-248.546021, 30.7909069, 104.825699, -0.00552430982, -3.22894222e-09, -0.999984741, 2.60503241e-09, 1, -3.24338267e-09, 0.999984741, -2.62291011e-09, -0.00552430982)
        DiscordLib:Notification("Notification", "You teleported to Gate #2", "Okay!")
    end
end)

tp:Seperator()

tp:Label("Maps")

tp:Button("Teleport to The Backrooms", function()
    if game:GetService('Players').LocalPlayer.Character.Humanoid.Health ~= 100 then
        DiscordLib:Notification("Notification", "You can't teleport dead", "Okay!")
    else
        for i, v in next, workspace:WaitForChild('parking_lot_all').parking_lot:GetDescendants() do
            if v:IsA('ProximityPrompt') then
                game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame + Vector3.new(0, 0, 3)
                task.wait(0.2)
                fireproximityprompt(v)
            end
        end
        DiscordLib:Notification("Notification", "You are being teleported to the backrooms", "Okay!")
    end
end)

tp:Seperator()

tp:Label("Stores")

tp:Button("Teleport to Market", function()
    if game:GetService('Players').LocalPlayer.Character.Humanoid.Health ~= 100 then
        DiscordLib:Notification("Notification", "You can't teleport dead", "Okay!")
    else
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-193.82608, 34.7499886, 279.751312, 0.997881711, 1.46487507e-08, -0.0650547072, -1.27667086e-08, 1, 2.93458537e-08, 0.0650547072, -2.84531563e-08, 0.997881711)
        DiscordLib:Notification("Notification", "You teleported to Market", "Okay!")
    end
end)

tp:Button("Teleport to Cool Mart", function()
    if game:GetService('Players').LocalPlayer.Character.Humanoid.Health ~= 100 then
        DiscordLib:Notification("Notification", "You can't teleport dead", "Okay!")
    else
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-45.0238724, 34.7499886, 307.140259, 0.997293174, -1.40033061e-08, -0.0735280588, 1.20832979e-08, 1, -2.65574247e-08, 0.0735280588, 2.55970765e-08, 0.997293174)
        DiscordLib:Notification("Notification", "You teleported to Cool Mart", "Okay!")
    end
end)

tp:Button("Teleport to Stephenson's Ramen", function()
    if game:GetService('Players').LocalPlayer.Character.Humanoid.Health ~= 100 then
        DiscordLib:Notification("Notification", "You can't teleport dead", "Okay!")
    else
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-79.0332184, 34.7499847, 310.84552, 0.998448849, -2.19994121e-08, 0.0556769446, 2.41678002e-08, 1, -3.82725638e-08, -0.0556769446, 3.95587847e-08, 0.998448849)
        DiscordLib:Notification("Notification", "You teleported to Stephenson's Ramen", "Okay!")
    end
end)

tp:Button("Teleport to Hikaeru", function()
    if game:GetService('Players').LocalPlayer.Character.Humanoid.Health ~= 100 then
        DiscordLib:Notification("Notification", "You can't teleport dead", "Okay!")
    else
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-63.9096375, 34.7500038, 249.787704, -0.994769812, -1.52490145e-08, 0.1021422, -1.58482258e-08, 1, -5.05493469e-09, -0.1021422, -6.64726896e-09, -0.994769812)
        DiscordLib:Notification("Notification", "You teleported to Hikaeru", "Okay!")
    end
end)

tp:Button("Teleport to mcBabber's", function()
    if game:GetService('Players').LocalPlayer.Character.Humanoid.Health ~= 100 then
        DiscordLib:Notification("Notification", "You can't teleport dead", "Okay!")
    else
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(14.6537409, 34.7499847, 244.075821, -0.99820292, -6.79691396e-08, 0.0599242374, -6.28188417e-08, 1, 8.78306849e-08, -0.0599242374, 8.39084819e-08, -0.99820292)
        DiscordLib:Notification("Notification", "You teleported to mcBabber's", "Okay!")
    end
end)

tp:Button("Teleport to GreenTop", function()
    if game:GetService('Players').LocalPlayer.Character.Humanoid.Health ~= 100 then
        DiscordLib:Notification("Notification", "You can't teleport dead", "Okay!")
    else
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117.043297, 34.7499847, 244.963058, -0.984741449, -1.1820136e-08, 0.174023837, -1.05000861e-08, 1, 8.50611226e-09, -0.174023837, 6.54905552e-09, -0.984741449)
        DiscordLib:Notification("Notification", "You teleported to GreenTop", "Okay!")
    end
end)

tp:Button("Teleport to Snacks n'go", function()
    if game:GetService('Players').LocalPlayer.Character.Humanoid.Health ~= 100 then
        DiscordLib:Notification("Notification", "You can't teleport dead", "Okay!")
    else
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-83.6190414, 49.7499886, 315.138916, -0.99954772, -3.29676446e-08, 0.030072812, -3.12404858e-08, 1, 5.79023229e-08, -0.030072812, 5.69366456e-08, -0.99954772)
        DiscordLib:Notification("Notification", "You teleported to Snacks n'go", "Okay!")
    end
end)

tp:Button("Teleport to The Book Library", function()
    if game:GetService('Players').LocalPlayer.Character.Humanoid.Health ~= 100 then
        DiscordLib:Notification("Notification", "You can't teleport dead", "Okay!")
    else
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-94.7603378, 49.7499886, 374.179565, 0.999641836, 2.98387937e-09, -0.026762357, -1.90867477e-09, 1, 4.02015488e-08, 0.026762357, -4.01360687e-08, 0.999641836)
        DiscordLib:Notification("Notification", "You teleported to The Book Library", "Okay!")
    end
end)

tp:Button("Teleport to The Uncomfy Galery", function()
    if game:GetService('Players').LocalPlayer.Character.Humanoid.Health ~= 100 then
        DiscordLib:Notification("Notification", "You can't teleport dead", "Okay!")
    else
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-183.001419, 49.7499886, 374.320312, 0.99999702, -2.95553715e-09, -0.00243631075, 2.94859537e-09, 1, -2.85289858e-09, 0.00243631075, 2.84570634e-09, 0.99999702)
        DiscordLib:Notification("Notification", "You teleported to The Uncomfy Galery", "Okay!")
    end
end)

tp:Button("Teleport to SubClub", function()
    if game:GetService('Players').LocalPlayer.Character.Humanoid.Health ~= 100 then
        DiscordLib:Notification("Notification", "You can't teleport dead", "Okay!")
    else
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-225.792313, 49.7499886, 314.875854, -0.993978381, -3.07917425e-08, -0.109576598, -2.99179845e-08, 1, -9.61804414e-09, 0.109576598, -6.28181684e-09, -0.993978381)
        DiscordLib:Notification("Notification", "You teleported to SubClub", "Okay!")
    end
end)

tp:Button("Teleport to Sakura Coffe", function()
    if game:GetService('Players').LocalPlayer.Character.Humanoid.Health ~= 100 then
        DiscordLib:Notification("Notification", "You can't teleport dead", "Okay!")
    else
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-223.928986, 49.7499886, 366.682648, 0.997700334, -3.47064528e-08, -0.0677795783, 2.80784498e-08, 1, -9.87402728e-08, 0.0677795783, 9.66100586e-08, 0.997700334)
        DiscordLib:Notification("Notification", "You teleported to Sakura Coffe", "Okay!")
    end
end)

tp:Button("Teleport to Nico's Club", function()
    if game:GetService('Players').LocalPlayer.Character.Humanoid.Health ~= 100 then
        DiscordLib:Notification("Notification", "You can't teleport dead", "Okay!")
    else
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-286.257477, 48.7499886, 340.999451, -0.0415020697, -3.1937466e-09, -0.999138415, 1.62915512e-08, 1, -3.87321686e-09, 0.999138415, -1.64382605e-08, -0.0415020697)
        DiscordLib:Notification("Notification", "You teleported to Nico's Club", "Okay!")
    end
end)

local sfrm = serv:Channel("Saferooms")

sfrm:Toggle("Fake Saferoom", true, function(State)
    game:GetService('Players').LocalPlayer.Character.scripts.safe.Value = State
end)

local tlls = serv:Channel("Tools")

tlls:Label("Flashlight")

tlls:Seperator()

tlls:Slider("Brightness", 0, 100, 0.5, function(State)
    for i, v in next, game:GetService('Players').LocalPlayer.Character.Head.flashlight:GetDescendants() do
        if v:IsA('SpotLight') then
            v.Brightness = tonumber(State)
        end
    end
end)

tlls:Slider("Range", 0, 100, 60, function(State)
    for i, v in next, game:GetService('Players').LocalPlayer.Character.Head.flashlight:GetDescendants() do
        if v:IsA('SpotLight') then
            v.Range = tonumber(State)
        end
    end
end)

local plr = serv:Channel("Player")

plr:Toggle("Auto Run", true, function(State)
    if game:GetService('Players').LocalPlayer.Character.Humanoid.Health ~= 100 then
        DiscordLib:Notification("Notification", "You can't run dead", "Okay!")
    else
        game:GetService('Players').LocalPlayer.Character.scripts.running.Value = State
        local args = {
            [1] = 0
        }
        game:GetService("ReplicatedStorage").events.runcrouchevent:FireServer(unpack(args))   
        local args = {
            [1] = 1,
            [2] = false
        }
        game:GetService("ReplicatedStorage").events.runcrouchevent:FireServer(unpack(args))
    end
end)

plr:Toggle("Auto Crouch", true, function(State)
    if game:GetService('Players').LocalPlayer.Character.Humanoid.Health ~= 100 then
        DiscordLib:Notification("Notification", "You can't crouch dead", "Okay!")
    else
        game:GetService('Players').LocalPlayer.Character.scripts.crouching.Value = State
        local args = {
            [1] = 1
        }
        game:GetService("ReplicatedStorage").events.runcrouchevent:FireServer(unpack(args))   
        local args = {
            [1] = 0,
            [2] = false
        }
        game:GetService("ReplicatedStorage").events.runcrouchevent:FireServer(unpack(args))
    end
end)

plr:Seperator()

plr:Toggle('Remove Sliding Delay', true, function(State)
    while State do task.wait()
        game:GetService('Players').LocalPlayer.Character.scripts.cooldownVal = 0
    end
end)

plr:Seperator()

plr:Toggle("Noclip", true, function(State)
    task.spawn(function()
        NoclipToggle = State

        local Noclip
        Noclip = game:GetService("RunService").Stepped:Connect(function()
            for _,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    if NoclipToggle and v.CanCollide == true then
                        v.CanCollide = false
                    elseif not NoclipToggle then
                        v.CanCollide = true
                        Noclip:Disconnect()
                    end
                end
            end
        end)
    end)
end)

plr:Seperator()

plr:Slider("Field of View", 0, 100, 70, function(State)
    workspace.Camera.FieldOfView = tonumber(State)
end)

plr:Seperator()

plr:Button("Force Respawn", function()
    game:GetService("ReplicatedStorage").events.respawnchar:FireServer()
end)

end
