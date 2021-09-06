local Folder = script:GetCustomProperty("Folder"):WaitForObject()
local WeaponAsset = script:GetCustomProperty("Weapon")
local VFX = script:GetCustomProperty("VFX"):WaitForObject()

local weaponIsRandom = Folder:GetCustomProperty("RandomWeapon")

local weapon=nil

function Tick()
    Task.Wait(5)
    if weapon and Object.IsValid(weapon) then
        Task.Wait(5)
    elseif weaponIsRandom then
        if math.random(10)==4 then
            VFX:Play()
            Task.Wait(0.1)
            weapon=World.SpawnAsset(WeaponAsset)
            weapon:SetWorldPosition(Folder:GetWorldPosition())
        end
    end
end