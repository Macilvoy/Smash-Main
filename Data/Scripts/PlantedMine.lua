local PlantedMine = script:GetCustomProperty("PlantedMine"):WaitForObject()
local HitBoxTrigger = script:GetCustomProperty("HitBoxTrigger"):WaitForObject()

local Geo = PlantedMine:GetCustomProperty("Geo"):WaitForObject()
local HeavyHitTrigger = PlantedMine:GetCustomProperty("HeavyHitTrigger"):WaitForObject()
local ExplosionVFX = PlantedMine:GetCustomProperty("ExplosionVFX"):WaitForObject()

local state=1
local startTime=time()

function Overlap(_,player)
    if player and player:IsA("Player") then
        if state<2 and player.name~=HeavyHitTrigger:GetCustomProperty("Owner") then
            HeavyHitTrigger.collision=Collision.FORCE_ON
            ExplosionVFX:Play()
            Geo.visibility=Visibility.FORCE_OFF
            state=2
            Task.Wait(2)
            if Object.IsValid(HeavyHitTrigger) then
                HeavyHitTrigger:Destroy()
            end
            Task.Wait(2)
            if Object.IsValid(PlantedMine) then PlantedMine:Destroy() end
        end
    end
end

function Tick()
    if time()>startTime+20 then
        if state<2 then
            HeavyHitTrigger.collision=Collision.FORCE_ON
            ExplosionVFX:Play()
            Geo.visibility=Visibility.FORCE_OFF
            state=2
            Task.Wait(2)
            if Object.IsValid(HeavyHitTrigger) then
                HeavyHitTrigger:Destroy()
            end
            Task.Wait(2)
            PlantedMine:Destroy()
        end
    end
end

HitBoxTrigger.beginOverlapEvent:Connect(Overlap)