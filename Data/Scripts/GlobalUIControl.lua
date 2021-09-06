--[[
local Name1 = script:GetCustomProperty("Name1"):WaitForObject()
local Deaths1 = script:GetCustomProperty("Deaths1"):WaitForObject()
local Damage1 = script:GetCustomProperty("Damage1"):WaitForObject()
local Name2 = script:GetCustomProperty("Name2"):WaitForObject()
local Deaths2 = script:GetCustomProperty("Deaths2"):WaitForObject()
local Damage2 = script:GetCustomProperty("Damage2"):WaitForObject()
local Name3 = script:GetCustomProperty("Name3"):WaitForObject()
local Deaths3 = script:GetCustomProperty("Deaths3"):WaitForObject()
local Damage3 = script:GetCustomProperty("Damage3"):WaitForObject()
local Name4 = script:GetCustomProperty("Name4"):WaitForObject()
local Deaths4 = script:GetCustomProperty("Deaths4"):WaitForObject()
local Damage4 = script:GetCustomProperty("Damage4"):WaitForObject()
]]

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
local ResultPanel = script:GetCustomProperty("ResultPanel"):WaitForObject()

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

function RoundEndCutscene()
    ResultPanel.visibility=Visibility.FORCE_ON
end

function UpdateResult(id,name,d,dmg)
    script:GetCustomProperty("Name"..id):WaitForObject().text=name
    script:GetCustomProperty("Deaths"..id):WaitForObject().text=tostring(d)
    script:GetCustomProperty("Damage"..id):WaitForObject().text=tostring(dmg)
end

Events.Connect("RoundStartCutsceneClient",RoundStartCutscene)
Events.Connect("RoundEndCutsceneClient",RoundEndCutscene)
Events.Connect("UpdateResult",UpdateResult)