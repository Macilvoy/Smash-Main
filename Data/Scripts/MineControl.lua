local PhysicMine = script:GetCustomProperty("PhysicMine"):WaitForObject()
local HitBoxTrigger = script:GetCustomProperty("HitBoxTrigger"):WaitForObject()

local Geo = PhysicMine:GetCustomProperty("Geo"):WaitForObject()
local HeavyHitTrigger = PhysicMine:GetCustomProperty("HeavyHitTrigger"):WaitForObject()
local ExplosionVFX = PhysicMine:GetCustomProperty("ExplosionVFX"):WaitForObject()
local PlantedMine = script:GetCustomProperty("PlantedMine")

local state=0
local plantPosition=Vector3.ZERO
local startTime=time()

function Overlap(_,player)
    if player then
        if player:IsA("Player") and state==0 and player.name~=HeavyHitTrigger:GetCustomProperty("Owner") then
            state=2
            if Object.IsValid(HeavyHitTrigger) then HeavyHitTrigger.collision=Collision.FORCE_ON end
            ExplosionVFX:Play()
            Geo.visibility=Visibility.FORCE_OFF
            Task.Wait(2)
            if Object.IsValid(HeavyHitTrigger) then
                HeavyHitTrigger:Destroy()
            end
            Task.Wait(2)
            if Object.IsValid(PhysicMine) then PhysicMine:Destroy() end
        elseif player.name=="Ground" and state==0 then
            state=1
            --PhysicMine.collision=Collision.FORCE_OFF
            PhysicMine:SetVelocity(Vector3.ZERO)
            PhysicMine:SetWorldRotation(Rotation.ZERO)
            PhysicMine:SetWorldPosition(Vector3.New(PhysicMine:GetWorldPosition().x,PhysicMine:GetWorldPosition().y,player:GetWorldPosition().z+(player:GetWorldScale().z*50)+(PhysicMine:GetWorldScale().z*50)))
            if plantPosition==Vector3.ZERO then
                plantPosition=Vector3.New(PhysicMine:GetWorldPosition().x,PhysicMine:GetWorldPosition().y,player:GetWorldPosition().z+(player:GetWorldScale().z*50)+(PhysicMine:GetWorldScale().z*50)-40)
            end
            if plantPosition~=Vector3.New(0,0,0) then
                local mine=World.SpawnAsset(PlantedMine)
                local trigger=mine:GetCustomProperty("HeavyHitTrigger"):WaitForObject()
                trigger:SetNetworkedCustomProperty("Owner",PhysicMine:GetCustomProperty("HeavyHitTrigger"):WaitForObject():GetCustomProperty("Owner"))
                trigger:SetNetworkedCustomProperty("Direction",PhysicMine:GetCustomProperty("HeavyHitTrigger"):WaitForObject():GetCustomProperty("Direction"))
                trigger:SetNetworkedCustomProperty("Damage",PhysicMine:GetCustomProperty("HeavyHitTrigger"):WaitForObject():GetCustomProperty("Damage"))
                trigger:SetNetworkedCustomProperty("Power",PhysicMine:GetCustomProperty("HeavyHitTrigger"):WaitForObject():GetCustomProperty("Power"))
                Events.Broadcast("ConnectHeavyTrigger",trigger)
                mine:SetWorldPosition(plantPosition)
                mine:SetWorldRotation(Rotation.ZERO)
            end
            PhysicMine:Destroy()
        end
    end
end

function Tick()
    if time()>startTime+10 then
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
            PhysicMine:Destroy()
        end
    end
end

HitBoxTrigger.beginOverlapEvent:Connect(Overlap)