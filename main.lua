-- Vordefinierte gültige Keys (100 Keys)
local allowedKeys = {
    "ABCD1234EFGH5678IJKL", "MNOP9012QRST3456UVWX", "YZAB7890CDEF1234GHIJ",
    "KLMN5678OPQR9012STUV", "WXYZ3456ABCD7890EFGH", "IJKL1234MNOP5678QRST",
    "UVWX9012YZAB3456CDEF", "GHIJ7890KLMN1234OPQR", "STUV5678WXYZ9012ABCD",
    "EFGH3456IJKL7890MNOP", "QRST1234UVWX5678YZAB", "CDEF9012GHIJ3456KLMN",
    "OPQR7890STUV1234WXYZ", "ABCD5678EFGH9012IJKL", "MNOP3456QRST7890UVWX",
    "YZAB1234CDEF5678GHIJ", "KLMN9012OPQR3456STUV", "WXYZ7890ABCD1234EFGH",
    "IJKL5678MNOP9012QRST", "UVWX3456YZAB7890CDEF", "GHIJ1234KLMN5678OPQR",
    "STUV9012WXYZ3456ABCD", "EFGH7890IJKL1234MNOP", "QRST5678UVWX9012YZAB",
    "CDEF3456GHIJ7890KLMN", "OPQR1234STUV5678WXYZ", "ABCD9012EFGH3456IJKL",
    "MNOP7890QRST1234UVWX", "YZAB5678CDEF9012GHIJ", "KLMN3456OPQR7890STUV",
    "WXYZ1234ABCD5678EFGH", "IJKL9012MNOP3456QRST", "UVWX7890YZAB1234CDEF",
    "GHIJ5678KLMN9012OPQR", "STUV3456WXYZ7890ABCD", "EFGH1234IJKL5678MNOP",
    "QRST9012UVWX3456YZAB", "CDEF7890GHIJ1234KLMN", "OPQR5678STUV9012WXYZ",
    "ABCD3456EFGH7890IJKL", "MNOP1234QRST5678UVWX", "YZAB9012CDEF3456GHIJ",
    "KLMN7890OPQR1234STUV", "WXYZ5678ABCD9012EFGH", "IJKL3456MNOP7890QRST",
    "UVWX1234YZAB5678CDEF", "GHIJ9012KLMN3456OPQR", "STUV7890WXYZ1234ABCD",
    "EFGH5678IJKL9012MNOP", "QRST3456UVWX7890YZAB", "CDEF1234GHIJ5678KLMN",
    "OPQR9012STUV3456WXYZ", "ABCD7890EFGH1234IJKL", "MNOP5678QRST9012UVWX",
    "YZAB3456CDEF7890GHIJ", "KLMN1234OPQR5678STUV", "WXYZ9012ABCD3456EFGH",
    "IJKL7890MNOP1234QRST", "UVWX5678YZAB9012CDEF", "GHIJ3456KLMN7890OPQR",
    "STUV1234WXYZ5678ABCD", "EFGH9012IJKL3456MNOP", "QRST7890UVWX1234YZAB",
    "CDEF5678GHIJ9012KLMN", "OPQR3456STUV7890WXYZ", "ABCD1234EFGH5678IJKL",
    "MNOP9012QRST3456UVWX", "YZAB7890CDEF1234GHIJ", "KLMN5678OPQR9012STUV",
    "WXYZ3456ABCD7890EFGH", "IJKL1234MNOP5678QRST", "UVWX9012YZAB3456CDEF",
    "GHIJ7890KLMN1234OPQR", "STUV5678WXYZ9012ABCD", "EFGH3456IJKL7890MNOP",
    "QRST1234UVWX5678YZAB", "CDEF9012GHIJ3456KLMN", "OPQR7890STUV1234WXYZ",
    "ABCD5678EFGH9012IJKL", "MNOP3456QRST7890UVWX", "YZAB1234CDEF5678GHIJ",
    "KLMN9012OPQR3456STUV", "WXYZ7890ABCD1234EFGH", "IJKL5678MNOP9012QRST",
    "UVWX3456YZAB7890CDEF", "GHIJ1234KLMN5678OPQR", "STUV9012WXYZ3456ABCD",
    "EFGH7890IJKL1234MNOP", "QRST5678UVWX9012YZAB", "CDEF3456GHIJ7890KLMN",
    "OPQR1234STUV5678WXYZ", "ABCD9012EFGH3456IJKL", "MNOP7890QRST1234UVWX",
    "YZAB5678CDEF9012GHIJ", "KLMN3456OPQR7890STUV", "WXYZ1234ABCD5678EFGH",
    "IJKL9012MNOP3456QRST", "UVWX7890YZAB1234CDEF", "GHIJ5678KLMN9012OPQR",
    "STUV3456WXYZ7890ABCD", "EFGH1234IJKL5678MNOP", "QRST9012UVWX3456YZAB",
    "CDEF7890GHIJ1234KLMN", "OPQR5678STUV9012WXYZ", "ABCD1234EFGH5678IJKL",
    "MNOP9012QRST3456UVWX", "YZAB7890CDEF1234GHIJ", "KLMN5678OPQR9012STUV"
}

-- GUI erstellen
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player.PlayerGui

-- Container für die GUI
local frame = Instance.new("Frame")
frame.Parent = screenGui
frame.Position = UDim2.new(0.5, -150, 0.5, -150)
frame.Size = UDim2.new(0, 300, 0, 200)
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
frame.BorderSizePixel = 0

-- Eingabefeld für den Key
local keyInput = Instance.new("TextBox")
keyInput.Parent = frame
keyInput.Position = UDim2.new(0.1, 0, 0.1, 0)
keyInput.Size = UDim2.new(0.8, 0, 0.2, 0)
keyInput.PlaceholderText = "Gib deinen Key ein"
keyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
keyInput.BackgroundColor3 = Color3.fromRGB(80, 80, 80)

-- Button zum Prüfen des Keys
local checkButton = Instance.new("TextButton")
checkButton.Parent = frame
checkButton.Position = UDim2.new(0.1, 0, 0.4, 0)
checkButton.Size = UDim2.new(0.8, 0, 0.2, 0)
checkButton.Text = "Key prüfen"
checkButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
checkButton.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Button zum Generieren eines zufälligen Keys und Weiterleitung zur Website
local getKeyButton = Instance.new("TextButton")
getKeyButton.Parent = frame
getKeyButton.Position = UDim2.new(0.1, 0, 0.7, 0)
getKeyButton.Size = UDim2.new(0.8, 0, 0.2, 0)
getKeyButton.Text = "Get Key"
getKeyButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
getKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Label für den Status
local statusLabel = Instance.new("TextLabel")
statusLabel.Parent = frame
statusLabel.Position = UDim2.new(0.1, 0, 0.9, 0)
statusLabel.Size = UDim2.new(0.8, 0, 0.1, 0)
statusLabel.Text = ""
statusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
statusLabel.BackgroundTransparency = 1

-- Funktion zum Prüfen des Keys
local function checkKey()
    local inputKey = keyInput.Text:upper()  -- Eingabe in Großbuchstaben umwandeln
    local keyValid = false

    -- Überprüfen, ob der Key in der vordefinierten Liste enthalten ist
    for _, key in ipairs(allowedKeys) do
        if key == inputKey then
            keyValid = true
            break
        end
    end

    -- Status anzeigen
    if keyValid then
        statusLabel.Text = "✔ Key gültig! Zugriff gewährt!"
        statusLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
    else
        statusLabel.Text = "❌ Ungültiger Key!"
        statusLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
    end
end

-- Funktion zum Erhalten eines zufälligen Keys und Weiterleitung zur Website
local function getKey()
    local randomIndex = math.random(1, #allowedKeys)
    local randomKey = allowedKeys[randomIndex]

    -- Zeige den zufällig generierten Key an
    statusLabel.Text = "Dein Key: " .. randomKey
    statusLabel.TextColor3 = Color3.fromRGB(0, 255, 0)

    -- Weiterleitung zur Website
    wait(1)  -- Warte eine Sekunde, bevor der Benutzer zur Website weitergeleitet wird
    setclipboard(randomKey)  -- Kopiere den Key in die Zwischenablage
    game:GetService("MarketplaceService"):PromptGamePassPurchase(player, 123456)  -- Beispiel für eine Weiterleitung
end

-- Event-Listener für die Buttons
checkButton.MouseButton1Click:Connect(checkKey)
getKeyButton.MouseButton1Click:Connect(getKey)
