local PlayerPanel1 = script:GetCustomProperty("PlayerPanel1"):WaitForObject()
local PlayerPanel2 = script:GetCustomProperty("PlayerPanel2"):WaitForObject()
local PlayerPanel3 = script:GetCustomProperty("PlayerPanel3"):WaitForObject()
local PlayerPanel4 = script:GetCustomProperty("PlayerPanel4"):WaitForObject()
--local Player1Pic = script:GetCustomProperty("Player1Pic"):WaitForObject()
--local Player2Pic = script:GetCustomProperty("Player2Pic"):WaitForObject()
--local Player3Pic = script:GetCustomProperty("Player3Pic"):WaitForObject()
--local Player4Pic = script:GetCustomProperty("Player4Pic"):WaitForObject()
local TimerPanel = script:GetCustomProperty("TimerPanel"):WaitForObject()
local TimerText = script:GetCustomProperty("TimerText"):WaitForObject()
local BlackPanel = script:GetCustomProperty("BlackPanel"):WaitForObject()

local MainScript = script:GetCustomProperty("MainScript"):WaitForObject()

local fadeIn=false
local fadeTime=-1

function Tick()
    for a,player in pairs(Game.GetPlayers()) do
        local PlayerHP=MainScript:GetCustomProperty("Player"..a.."HP")

        local string="PlayerPanel"..a
        local Panel=script:GetCustomProperty(string):WaitForObject()
        Panel:GetCustomProperty("DamageBox"):WaitForObject().text=tostring(CoreMath.Round(PlayerHP)).."%"
    end
    local Time=MainScript:GetCustomProperty("Time")
    TimerText.text=tostring(Time)
    
    if fadeIn==true then
        if time()<fadeTime+1 then
            BlackPanel.opacity=1-(fadeTime+1-time())
        else
            BlackPanel.opacity=1
        end
    else
        if time()<fadeTime+1 then
            BlackPanel.opacity=fadeTime+1-time()
        else
            BlackPanel.opacity=0
        end
    end
end
--local propNameBox = script:GetCustomProperty("NameBox"):WaitForObject()
--local propDamageBox = script:GetCustomProperty("DamageBox"):WaitForObject()
function UpdatePlayersUI()
    local PlayersAmount=0
    for a,player in pairs(Game.GetPlayers()) do
        local string="Player"..a.."Pic"
        local Pic=script:GetCustomProperty(string):WaitForObject()
        Pic:SetPlayerProfile(player)
        Pic.parent:GetCustomProperty("NameBox"):WaitForObject().text=MainScript:GetCustomProperty("Player"..a)
        local PlayerHP=MainScript:GetCustomProperty("Player"..a.."HP")
        Pic.parent:GetCustomProperty("DamageBox"):WaitForObject().text=tostring(CoreMath.Round(PlayerHP)).."%"
        PlayersAmount=a
    end
    --if PlayersAmount<4 then
    for a=1,4 do
        if a>=PlayersAmount+1 then
            local string="PlayerPanel"..a
            script:GetCustomProperty(string):WaitForObject().visibility=Visibility.FORCE_OFF
        else
            local string="PlayerPanel"..a
            script:GetCustomProperty(string):WaitForObject().visibility=Visibility.FORCE_ON
        end
    end
    --end
end
--Game.roundStartEvent:Connect(OnRoundStart)

function RoundStartCutscene()

	local cutscenePlayers=Game.GetPlayers()
    fadeIn=true
    fadeTime=time()
    Task.Wait(1.25)
    TimerPanel.visibility=Visibility.FORCE_OFF
    Task.Wait(0.25)
	for a,obj in pairs(cutscenePlayers) do
        fadeIn=false
        fadeTime=time()
        Task.Wait(1)
        fadeIn=true
        fadeTime=time()
        Task.Wait(1.5)
	end
    UpdatePlayersUI()
    TimerPanel.visibility=Visibility.FORCE_ON
    fadeIn=false
    fadeTime=time()
end

Events.Connect("RoundStartCutsceneClient",RoundStartCutscene)
