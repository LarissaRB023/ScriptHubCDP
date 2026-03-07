-- HUB EXÉRCITO DELTA - BYPASS REAL
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CDPEvent = ReplicatedStorage:WaitForChild("CDPEvent")

-- Criando a Interface (Visual Profissional)
local ScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 200, 0, 100)
Frame.Position = UDim2.new(0.5, -100, 0.4, 0)
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.Active = true
Frame.Draggable = true

local Button = Instance.new("TextButton", Frame)
Button.Size = UDim2.new(0.9, 0, 0.6, 0)
Button.Position = UDim2.new(0.05, 0, 0.2, 0)
Button.Text = "BURLAR CDP (RESET)"
Button.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
Button.TextColor3 = Color3.fromRGB(255, 255, 255)

-- A MÁGICA PARA BURLAR
Button.MouseButton1Click:Connect(function()
    -- Tentativa 1: Enviar sinal vazio (alguns sistemas resetam assim)
    CDPEvent:FireServer()
    
    -- Tentativa 2: Enviar um valor de "0" ou "false" (caso o servidor peça argumento)
    CDPEvent:FireServer(0)
    CDPEvent:FireServer(false)

    Button.Text = "SINAL ENVIADO!"
    task.wait(2)
    Button.Text = "BURLAR CDP (RESET)"
end)
