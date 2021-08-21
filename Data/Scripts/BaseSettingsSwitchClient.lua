
local MacilvoyCamera = script:GetCustomProperty("MacilvoyCamera"):WaitForObject()
local PeterBloodCamera = script:GetCustomProperty("PeterBloodCamera"):WaitForObject()

function OnBindingPressed(player, binding)
    if binding == "ability_extra_8" then
       -- defaultSettings:ApplyToPlayer(player)
        player:SetDefaultCamera(MacilvoyCamera, 0.0)
    end
  --  if binding == "ability_extra_9" then
   --     player:SetDefaultCamera(PeterBloodCamera, 0.0)
 --   end
end

function OnPlayerJoined(player)
    player.bindingPressedEvent:Connect(OnBindingPressed)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)