-- Obter o jogador local e o mouse
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

-- Definir as velocidades de caminhada
local walk = 16
local sprint = 32

-- Funções para controlar a velocidade de caminhada
local function OnButtonHold()
    -- Obter o personagem e o Humanoid do jogador
    local character = player.Character
    if character then
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            print("Botão pressionado")
            humanoid.WalkSpeed = sprint
        end
    end
end

local function OnButtonRelease()
    -- Obter o personagem e o Humanoid do jogador
    local character = player.Character
    if character then
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            print("Botão solto")
            humanoid.WalkSpeed = walk
        end
    end
end

-- Criar um ScreenGui e um botão
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "correr"

local runButton = Instance.new("TextButton")
runButton.Name = "correr"
runButton.Text = "ó os homi"
runButton.TextSize = 10
runButton.Size = UDim2.new(0, 75, 0, 75)
runButton.Position = UDim2.new(0, 10, 0, 15)
runButton.BackgroundColor3 = Color3.new(1, 1, 0)
runButton.Parent = screenGui

-- Conectar eventos do mouse ao botão
runButton.MouseButton1Down:Connect(OnButtonHold)
runButton.MouseButton1Up:Connect(OnButtonRelease)

-- Adicionar o ScreenGui ao PlayerGui
screenGui.Parent = player:WaitForChild("PlayerGui")
