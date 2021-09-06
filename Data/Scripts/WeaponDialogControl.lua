local Weapon = script:GetCustomProperty("Weapon"):WaitForObject()
local WeaponDialogWindow = script:GetCustomProperty("WeaponDialogWindow"):WaitForObject()
--theTrigger:SetNetworkedCustomProperty("isEquipped",true)

local player=Game.GetLocalPlayer()

function onBeginOverlap(_,obj)
    if obj and Weapon:GetCustomProperty("isEquipped")==false and obj==player then
        WeaponDialogWindow.visibility=Visibility.FORCE_ON
    end
end

function onEndOverlap(_,_)
    if Object.IsValid(WeaponDialogWindow) and WeaponDialogWindow.visibility==Visibility.FORCE_ON then
        WeaponDialogWindow.visibility=Visibility.FORCE_OFF
    end
end

Weapon.beginOverlapEvent:Connect(onBeginOverlap)
Weapon.endOverlapEvent:Connect(onEndOverlap)

Weapon.networkedPropertyChangedEvent:Connect(onEndOverlap)