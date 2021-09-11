local Bomb = script:GetCustomProperty("Bomb"):WaitForObject()
local Geo = script:GetCustomProperty("Geo"):WaitForObject()
local Trigger = script:GetCustomProperty("Trigger"):WaitForObject()
local DirtVFX = script:GetCustomProperty("DirtVFX"):WaitForObject()
local HeavyHitTrigger = script:GetCustomProperty("HeavyHitTrigger"):WaitForObject()

Task.Wait(1)
Bomb:SetWorldRotation(Rotation.New(0,-90,0))
Bomb:MoveContinuous(Vector3.New(0,0,-8100),true)

function Overlap(_,theTrigger)
    if theTrigger.name=="Ground" then
        Bomb:StopMove()
        if Bomb:GetWorldPosition().z<theTrigger:GetWorldPosition().z then
            Bomb:SetWorldPosition(Vector3.New(Bomb:GetWorldPosition().x,Bomb:GetWorldPosition().y,theTrigger:GetWorldPosition().z+(theTrigger:GetWorldScale().z*50)+(Bomb:GetWorldScale().z*50)))--theTrigger:GetWorldPosition().z+(math.abs(Bomb:GetWorldPosition().z-theTrigger:GetWorldPosition().z))))
        end
        Geo.visibility=Visibility.FORCE_OFF
        DirtVFX:Play()
        HeavyHitTrigger.collision=Collision.FORCE_ON
        Task.Wait(2)
        --if Object.IsValid(HeavyHitTrigger) then
        --    HeavyHitTrigger:Destroy()
        --end
        Task.Wait(2)
        Bomb:Destroy()
    end
end

Trigger.beginOverlapEvent:Connect(Overlap)