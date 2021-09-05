local PhysicGranade = script:GetCustomProperty("PhysicGranade"):WaitForObject()
local HitBoxTrigger = script:GetCustomProperty("HitBoxTrigger"):WaitForObject()

local Geo = PhysicGranade:GetCustomProperty("Geo"):WaitForObject()
local HeavyHitTrigger = PhysicGranade:GetCustomProperty("HeavyHitTrigger"):WaitForObject()
local ExplosionVFX = PhysicGranade:GetCustomProperty("ExplosionVFX"):WaitForObject()

local state=0

function Overlap(_,player)
    if player and state==0 and player:IsA("Player") and player.name~=HeavyHitTrigger:GetCustomProperty("Owner") then
        HeavyHitTrigger.collision=Collision.FORCE_ON
        ExplosionVFX:Play()
        Geo.visibility=Visibility.FORCE_OFF
        state=1
        Task.Wait(2)
        if Object.IsValid(HeavyHitTrigger) then
            HeavyHitTrigger:Destroy()
        end
        Task.Wait(2)
        if Object.IsValid(PhysicGranade) then PhysicGranade:Destroy() end
    end
end

HitBoxTrigger.beginOverlapEvent:Connect(Overlap)

Task.Wait(4)
if state==0 then
    HeavyHitTrigger.collision=Collision.FORCE_ON
    ExplosionVFX:Play()
    Geo.visibility=Visibility.FORCE_OFF
    state=1
    Task.Wait(2)
    if Object.IsValid(HeavyHitTrigger) then
        HeavyHitTrigger:Destroy()
    end
    Task.Wait(2)
    PhysicGranade:Destroy()
end

--theTrigger:GetCustomProperty("Owner")