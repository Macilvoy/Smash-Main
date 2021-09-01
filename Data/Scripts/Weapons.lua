print("yo")
local WeaponAssets = script:GetCustomProperty("weapon")

local weaponId = 0

function EquipWeapon(player)
    WeaponAssetsSpawned = World.SpawnAsset(WeaponAssets, {position = player:GetWorldPosition()-Vector3.New(0,0,118.557)})
    local AssetsChildren = WeaponAssetsSpawned:GetChildren()
     for folderIndex, Weaponfolder in ipairs(AssetsChildren) do
      if folderIndex == weaponId then
       local HandsFolders = Weaponfolder:GetChildren()
       for handIndex, Handfolder in ipairs(HandsFolders) do
        if handIndex == 1 then
            Handfolder:AttachToPlayer(player, "right_prop")
        else
            Handfolder:AttachToPlayer(player, "left_prop")
        end
    end
    end
    end
end

function OnBindingPressed(player, binding)
    if binding == "ability_extra_5" then
        weaponId = 1
        EquipWeapon(player)
        print("yo")
    end
    if binding == "ability_extra_6" then
        weaponId = 2
        EquipWeapon(player)
    end
    if binding == "ability_extra_7" then
        weaponId = 3
        EquipWeapon(player)
    end
end

function OnBindingReleased(player, binding)
    
end

function OnPlayerJoined(player)
    print("yo")
     player.bindingPressedEvent:Connect(OnBindingPressed)
     player.bindingReleasedEvent:Connect(OnBindingReleased)
 end



Game.playerJoinedEvent:Connect(OnPlayerJoined)