_G.TorsoSize = 25
_G.Enabled = true

game:GetService('RunService').RenderStepped:connect(function()
    if _G.Enabled then
        for i, v in next, game:GetService('Players'):GetPlayers() do
            if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                pcall(function()
                    if v.Character and v.Character:FindFirstChild("Torso") then
                        v.Character.Torso.Size = Vector3.new(_G.TorsoSize, _G.TorsoSize, _G.TorsoSize)
                        v.Character.Torso.Transparency = 1
                        v.Character.Torso.BrickColor = BrickColor.new("Red")
                        v.Character.Torso.Material = "Neon"
                        v.Character.Torso.CanCollide = false
                        v.Character.Torso.Massless = true
                    end
                end)
            end
        end
    end
end)
