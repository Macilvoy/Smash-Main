--___________________________________________________________________________________________

--####################################### SYSTEM LOGIC ######################################
--___________________________________________________________________________________________

--   Animations_Root => weapon
--                     |
--                     |=> Animations
--                     |       |
--                     |     => animIndex => animId => AnimId
--                     |       |
--                     |       |  => animationLength => Length (((=> AnimationTimer)))
--                     |
--                     |     => animation => Bones => Bone
--                     |                             |  => RHandKeys
--                     |                             |    |     => rightHIKs
--                     |                             |    |       |     => rightHIK
--                     |                             |    |       |
--                     |                             |    |       |     => keyIndex => keyframe => Keyframe
--                     |                             |  => LHandKeys
--                     |                             |    |     => leftHIKs
--                     |                             |    |       |     => leftHIK
--                     |                             |    |       |
--                     |                             |    |       |     => keyIndex => keyframe => Keyframe
--                     |                             |  => LLegKeys
--                     |                             |    |     => rightLIKs
--                     |                             |    |       |     => rightLIK
--                     |                             |    |       |
--                     |                             |    |       |     => keyIndex => keyframe => Keyframe
--                     |                             |  => RLegKeys
--                     |                             |    |     => leftLIKs
--                     |                             |    |       |     => leftLIK
--                     |                             |    |       |
--                     |                             |    |       |     => keyIndex => keyframe => Keyframe
--                     |                             |  => PelvisKeys
--                     |                             |    |     => pelvisIKs
--                     |                             |    |       |     => pelvisIK
--                     |                             |    |       |
--                     |                             |    |       |     => keyIndex => keyframe => Keyframe
--                     |
--   player => Aniplayer
--___________________________________________________________________________________________
--###########################################################################################
--###########################################################################################
--###########################################################################################

-- local LHand = script:GetCustomProperty("LHand"):WaitForObject()
-- local RHand = script:GetCustomProperty("RHand"):WaitForObject()
-- local Pelvis = script:GetCustomProperty("Pelvis"):WaitForObject()
-- local LFoot = script:GetCustomProperty("LFoot"):WaitForObject()
-- local RFoot = script:GetCustomProperty("RFoot"):WaitForObject()
-- local Animations_Root = nil
local AnimationSystem = script:GetCustomProperty("AnimationSystem")
--local EquipTrigger = script:GetCustomProperty("EquipTrigger"):WaitForObject()
--local AnimSystem = nil

local Wkey = "ability_extra_21"
local Akey = "ability_extra_30"
local Skey = "ability_extra_31"
local Dkey = "ability_extra_32"
local Qkey = "ability_extra_20"
local Ekey = "ability_extra_22"
local Rkey = "ability_extra_23"
local Spacekey = "ability_extra_17"
local TABkey = "ability_extra_19"
local LShiftkey = "ability_extra_12"

local Weapons = {}
local Animations = {}
local Bones = {}
local RHandKeys = {}
local LHandKeys = {}
local LLegKeys = {}
local RLegKeys = {}
local PelvisKeys = {}
local rightHIK = nil
local leftHIK = nil
local rightLIK = nil
local leftLIK = nil
local pelvisIK = nil
local rightHIKs = nil
local leftHIKs = {}
local rightLIKs = {}
local leftLIKs = {}
local pelvisIKs = {}
local rightHIKsPos = 0
local rightHIKsRot = 0
local leftHIKsPos = {}
local leftHIKsRot = {}
local rightLIKsPos = {}
local rightLIKsRot = {}
local leftLIKsPos = {}
local leftLIKsRot = {}
local pelvisIKsPos = {}
local pelvisIKsRot = {}

local Aniplayer = nil


local Animating = 1
local isAttached = 0
local KeyPressed = 0 -- TEMP CHECK
local pressedBefore = false

local WeaponId = 1 -- ############################# GET RESOURCE FROM MENU
local AnimId = 1
local Keyframe = 1
local animationLength = 0
local Length = 1
local KeyframeInterval = script:GetCustomProperty("KeyframeInterval")

local WeaponAssets = script:GetCustomProperty("weapon")

local weaponId = 0

function EquipWeapon(player)
    WeaponAssetsSpawned = World.SpawnAsset(WeaponAssets, {position = player:GetWorldPosition()-Vector3.New(0,0,1000)})
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

--[[
ability_extra_21 = W
ability_extra_30 = A
ability_extra_31 = S
ability_extra_32 = D

ability_extra_20 = Q
ability_extra_22 = E

ability_extra_36 = J
ability_extra_37 = K

ability_extra_23 = R

ability_extra_33 = F

ability_extra_40 = X

ability_extra_38 = L

ability_extra_17 = Space
ability_extra_19 = TAB
ability_extra_12 = LShift

]]

function OnBindingPressed(player, binding)

    if binding == "ability_extra_30" or binding == "ability_extra_32" then
        AnimId = 2
        Keyframe = 1
        Animating = 1
        KeyPressed = 1
        pressedBefore = true
    end
    if binding == "ability_extra_5" then
        weaponId = 1
        EquipWeapon(player)
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
 if not pressedBefore then
     return
 end
    if binding == "ability_extra_30" or binding == "ability_extra_32" then
        AnimId = 1
        Keyframe = 1
        Animating = 1
        KeyPressed = 0
    end

end

function SetIK(anchor, animatedPlayer, IK)
    anchor:MoveTo(Vector3.New(IK:GetWorldPosition()),KeyframeInterval/10,false)
    anchor:RotateTo(Rotation.New (IK:GetWorldRotation()),KeyframeInterval/10,false)
    if not anchor.serverUserData.isActivated then
    anchor:Activate(animatedPlayer)
    anchor.serverUserData.isActivated = true
    end
end

function LocateIK()
     SetIK(Pelvis, Aniplayer, pelvisIK)
     SetIK(LHand, Aniplayer, leftHIK)
    SetIK(RHand, Aniplayer, rightHIK)
     SetIK(LFoot, Aniplayer, leftLIK)
     SetIK(RFoot, Aniplayer, rightLIK)
end

function GetAnimation()

    rightHIK = rightHIKs
    rightHIK:SetWorldPosition(Vector3.New(rightHIKsPos))
    rightHIK:SetWorldRotation(Rotation.New(rightHIKsRot))

     leftHIK = leftHIKs
     leftHIK:SetWorldPosition(Vector3.New(leftHIKsPos))
     leftHIK:SetWorldRotation(Rotation.New(leftHIKsRot))

     leftLIK = leftLIKs
     leftLIK:SetWorldPosition(Vector3.New(leftLIKsPos))
     leftLIK:SetWorldRotation(Rotation.New(leftLIKsRot))

     rightLIK = rightLIKs
     rightLIK:SetWorldPosition(Vector3.New(rightLIKsPos))
     rightLIK:SetWorldRotation(Rotation.New(rightLIKsRot))

     pelvisIK = pelvisIKs
     pelvisIK:SetWorldPosition(Vector3.New(pelvisIKsPos))
     pelvisIK:SetRotation(Rotation.New(pelvisIKsRot))

    Length = animationLength*KeyframeInterval
end


function DebugIK()

    -- CoreDebug.DrawLine(pelvisIK:GetWorldPosition(), Aniplayer:GetWorldPosition(),{duration = KeyframeInterval, thickness = 10})
	 --CoreDebug.DrawLine(rightHIK:GetWorldPosition(), Aniplayer:GetWorldPosition(),{duration = KeyframeInterval, thickness = 10})
	-- CoreDebug.DrawLine(leftHIK:GetWorldPosition(), Aniplayer:GetWorldPosition(),{thickness = 10})
    -- CoreDebug.DrawLine(rightLIK:GetWorldPosition(), Aniplayer:GetWorldPosition(),{thickness = 10})
	-- CoreDebug.DrawLine(leftLIK:GetWorldPosition(), Aniplayer:GetWorldPosition(),{thickness = 10})

end

function OnPlayerJoined(player)

   Aniplayer = player
   AnimSystem = World.SpawnAsset(AnimationSystem, {position = player:GetWorldPosition()-Vector3.New(0,0,118.557)})
   print(AnimSystem)
   local SystemChildren = AnimSystem:GetChildren()
    for _, Clientfolder in ipairs(SystemChildren) do
     if Clientfolder.name=="Equip Trigger" then
         EquipTrigger = Clientfolder
         print(EquipTrigger)
     end
    if Clientfolder.name=="Animations" then
        Animations_Root = Clientfolder
    end
    if Clientfolder.name =="Anchor" then
        AnchorFolder = Clientfolder
        AnchorFolderBones = AnchorFolder:GetChildren()
        for _, anchors in ipairs(AnchorFolderBones) do
            if anchors.name == "RHand" then
                RHand = anchors
            end
            if anchors.name == "LHand" then
                LHand = anchors
            end
            if anchors.name == "RFoot" then
                RFoot = anchors
            end
            if anchors.name == "LFoot" then
                LFoot = anchors
            end
            if anchors.name == "Pelvis" then
                Pelvis = anchors
            end
        end

    end
   end
EquipTrigger.beginOverlapEvent:Connect(SystemInit)
    player.bindingPressedEvent:Connect(OnBindingPressed)
    player.bindingReleasedEvent:Connect(OnBindingReleased)
end


function SystemInit(System, player)
if isAttached == 0 then
    player.animationStance = "unarmed_bind_pose"
    AnimSystem:AttachToPlayer(player, "root")
                isAttached = 1
    else
        return
end
end

function ResyncAnimation()
    --############################# getting list of animations #############################
    Weapons = Animations_Root:GetChildren()
for weaponIndex, weapon in ipairs(Weapons) do
    if weaponIndex == WeaponId then
        Animations = weapon:GetChildren()
for animIndex, animation in ipairs(Animations) do

    --############################# getting bones from animation #######################
if animIndex == AnimId then
    Bones = animation:GetChildren()
    for _, Bone in pairs(Bones) do
        if Bone.name=="RHandKeys" then
        RHandKeys = Bone:GetChildren()
        end
        if Bone.name=="LHandKeys" then
        LHandKeys = Bone:GetChildren()
        end
        if Bone.name=="LLegKeys" then
        LLegKeys = Bone:GetChildren()
        end
        if Bone.name=="RLegKeys" then
        RLegKeys = Bone:GetChildren()
        end
        if Bone.name=="PelvisKeys" then
        PelvisKeys = Bone:GetChildren()
        end
    end

    --############################# getting animation length ############################

animationLength = #RHandKeys

    --############################# getting keys for IKs ################################

    for keyIndex, Key in ipairs(RHandKeys) do
        if keyIndex == Keyframe then
        rightHIKs = Key--[animIndex][keyIndex]
        rightHIKsPos = Key:GetWorldPosition()
        rightHIKsRot = Key:GetWorldRotation()
        end
    end
    for keyIndex, Key in ipairs(LHandKeys) do
        if keyIndex == Keyframe then
        leftHIKs = Key
        leftHIKsPos = Key:GetWorldPosition()
        leftHIKsRot = Key:GetWorldRotation()
        end
    end
    for keyIndex, Key in ipairs(LLegKeys) do
        if keyIndex == Keyframe then
        leftLIKs = Key
        leftLIKsPos = Key:GetWorldPosition()
        leftLIKsRot = Key:GetWorldRotation()
        end
    end
    for keyIndex, Key in ipairs(RLegKeys) do
        if keyIndex == Keyframe then
        rightLIKs = Key
        rightLIKsPos = Key:GetWorldPosition()
        rightLIKsRot = Key:GetWorldRotation()
        end
    end
    for keyIndex, Key in ipairs(PelvisKeys) do
        if keyIndex == Keyframe then
        pelvisIKs = Key
        pelvisIKsPos = Key:GetWorldPosition()
        pelvisIKsRot = Key:GetRotation()
        end
    end
    --####################################################################################
end
end
end
end
end

function Tick()
    Task.Wait(KeyframeInterval/10)
if isAttached == 1 then
ResyncAnimation()
GetAnimation()
DebugIK()
    if Animating == 1 then

     Keyframe = Keyframe + 1
     LocateIK()
        if(Keyframe*KeyframeInterval > Length) and KeyPressed == 0 then
             AnimId = 1
             Keyframe = 1
             Animating = 1
            -- LocateIK()
        elseif (Keyframe*KeyframeInterval > Length) and KeyPressed == 1 then
            Keyframe = 1
        --    LocateIK()
       -- else LocateIK()
         end
    end
end
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)