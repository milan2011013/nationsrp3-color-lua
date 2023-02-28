local user = game.Players.LocalPlayer
local RandomWait = { 0.1, 5e-3 }
for i, v in pairs(game.Workspace.Map:GetChildren()) do
    task.spawn(function()
        while wait(RandomWait[math.random(2)]) do
            if not user.Character:FindFirstChild"PaintBucket" then user.Backpack.PaintBucket.Parent = user.Character end
            local args = {
                [1] = "PaintPart",
                [2] = {
                    ["Part"] = v,
                    ["Color"] = Color3.fromRGB(0,85,0)
                }
            }
            user.Character.PaintBucket.Remotes.ServerControls:InvokeServer(unpack(args))
        end
    end)
end
