local AnimationSystem = script:GetCustomProperty("AnimationSystem"):WaitForObject()

function SystemInit(System, player)
    
end

AnimationSystem.equippedEvent:Connect(SystemInit)