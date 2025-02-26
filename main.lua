-- Skript in einem LocalScript in StarterGui

-- Vordefinierte gültige Keys
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
    "MNOP9012QRST3456UVWX", "YZAB7890CDEF1234GHIJ", "KLMN5678OPQR9012STUV"
}

-- GUI Elemente
local screenGui = script.Parent
local inputBox = screenGui:WaitForChild("TextBox")
local statusLabel = screenGui:WaitForChild("TextLabel")
local checkButton = screenGui:WaitForChild("TextButton")
local getKeyButton = screenGui:WaitForChild("TextButton_2")  -- Der Button für "Get Key"

-- Funktion zur Überprüfung des Keys
local function checkKey()
    local inputKey = inputBox.Text:upper()  -- Umwandlung in Großbuchstaben
    local keyValid = false
    
    -- Überprüfen, ob der Key in der Liste der erlaubten Keys ist
    for _, key in ipairs(allowedKeys) do
        if key == inputKey then
            keyValid = true
            break
        end
    end

    -- Status aktualisieren
    if keyValid then
        statusLabel.Text = "✔ Key gültig! Zugriff gewährt!"
        statusLabel.TextColor3 = Color3.fromRGB(0, 255, 0)  -- Grün für gültig
    else
        statusLabel.Text = "❌ Ungültiger Key!"
        statusLabel.TextColor3 = Color3.fromRGB(255, 0, 0)  -- Rot für ungültig
    end
end

-- Funktion für den Button-Klick "Get Key"
local function getKey()
    -- Benutzer wird zu einer Webseite weitergeleitet
    local url = "https://keysystem-rivals-for-roblo-x.netlify.app"  -- Deine Webseite
    game:GetService("GuiService"):OpenBrowserWindow(url)
end

-- Event-Listener für Button-Klicks
checkButton.MouseButton1Click:Connect(checkKey)
getKeyButton.MouseButton1Click:Connect(getKey)
