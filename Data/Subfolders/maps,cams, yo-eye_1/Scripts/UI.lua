








--                             needs change
--                            CTRL+F => TEMP





local PlayerPanel1 = script:GetCustomProperty("PlayerPanel1"):WaitForObject()
local PlayerPanel2 = script:GetCustomProperty("PlayerPanel2"):WaitForObject()
local PlayerPanel3 = script:GetCustomProperty("PlayerPanel3"):WaitForObject()
local PlayerPanel4 = script:GetCustomProperty("PlayerPanel4"):WaitForObject()

local TimerPanel = script:GetCustomProperty("TimerPanel"):WaitForObject()
local TimerText = script:GetCustomProperty("TimerText"):WaitForObject()

local MainScript = script:GetCustomProperty("MainScript"):WaitForObject()
local StorageKey = script:GetCustomProperty("StorageKey")

local localPlayer=Game.GetLocalPlayer()
--local FightingUI = script:GetCustomProperty("FightingUI"):WaitForObject()

--local ColRes = "Color"

local damaged = {}

--local timerLabel = FightingUI:GetChildren()[5]:GetChildren()[1]
local roundgoing = false
local totalSeconds = math.floor(0)
local milseconds = math.floor(0)
local minutes = math.floor(0)
local realtime = 0
local AllPlayers = Game.GetPlayers()
local flickerTimer = 0
local lolwut = "%"

function SetTimer(MyTime)
    minutes = math.floor(MyTime / 60)
    local seconds = math.floor(MyTime - (60 * minutes))
    local oldString = string.format("%002i:%002i", tostring(minutes), tostring(seconds))

    return oldString
end

function Tick()
    for a,player in pairs(Game.GetPlayers()) do
        local PlayerHP=MainScript:GetCustomProperty("Player"..a.."HP")
        local PlayerDeath=MainScript:GetCustomProperty("Player"..a.."Deaths")--Player1Deaths
        if PlayerDeath<0 then   PlayerDeath=0   end

        local string="PlayerPanel"..a
        local Panel=script:GetCustomProperty(string):WaitForObject()
        Panel:GetCustomProperty("DamageBox"):WaitForObject().text=tostring(CoreMath.Round(PlayerHP)).."%"
        Panel:GetCustomProperty("Death"):WaitForObject().text=tostring(CoreMath.Round(PlayerDeath))
    end
    local Time=MainScript:GetCustomProperty("Time")
    TimerText.text=SetTimer(Time)
end

--[[
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
]]
--[[
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
]]

function UpdatePlayersUI()
    local PlayersAmount=0
    for a,player in pairs(Game.GetPlayers()) do
        local string="Player"..a.."Pic"
        local Pic=script:GetCustomProperty(string):WaitForObject()
        Pic:SetPlayerProfile(player)
        Pic.parent.parent:GetCustomProperty("NameBox"):WaitForObject().text=MainScript:GetCustomProperty("Player"..a)
        local PlayerHP=MainScript:GetCustomProperty("Player"..a.."HP")
        Pic.parent.parent:GetCustomProperty("DamageBox"):WaitForObject().text=tostring(CoreMath.Round(PlayerHP)).."%"
        PlayersAmount=a
    end
    if localPlayer:GetResource("SelectedUI")==nil or localPlayer:GetResource("SelectedUI")<2 then
        for a=1,4 do
            if a>=PlayersAmount+1 then
                local string="PlayerPanel"..a
                script:GetCustomProperty(string):WaitForObject().visibility=Visibility.FORCE_OFF
            else
                local string="PlayerPanel"..a
                script:GetCustomProperty(string):WaitForObject().visibility=Visibility.INHERIT
            end
        end
    end
end

function RoundStartCutscene()

	local cutscenePlayers=Game.GetPlayers()
    Task.Wait(1.25)
    TimerPanel.visibility=Visibility.FORCE_OFF
    Task.Wait(0.25)
	for a,obj in pairs(cutscenePlayers) do
        Task.Wait(1)
        Task.Wait(1.5)
	end
    UpdatePlayersUI()
    TimerPanel.visibility=Visibility.INHERIT
end

if localPlayer:GetResource("SelectedUI")==nil or localPlayer:GetResource("SelectedUI")<2 then
    Events.Connect("RoundStartCutsceneClient",RoundStartCutscene)
    TimerPanel.visibility=Visibility.INHERIT
end