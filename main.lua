print("Hub Carregado com Sucesso!")

-- Função para sumir com as patentes (CDP)
local function sumirCDP()
    for _, v in pairs(game.Workspace:GetDescendants()) do
        if v:IsA("BillboardGui") then
            v.Enabled = false -- Esconde a patente de todo mundo da sua tela
        end
    end
end

-- Criando um botão simples na tela
local sg = Instance.new("ScreenGui", game:GetService("CoreGui"))
local btn = Instance.new("TextButton", sg)
btn.Size = UDim2.new(0, 200, 0, 50)
btn.Position = UDim2.new(0.5, -100, 0.1, 0)
btn.Text = "ATIVAR ANTI-CDP"
btn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

btn.MouseButton1Click:Connect(function()
    sumirCDP()
    btn.Text = "CDP REMOVIDO!"
    btn.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
end)
