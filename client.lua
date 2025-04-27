local displayText = "~g~ Your Text ~w~ | ~b~ Here" -- You can customize this text to whatever you would like.
local font = 4 -- Change font (0-5)
local scale = 0.50 -- Adjust text size
local xPos, yPos = .9, 0.03 -- Adjust text position (centered)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        SetTextFont(font)
        SetTextScale(scale, scale)
        SetTextColour(255, 255, 255, 255) -- White color
        SetTextOutline()
        SetTextCentre(true)
        BeginTextCommandDisplayText("STRING")
        AddTextComponentSubstringPlayerName(displayText)
        EndTextCommandDisplayText(xPos, yPos)
    end
end)
