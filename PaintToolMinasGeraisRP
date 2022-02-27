local playerMouse = game:GetService("Players").LocalPlayer:GetMouse()
local plrs = game:GetService('Players')
local lp = plrs.LocalPlayer
local n = lp.Name
local ng = n .. 'sCar'

local tool = Instance.new('Tool', game:GetService("Players").LocalPlayer.Backpack)
tool.RequiresHandle = false
tool.Name = 'Paint Tool'

local Money = {
    [1] = "Sack",
    [2] = "55000",
    [3] = ""
}
game:GetService("Players").LocalPlayer.PlayerGui.Caixa.Operator:FireServer(unpack(Money))
wait()
local Purchase = {
    [1] = "Nissan Skyline R34"
}
game:GetService("ReplicatedStorage").Concessionaria.PurchaseCar:FireServer(unpack(Purchase))
wait()
local Spawn = {
    [1] = "Nissan Skyline R34"
}
game:GetService("ReplicatedStorage").Concessionaria.SpawnCar:FireServer(unpack(Spawn))

tool.Activated:Connect(function()
    local args = {
        [1] = "UpdateLight",
        [2] = playerMouse.Target,
        [3] = Enum.Material.Neon,
        [4] = BrickColor.new(1001),
        [5] = 0,
        [6] = true,
        [7] = 15
    }
    workspace[ng].Lights_FE:FireServer(unpack(args))
end)
