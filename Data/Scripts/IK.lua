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

<<<<<<< HEAD
local AnimationSystem = script:GetCustomProperty("AnimationSystem")
local ROOT = script:GetCustomProperty("ROOT")

local p1Weapons = {}
local p1Animations = {}
local p1AnimFolder = nil
local p1SystemChildren = {}
local p1Animations_Root = nil
local p1AnchorFolder = nil
local p1AnchorFolderBones = {}
local p1RHand = nil
local p1LHand = nil
local p1RFoot = nil
local p1LFoot = nil
local p1Pelvis = nil
local p1Bones = {}
local p1RHandKeys = {}
local p1LHandKeys = {}
local p1LLegKeys = {}
local p1RLegKeys = {}
local p1PelvisKeys = {}
local p1rightHIK = nil
local p1leftHIK = nil
local p1rightLIK = nil
local p1leftLIK = nil
local p1pelvisIK = nil
local p1rightHIKs = nil
local p1leftHIKs = {}
local p1rightLIKs = {}
local p1leftLIKs = {}
local p1pelvisIKs = {}
local p1rightHIKsPos = 0
local p1rightHIKsRot = 0
local p1leftHIKsPos = {}
local p1leftHIKsRot = {}
local p1rightLIKsPos = {}
local p1rightLIKsRot = {}
local p1leftLIKsPos = {}
local p1leftLIKsRot = {}
local p1pelvisIKsPos = {}
local p1pelvisIKsRot = {}

local p2Weapons = {}
local p2Animations = {}
local p2AnimFolder = nil
local p2SystemChildren = {}
local p2Animations_Root = nil
local p2AnchorFolder = nil
local p2AnchorFolderBones = {}
local p2RHand = nil
local p2LHand = nil
local p2RFoot = nil
local p2LFoot = nil
local p2Pelvis = nil
local p2Bones = {}
local p2RHandKeys = {}
local p2LHandKeys = {}
local p2LLegKeys = {}
local p2RLegKeys = {}
local p2PelvisKeys = {}
local p2rightHIK = nil
local p2leftHIK = nil
local p2rightLIK = nil
local p2leftLIK = nil
local p2pelvisIK = nil
local p2rightHIKs = nil
local p2leftHIKs = {}
local p2rightLIKs = {}
local p2leftLIKs = {}
local p2pelvisIKs = {}
local p2rightHIKsPos = 0
local p2rightHIKsRot = 0
local p2leftHIKsPos = {}
local p2leftHIKsRot = {}
local p2rightLIKsPos = {}
local p2rightLIKsRot = {}
local p2leftLIKsPos = {}
local p2leftLIKsRot = {}
local p2pelvisIKsPos = {}
local p2pelvisIKsRot = {}

local p1Keyframe = 1
local p1animationLength = 0
local p1Length = 1

local p2Keyframe = 1
local p2animationLength = 0
local p2Length = 1

=======
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
>>>>>>> parent of 1d69faa ( two steps from hell)
local KeyframeInterval = script:GetCustomProperty("KeyframeInterval")

local WeaponAssets = script:GetCustomProperty("weapon")

<<<<<<< HEAD
local p1WeaponAssetsSpawned = nil
local p1AssetsChildren = {}
local p1HandsFolders = {}

local p2WeaponAssetsSpawned = nil
local p2AssetsChildren = {}
local p2HandsFolders = {}

local EquipTrigger1 = nil
local EquipTrigger2 = nil

local isAttached = "isAttached"
local ColRes = "Color"
local StateId = "State"
local PrevStateId = "PrevStateId"
local Stunned = "Stunned"
local Combo = "Combo"
local NoControl = "NoControl"
local Zpos = "Zpos"
local WeaponId = "WeaponId"
local KeyActive = "KeyActive"
local CapsuleAttached = "CapsuleAttached"
local PNum = "PNum"

local p1TimerBasic = math.floor(0)
local p1TimerStun = math.floor(0)
local p1TimerCombo = math.floor(0)
local p2TimerBasic = math.floor(0)
local p2TimerStun = math.floor(0)
local p2TimerCombo = math.floor(0)

local TimerStun = 100
local TimerCombo = 50

local p1KeyState={} -- 1-W / 2-S / 3-A / 4-D / 5-J / 6-K / 7-R / 8-LSHIFT / 9-SPACE
local p2KeyState={} 

local p1AnimLenth = 0
local p2AnimLenth = 0

function OnPlayerJoined(player)

    player:SetResource(isAttached,0)
    player:SetResource(StateId,1)
    player:SetResource(NoControl,1)
    player:SetResource(Combo,0)
    player:SetResource(Stunned,0)
    player:SetResource(PrevStateId,1)
    player:SetResource(Zpos,0)
    player:SetResource(KeyActive,0)
    player:SetResource(CapsuleAttached,0)
    
    player:SetResource(WeaponId,1) -- TEMP RESOURCE
local AllPlayers = Game.GetPlayers()
for index, pl in ipairs(AllPlayers) do
    pl:SetResource(ColRes,index)
end

    if player:GetResource(ColRes) == 1 then
        player:SetResource(PNum,1)
    else
        player:SetResource(PNum,2)
    end
    EquipWeapon(player)
    SpawnIKRig(player)
    Events.Broadcast("Movement",player)
    player.bindingPressedEvent:Connect(OnBindingPressed)
    player.bindingReleasedEvent:Connect(OnBindingReleased)
end
=======
local weaponId = 0
>>>>>>> parent of 1d69faa ( two steps from hell)

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

<<<<<<< HEAD
function SpawnIKRig(player)
    if player:GetResource(PNum) == 1 then
            p1AnimFolder = World.SpawnAsset(AnimationSystem, {position = player:GetWorldPosition()})
            p1AnimFolder:AttachToPlayer(player, "root")
            p1SystemChildren = p1AnimFolder:GetChildren()
         for _, Clientfolder in ipairs(p1SystemChildren) do

         if Clientfolder.name =="Anchor" then
             p1AnchorFolder = Clientfolder
             p1AnchorFolderBones = p1AnchorFolder:GetChildren()
             for _, anchors in ipairs(p1AnchorFolderBones) do
                 if anchors.name == "RHand" then
                     p1RHand = anchors
                 end
                 if anchors.name == "LHand" then
                     p1LHand = anchors
                 end
                 if anchors.name == "RFoot" then
                     p1RFoot = anchors
                 end
                 if anchors.name == "LFoot" then
                     p1LFoot = anchors
                 end
                 if anchors.name == "Pelvis" then
                     p1Pelvis = anchors
                 end
             end
     
         end
        end
        ResyncAnimation(player)
        LocateIK(player)
    else
        p2AnimFolder = World.SpawnAsset(AnimationSystem, {position = player:GetWorldPosition()-Vector3.New(0,0,900)})
        p2SystemChildren = p2AnimFolder:GetChildren()
     for _, Clientfolder in ipairs(p2SystemChildren) do

     if Clientfolder.name =="Anchor" then
         p2AnchorFolder = Clientfolder
         p2AnchorFolderBones = p2AnchorFolder:GetChildren()
         for _, anchors in ipairs(p2AnchorFolderBones) do
             if anchors.name == "RHand" then
                 p2RHand = anchors
             end
             if anchors.name == "LHand" then
                 p2LHand = anchors
             end
             if anchors.name == "RFoot" then
                 p2RFoot = anchors
             end
             if anchors.name == "LFoot" then
                 p2LFoot = anchors
             end
             if anchors.name == "Pelvis" then
                 p2Pelvis = anchors
             end
         end
 
     end
    end
end
end
=======
--[[
ability_extra_21 = W
ability_extra_30 = A
ability_extra_31 = S
ability_extra_32 = D
>>>>>>> parent of 1d69faa ( two steps from hell)

ability_extra_20 = Q
ability_extra_22 = E

ability_extra_36 = J
ability_extra_37 = K

ability_extra_23 = R

ability_extra_33 = F

ability_extra_40 = X

ability_extra_38 = L

<<<<<<< HEAD
        end
        if binding == Akey then -- A
                if player:GetResource(PNum) == 1 then
                if p1TimerBasic > 5 then
                p1TimerBasic = 0
                p1TimerCombo = 0
                end
                else
                if p2TimerBasic > 5 then
                p2TimerBasic = 0
                p2TimerCombo = 0
                end
                end
        end
        if binding == Dkey then -- D
                if player:GetResource(PNum) == 1 then
                if p1TimerBasic > 5 then
                p1TimerBasic = 0
                p1TimerCombo = 0
                end
                else
                if p2TimerBasic > 5 then
                p2TimerBasic = 0
                p2TimerCombo = 0
                end
                end
        end
        if binding == Jkey then -- J
    
        end
        if binding == Kkey then -- K
    
        end
        if binding == Rkey then -- R
    
        end
        if binding == Spacekey then -- SPACE
            if player:GetResource(PNum) == 1 then
                if p1TimerBasic > 5 then
                    if player:GetResource(Zpos) == 0 then
                    player:SetResource(StateId,3)
                    player:SetResource(KeyActive, 1)
                    p1AnimLenth = p1Length + 10
                    ResyncAnimation(player)
                    LocateIK(player)
                    else
                    player:SetResource(StateId,4)
                    player:SetResource(KeyActive, 1)
                    p1AnimLenth = p1Length
                    ResyncAnimation(player)
                    LocateIK(player)
                    end
                p1TimerBasic = 0
                p1TimerCombo = 0
                else
                player:ResetVelocity()
                end
                else
                if p2TimerBasic > 5 then
                    if player:GetResource(Zpos) == 0 then
                    player:SetResource(StateId,3)
                    ResyncAnimation(player)
                    LocateIK(player)
                    p2AnimLenth = p2Length + 10
                    else
                    player:SetResource(StateId,4)
                    ResyncAnimation(player)
                    LocateIK(player)
                    p2AnimLenth = p2Length
                    end
                p2TimerBasic = 0
                p2TimerCombo = 0
                else
                    player:ResetVelocity()
                end
                end
        end
        if binding == LShiftkey then -- LSHIFT
    
        end
end
=======
ability_extra_17 = Space
ability_extra_19 = TAB
ability_extra_12 = LShift
>>>>>>> parent of 1d69faa ( two steps from hell)

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

<<<<<<< HEAD
function Tick()
    --Task.Wait(KeyframeInterval/50)
    p1TimerBasic = p1TimerBasic + 1
    p2TimerBasic = p2TimerBasic + 1
    AllPlayers = Game.GetPlayers()
    for _,player in ipairs(AllPlayers) do
if player:GetResource(PNum) == 1 then
    --if player:GetResource(isAttached) == 1 then
        if player:GetVelocity().z ~= 0 then
        player:SetResource(Zpos,1)
        else
        player:SetResource(Zpos,0)
        end
        ResyncAnimation(player)
        LocateIK(player)
        p1Keyframe = p1Keyframe + 1
 -- CHANGED POSITION CAN CAUSE LAG
       if(p1Keyframe*KeyframeInterval > p1Length) and player:GetResource(KeyActive) == 0 and p1AnimLenth == 0 then
        if player:GetResource(Zpos) == 0 then
            if player:GetResource(StateId) ~= 1 then
            player:SetResource(StateId,1)
            ResyncAnimation(player)
            LocateIK(player)
            end
        else
            if player:GetResource(StateId) ~= 5 then
            player:SetResource(StateId,5)
            ResyncAnimation(player)
            LocateIK(player)
            end
        end
            p1Keyframe = 1
       elseif (p1Keyframe*KeyframeInterval > p1Length) and player:GetResource(KeyActive) == 1 and p1AnimLenth > 0 then
            p1Keyframe = 1
        end
    if p1TimerCombo > 0 and p1TimerCombo < TimerCombo then
        p1TimerCombo = p1TimerCombo + 1
    else
        p1TimerCombo = -1
        player:SetResource(Combo,0)
    end
    if p1TimerStun > 0 and p1TimerStun < TimerStun then
        p1TimerStun = p1TimerStun - 1
    else
        p1TimerStun = -1
        player:SetResource(Stunned,0)
    end
    if p1AnimLenth > 0 then
        p1AnimLenth = p1AnimLenth - 1
    end
    --end
else
    if player:GetResource(isAttached) == 1 then
        ResyncAnimation(player)
        GetAnimation(player)
        LocateIK(player) -- CHANGED POSITION CAN CAUSE LAG
        p2Keyframe = p2Keyframe + 1
           if(p2Keyframe*KeyframeInterval > p2Length) and player:GetResource(KeyActive) == 0 then
                player:SetResource(StateId,1)
                p2Keyframe = 1
           elseif (p2Keyframe*KeyframeInterval > p2Length) and player:GetResource(KeyActive) == 1 then
                p2Keyframe = 1
            end
    if p2TimerCombo > 0 and p2TimerCombo < TimerCombo then
        p2TimerCombo = p2TimerCombo + 1
    else
        p2TimerCombo = -1
        player:SetResource(Combo,0)
    end
    if p2TimerStun > 0 and p2TimerStun < TimerStun then
        p2TimerStun = p2TimerStun - 1
    else
        p2TimerStun = -1
        player:SetResource(Stunned,0)
    end
    end
end
end
end

function ResyncAnimation(player)
    if player:GetResource(PNum) == 1 then
        local RubbishToWipe = player:GetAttachedObjects()
        for _, trash in ipairs(RubbishToWipe) do
            if trash.name == "Animations" then
        trash:Destroy()
        end
        end
        p1Animations_Root = World.SpawnAsset(ROOT, {position = player:GetWorldPosition()})
        p1Animations_Root:AttachToPlayer(player, "pelvis")
    --############################# getting list of animations #############################
    p1Weapons = p1Animations_Root:GetChildren()
for weaponIndex, weapon in ipairs(p1Weapons) do
    if weaponIndex == player:GetResource(WeaponId) then
        p1Animations = weapon:GetChildren()
for animIndex, animation in ipairs(p1Animations) do
=======
     pelvisIK = pelvisIKs
     pelvisIK:SetWorldPosition(Vector3.New(pelvisIKsPos))
     pelvisIK:SetRotation(Rotation.New(pelvisIKsRot))

    Length = animationLength*KeyframeInterval
end

>>>>>>> parent of 1d69faa ( two steps from hell)

function DebugIK()

    -- CoreDebug.DrawLine(pelvisIK:GetWorldPosition(), Aniplayer:GetWorldPosition(),{duration = KeyframeInterval, thickness = 10})
	 --CoreDebug.DrawLine(rightHIK:GetWorldPosition(), Aniplayer:GetWorldPosition(),{duration = KeyframeInterval, thickness = 10})
	-- CoreDebug.DrawLine(leftHIK:GetWorldPosition(), Aniplayer:GetWorldPosition(),{thickness = 10})
    -- CoreDebug.DrawLine(rightLIK:GetWorldPosition(), Aniplayer:GetWorldPosition(),{thickness = 10})
	-- CoreDebug.DrawLine(leftLIK:GetWorldPosition(), Aniplayer:GetWorldPosition(),{thickness = 10})

<<<<<<< HEAD
p1animationLength = #p1PelvisKeys
p1Length = p1animationLength*KeyframeInterval
=======
end
>>>>>>> parent of 1d69faa ( two steps from hell)

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
<<<<<<< HEAD
    --####################################################################################
else
    animation:Destroy()
end
=======
   end
EquipTrigger.beginOverlapEvent:Connect(SystemInit)
    player.bindingPressedEvent:Connect(OnBindingPressed)
    player.bindingReleasedEvent:Connect(OnBindingReleased)
>>>>>>> parent of 1d69faa ( two steps from hell)
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
<<<<<<< HEAD
-- LocateIK(player)
else
=======

function ResyncAnimation()
>>>>>>> parent of 1d69faa ( two steps from hell)
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

<<<<<<< HEAD
function LocateIK(player)
    if player:GetResource(PNum) == 1 then
    SetIK(p1Pelvis, player, p1pelvisIKs)
    SetIK(p1LHand, player, p1leftHIKs)
    SetIK(p1RHand, player, p1rightHIKs)
    SetIK(p1LFoot, player, p1leftLIKs)
    SetIK(p1RFoot, player, p1rightLIKs)
    else
    SetIK(p2Pelvis, player, p2pelvisIK)
    SetIK(p2LHand, player, p2leftHIK)
    SetIK(p2RHand, player, p2rightHIK)
    SetIK(p2LFoot, player, p2leftLIK)
    SetIK(p2RFoot, player, p2rightLIK)
    end
end

function SetIK(anchor, player, IK)
    if Object.IsValid(IK) then
    anchor:MoveTo(Vector3.New(IK:GetWorldPosition()),KeyframeInterval/10,false)
    anchor:RotateTo(Rotation.New (IK:GetWorldRotation()),KeyframeInterval/10,false)
    if not anchor.serverUserData.isActivated then
    anchor:Activate(player)
    anchor.serverUserData.isActivated = true
    end
end
end
=======
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
>>>>>>> parent of 1d69faa ( two steps from hell)

Game.playerJoinedEvent:Connect(OnPlayerJoined)