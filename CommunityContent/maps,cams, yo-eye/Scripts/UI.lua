








--                             needs change
--                            CTRL+F => TEMP










local FightingUI = script:GetCustomProperty("FightingUI"):WaitForObject()

local ColRes = "Color"

local damaged = {}

local timerLabel = FightingUI:GetChildren()[5]:GetChildren()[1]
local roundgoing = false
local totalSeconds = math.floor(0)
local milseconds = math.floor(0)
local minutes = math.floor(0)
local realtime = 0
local AllPlayers = Game.GetPlayers()
local flickerTimer = 0
local lolwut = "%"

function SetTimer()
    minutes = math.floor(totalSeconds / 60)
    local seconds = math.floor(totalSeconds - (60 * minutes))
    --local milseconds = milseconds
    --milseconds = milseconds * 1.6666
    --milseconds = math.floor(milseconds)
    local oldString = string.format("%002i:%002i.%002i", tostring(minutes), tostring(seconds), tostring(milseconds))

   timerLabel.text = oldString
end

function StartCourse()
    roundgoing = true
    milseconds = 1
    realtime = 0
    totalSeconds = 180
end

function OnPlayerJoined(player)

    FightingUI:GetChildren()[player:GetResource(ColRes)].visibility = Visibility.FORCE_ON
    for _, ui in ipairs(FightingUI:GetChildren()[player:GetResource(ColRes)]:GetChildren()) do
        if ui.name == "Name" then
        ui.text = player.name
        end
        if ui.name == "PlayerPic" then
            ui:GetChildren()[1]:SetPlayerProfile(player)
        end
        if ui.name == "Life number" then -- TEMP
            ui.text = tostring(player:GetResource(ColRes))
        end
        if ui.name == "Damage" then
            ui.text = string.format("%01i%s", tostring(player:GetResource(ColRes)),tostring(lolwut)) -- TEMP
        end
    end
    StartCourse()
    player.bindingPressedEvent:Connect(OnBindingPressed)
    player.bindingReleasedEvent:Connect(OnBindingReleased)
end

function OnBindingPressed(player, binding) -- TEMP
    if binding == "ability_extra_1" then
    damaged[player:GetResource(ColRes)] = true
    flickerTimer = 7
    end
end

function OnBindingReleased(player, binding)
    if binding == "ability_extra_1" then

    end
end

function Tick()

for i, player in ipairs(AllPlayers) do
    for _, ui in ipairs(FightingUI:GetChildren()[player:GetResource(ColRes)]:GetChildren()) do
        if ui.name == "Damaged Line" then
            if damaged[player:GetResource(ColRes)] then
                if flickerTimer == 0 then
                    damaged[player:GetResource(ColRes)] = false
                    flickerTimer = 7
                end
                if flickerTimer > 4 then
                    ui.visibility = Visibility.FORCE_ON
                else
                    ui.visibility = Visibility.FORCE_OFF
                end
            else
                ui.visibility = Visibility.FORCE_OFF
            end
        end
        if ui.name == "Damage" then
            ui.text = string.format("%01i%s", tostring(player:GetResource(ColRes)),tostring(lolwut)) -- TEMP
        end
    end
end

    flickerTimer = flickerTimer - 1
    if minutes < 0 then
        roundgoing = false
        milseconds = 0
        totalSeconds = 0
        minutes = 0
        SetTimer()
        --print("end lol")
    end
    if roundgoing == true then
        SetTimer()
        realtime = realtime + 1
        milseconds = milseconds - 1
    if milseconds == 0 then
        totalSeconds = totalSeconds - 1
        milseconds = 59
    end
end
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
