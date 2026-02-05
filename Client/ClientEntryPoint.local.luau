local PlayerModule = require(game.ReplicatedStorage.Shared.Classes:WaitForChild("PlayerModule"))
local player = game.Players.LocalPlayer
local pdata = PlayerModule.new(player)
print("created data")
task.wait(2)
pdata.Destroy(pdata)
print("destroyed")
