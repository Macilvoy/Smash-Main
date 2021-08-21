local MacilvoyPlayerSettings = script:GetCustomProperty("MacilvoyPlayerSettings"):WaitForObject()
local PeterBloodSettings = script:GetCustomProperty("PeterBloodSettings"):WaitForObject()
local DefaultFloor = script:GetCustomProperty("DefaultFloor"):WaitForObject()
local DefaultFloor1 = script:GetCustomProperty("DefaultFloor_1"):WaitForObject()
local UIContainer = script:GetCustomProperty("UIContainer"):WaitForObject()

function OnBindingPressed(player, binding)
    if binding == "ability_extra_8" then
        MacilvoyPlayerSettings:ApplyToPlayer(player)
        DefaultFloor.collision = Collision.FORCE_OFF
        DefaultFloor1.collision = Collision.FORCE_OFF
        UIContainer.visibility = Visibility.FORCE_OFF
    end
    -- if binding == "ability_extra_9" then
    --     PeterBloodSettings:ApplyToPlayer(player)
    --     UIContainer.visibility = Visibility.FORCE_OFF
    --     DefaultFloor.collision = Collision.FORCE_ON
    --     DefaultFloor1.collision = Collision.FORCE_ON
    -- end
end

function OnPlayerJoined(player)
  --  UIContainer.visibility = Visibility.FORCE_ON
    player.bindingPressedEvent:Connect(OnBindingPressed)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)