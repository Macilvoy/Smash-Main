local MainScript = script:GetCustomProperty("MainScript"):WaitForObject()
local LobbyDuration = script:GetCustomProperty("LobbyDuration")
local RoundDuration = script:GetCustomProperty("RoundDuration")
local StorageKey = script:GetCustomProperty("StorageKey")

local GameState=nil   -- nil= nothing / false= lobby / true= match
local LobbyTime
local GameTime

function GameStart()
    local playersAmount=0
    for a,_ in pairs(Game.GetPlayers()) do
        playersAmount=a
    end

    if playersAmount>1 then
        Events.BroadcastToAllPlayers("RoundStartCutsceneClient")
        Events.Broadcast("RoundStartCutsceneNetworked")
        Game.StopAcceptingPlayers()
        Task.Wait(1+playersAmount*2.5)
        GameState=true
        Game.StartRound()
    else
        for _,pl in pairs(Game.GetPlayers()) do
            pl:TransferToGame("e39f3e/core-world")
        end
        Game.EndRound()
    end
end

function GameEnd()
    local playersAmount=0
    for a,_ in pairs(Game.GetPlayers()) do
        playersAmount=a
    end

    --if playersAmount>1 then
        Events.BroadcastToAllPlayers("RoundEndCutsceneClient")
        Events.Broadcast("RoundEndCutsceneNetworked")
        --Game.StopAcceptingPlayers()
        Task.Wait(1+playersAmount*4)

        for a,player in pairs(Game.GetPlayers()) do
            player:TransferToGame("e39f3e/core-world")
        end
        --GameState=true
        --Game.StartRound()
    --else
        --Game.EndRound()
    --end
end

function Tick()
    Task.Wait(0.2)
    local timeValue=0
    if GameState~=nil and GameState==false then
        if time()>=LobbyTime+LobbyDuration then
            GameStart()
        end
        timeValue=CoreMath.Round(LobbyTime+LobbyDuration-time())
    elseif GameState~=nil and GameState then
        if time()>=GameTime+RoundDuration then
            GameEnd()
        end
        timeValue=CoreMath.Round(GameTime+RoundDuration-time())
    end
    if timeValue<0 then
        timeValue=0
    end
    MainScript:SetNetworkedCustomProperty("Time",timeValue)
end

function OnPlayerJoined(player)
    local Table = Storage.GetSharedPlayerData(StorageKey, player)
    for resName,val in pairs(Table) do
        player:SetResource(resName,val)
    end

    if GameState~=true then
        local playersAmount=0
        for a,PLAYER in pairs(Game.GetPlayers()) do
            playersAmount=a
        end
        if playersAmount==4 then
            GameStart()
        elseif playersAmount==2 then
            LobbyTime=time()
            GameState=false
        end
    else
        player:TransferToGame("e39f3e/core-world")
    end
end

function OnRoundStart()
    GameTime=time()
end

function OnRoundEnd()

end

Game.roundStartEvent:Connect(OnRoundStart)
Game.roundEndEvent:Connect(OnRoundEnd)
Game.playerJoinedEvent:Connect(OnPlayerJoined)