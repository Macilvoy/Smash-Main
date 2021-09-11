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

local Wkey = "ability_extra_21"
local Akey = "ability_extra_30"
local Skey = "ability_extra_31"
local Dkey = "ability_extra_32"
local Jkey = "ability_extra_36"
local Kkey = "ability_extra_37"
local Rkey = "ability_extra_23"
local Spacekey = "ability_extra_17"
local TABkey = "ability_extra_19"
local LShiftkey = "ability_extra_12"

local AnimationSystem = script:GetCustomProperty("AnimationSystem")

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

local KeyframeInterval = script:GetCustomProperty("KeyframeInterval")

local WeaponAssets = script:GetCustomProperty("weapon")

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
    player.bindingPressedEvent:Connect(OnBindingPressed)
    player.bindingReleasedEvent:Connect(OnBindingReleased)
end

function EquipWeapon(player)
    if player:GetResource(PNum) == 1 then
    p1WeaponAssetsSpawned = World.SpawnAsset(WeaponAssets, {position = player:GetWorldPosition()-Vector3.New(0,0,1000)})
    p1AssetsChildren = p1WeaponAssetsSpawned:GetChildren()
     for folderIndex, Weaponfolder in ipairs(p1AssetsChildren) do
      if folderIndex == player:GetResource(WeaponId) then
       p1HandsFolders = Weaponfolder:GetChildren()
       for handIndex, Handfolder in ipairs(p1HandsFolders) do
        if handIndex == 1 then
            Handfolder:AttachToPlayer(player, "right_prop")
        else
            Handfolder:AttachToPlayer(player, "left_prop")
        end
    end
else
    Weaponfolder:Destroy()
    end
end
else
    p2WeaponAssetsSpawned = World.SpawnAsset(WeaponAssets, {position = player:GetWorldPosition()-Vector3.New(0,0,1000)})
    p2AssetsChildren = p2WeaponAssetsSpawned:GetChildren()
     for folderIndex, Weaponfolder in ipairs(p2AssetsChildren) do
      if folderIndex == player:GetResource(WeaponId) then
       p2HandsFolders = Weaponfolder:GetChildren()
       for handIndex, Handfolder in ipairs(p2HandsFolders) do
        if handIndex == 1 then
            Handfolder:AttachToPlayer(player, "right_prop")
        else
            Handfolder:AttachToPlayer(player, "left_prop")
        end
    end
else
    Weaponfolder:Destroy()
    end
end
end
end

function SpawnIKRig(player)
    if player:GetResource(PNum) == 1 then
            p1AnimFolder = World.SpawnAsset(AnimationSystem, {position = player:GetWorldPosition()-Vector3.New(0,0,900)})
            p1SystemChildren = p1AnimFolder:GetChildren()
         for _, Clientfolder in ipairs(p1SystemChildren) do
          if Clientfolder.name=="Equip Trigger" then
              EquipTrigger1 = Clientfolder
          end
         if Clientfolder.name=="Animations" then
             p1Animations_Root = Clientfolder
         end
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
        if EquipTrigger1 ~= nil then
            EquipTrigger1.beginOverlapEvent:Connect(EquipingTrigger)
        end
    else
        p2AnimFolder = World.SpawnAsset(AnimationSystem, {position = player:GetWorldPosition()-Vector3.New(0,0,900)})
        p2SystemChildren = p2AnimFolder:GetChildren()
     for _, Clientfolder in ipairs(p2SystemChildren) do
      if Clientfolder.name=="Equip Trigger" then
          EquipTrigger2 = Clientfolder
      end
     if Clientfolder.name=="Animations" then
         p2Animations_Root = Clientfolder
     end
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
    if EquipTrigger2 ~= nil then
        EquipTrigger2.beginOverlapEvent:Connect(EquipingTrigger)
    end
end
end

function EquipingTrigger(trigger, player)
    if player and player:IsA("Player") then
if player:GetResource(isAttached) == 0 then
    if trigger == EquipTrigger1 then
        p1AnimFolder:AttachToPlayer(player, "root")
        Events.Broadcast("Movement",player)
    else
        p2AnimFolder:AttachToPlayer(player, "root")
        Events.Broadcast("Movement",player)
    end
    player.animationStance = "unarmed_bind_pose"
    trigger:Destroy()
    player:AddResource(isAttached,1)
    else
        return
end
end
end

function OnBindingPressed(player, binding)

    --            D E B A G
    ----------------------------------------------
        if binding == "ability_extra_16" then -- ENTER

        end
        if binding == "ability_extra_1" then

        end
        if binding == "ability_extra_2" then

        end
        if binding == "ability_extra_3" then
    
        end
        if binding == "ability_extra_4" then
    
        end
    -----------------------------------------------
        if binding == Wkey then -- W

        end
        if binding == Skey then -- S

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
                    GetAnimation(player)
                    LocateIK(player)
                    else
                    player:SetResource(StateId,4)
                    player:SetResource(KeyActive, 1)
                    p1AnimLenth = p1Length
                    ResyncAnimation(player)
                    GetAnimation(player)
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
                    p2AnimLenth = p2Length + 10
                    else
                    player:SetResource(StateId,4)
                    ResyncAnimation(player)
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

function OnBindingReleased(player, binding)

    --            D E B A G
    ----------------------------------------------
    if binding == "ability_extra_16" then -- ENTER

    end
    if binding == "ability_extra_1" then

    end
    if binding == "ability_extra_2" then

    end
    if binding == "ability_extra_3" then

    end
    if binding == "ability_extra_4" then

    end
-----------------------------------------------
    if binding == Wkey then -- W

    end
    if binding == Skey then -- S

    end
    if binding == Akey then -- A
            if player:GetResource(PNum) == 1 then

            end
    end
    if binding == Dkey then -- D

    end
    if binding == Jkey then -- J

    end
    if binding == Kkey then -- K

    end
    if binding == Rkey then -- R

    end
    if binding == Spacekey then -- SPACE
        player:SetResource(KeyActive, 0)
    end
    if binding == LShiftkey then -- LSHIFT

    end

end

function Tick()
    Task.Wait(KeyframeInterval/5)
    p1TimerBasic = p1TimerBasic + 1
    p2TimerBasic = p2TimerBasic + 1
    AllPlayers = Game.GetPlayers()
    for _,player in ipairs(AllPlayers) do
if player:GetResource(PNum) == 1 then
    if player:GetResource(isAttached) == 1 then
        if player:GetVelocity().z ~= 0 then
        player:SetResource(Zpos,1)
        else
        player:SetResource(Zpos,0)
        end
       -- print(player:GetResource(StateId))
    ResyncAnimation(player)
    GetAnimation(player)
    LocateIK(player) -- CHANGED POSITION CAN CAUSE LAG
    p1Keyframe = p1Keyframe + 1
       if(p1Keyframe*KeyframeInterval > p1Length) and player:GetResource(KeyActive) == 0 and p1AnimLenth == 0 then
        if player:GetResource(Zpos) == 0 then
            player:SetResource(StateId,1)
        else
            player:SetResource(StateId,5)
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
    end
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
    --############################# getting list of animations #############################
    p1Weapons = p1Animations_Root:GetChildren()
for weaponIndex, weapon in ipairs(p1Weapons) do
    if weaponIndex == player:GetResource(WeaponId) then
        p1Animations = weapon:GetChildren()
for animIndex, animation in ipairs(p1Animations) do

    --############################# getting bones from animation #######################
if animIndex == player:GetResource(StateId) then
    p1Bones = animation:GetChildren()
    for _, Bone in pairs(p1Bones) do
        if Bone.name=="RHandKeys" then
        p1RHandKeys = Bone:GetChildren()
        end
        if Bone.name=="LHandKeys" then
        p1LHandKeys = Bone:GetChildren()
        end
        if Bone.name=="LLegKeys" then
        p1LLegKeys = Bone:GetChildren()
        end
        if Bone.name=="RLegKeys" then
        p1RLegKeys = Bone:GetChildren()
        end
        if Bone.name=="PelvisKeys" then
        p1PelvisKeys = Bone:GetChildren()
        end
    end

    --############################# getting animation length ############################

p1animationLength = #p1PelvisKeys

    --############################# getting keys for IKs ################################

    for keyIndex, Key in ipairs(p1RHandKeys) do
        if keyIndex == p1Keyframe then
        p1rightHIKs = Key--[animIndex][keyIndex]
        -- p1rightHIKsPos = Key:GetWorldPosition()
        -- p1rightHIKsRot = Key:GetWorldRotation()
        end
    end
    for keyIndex, Key in ipairs(p1LHandKeys) do
        if keyIndex == p1Keyframe then
        p1leftHIKs = Key
        -- p1leftHIKsPos = Key:GetWorldPosition()
        -- p1leftHIKsRot = Key:GetWorldRotation()
        end
    end
    for keyIndex, Key in ipairs(p1LLegKeys) do
        if keyIndex == p1Keyframe then
        p1leftLIKs = Key
        -- p1leftLIKsPos = Key:GetWorldPosition()
        -- p1leftLIKsRot = Key:GetWorldRotation()
        end
    end
    for keyIndex, Key in ipairs(p1RLegKeys) do
        if keyIndex == p1Keyframe then
        p1rightLIKs = Key
        -- p1rightLIKsPos = Key:GetWorldPosition()
        -- p1rightLIKsRot = Key:GetWorldRotation()
        end
    end
    for keyIndex, Key in ipairs(p1PelvisKeys) do
        if keyIndex == p1Keyframe then
        p1pelvisIKs = Key
        -- p1pelvisIKsPos = Key:GetWorldPosition()
        -- p1pelvisIKsRot = Key:GetWorldRotation()
        end
    end
    --####################################################################################
end
end
else
    weapon:Destroy()
end
end
else
    --############################# getting list of animations #############################
    p2Weapons = p2Animations_Root:GetChildren()
for weaponIndex, weapon in ipairs(p2Weapons) do
    if weaponIndex == player:GetResource(WeaponId) then
        p2Animations = weapon:GetChildren()
for animIndex, animation in ipairs(p2Animations) do

    --############################# getting bones from animation #######################
if animIndex == player:GetResource(StateId) then
    p2Bones = animation:GetChildren()
    for _, Bone in pairs(p2Bones) do
        if Bone.name=="RHandKeys" then
        p2RHandKeys = Bone:GetChildren()
        end
        if Bone.name=="LHandKeys" then
        p2LHandKeys = Bone:GetChildren()
        end
        if Bone.name=="LLegKeys" then
        p2LLegKeys = Bone:GetChildren()
        end
        if Bone.name=="RLegKeys" then
        p2RLegKeys = Bone:GetChildren()
        end
        if Bone.name=="PelvisKeys" then
        p2PelvisKeys = Bone:GetChildren()
        end
    end

    --############################# getting animation length ############################

p2animationLength = #p2PelvisKeys

    --############################# getting keys for IKs ################################

    for keyIndex, Key in ipairs(p2RHandKeys) do
        if keyIndex == p2Keyframe then
        p2rightHIKs = Key--[animIndex][keyIndex]
        -- p2rightHIKsPos = Key:GetWorldPosition()
        -- p2rightHIKsRot = Key:GetWorldRotation()
        end
    end
    for keyIndex, Key in ipairs(p2LHandKeys) do
        if keyIndex == p2Keyframe then
        p2leftHIKs = Key
        -- p2leftHIKsPos = Key:GetWorldPosition()
        -- p2leftHIKsRot = Key:GetWorldRotation()
        end
    end
    for keyIndex, Key in ipairs(p2LLegKeys) do
        if keyIndex == p2Keyframe then
        p2leftLIKs = Key
        -- p2leftLIKsPos = Key:GetWorldPosition()
        -- p2leftLIKsRot = Key:GetWorldRotation()
        end
    end
    for keyIndex, Key in ipairs(p2RLegKeys) do
        if keyIndex == p2Keyframe then
        p2rightLIKs = Key
        -- p2rightLIKsPos = Key:GetWorldPosition()
        -- p2rightLIKsRot = Key:GetWorldRotation()
        end
    end
    for keyIndex, Key in ipairs(p2PelvisKeys) do
        if keyIndex == p2Keyframe then
        p2pelvisIKs = Key
        -- p2pelvisIKsPos = Key:GetWorldPosition()
        -- p2pelvisIKsRot = Key:GetWorldRotation()
        end
    end
    --####################################################################################
end
end
else
    weapon:Destroy()
end
end
end
end

function GetAnimation(player)
    if player:GetResource(PNum) == 1 then
    p1rightHIK = p1rightHIKs
    -- p1rightHIK:SetWorldPosition(Vector3.New(p1rightHIKsPos))
    -- p1rightHIK:SetWorldRotation(Rotation.New(p1rightHIKsRot))

    p1leftHIK = p1leftHIKs
    -- p1leftHIK:SetWorldPosition(Vector3.New(p1leftHIKsPos))
    -- p1leftHIK:SetWorldRotation(Rotation.New(p1leftHIKsRot))

    p1leftLIK = p1leftLIKs
    -- p1leftLIK:SetWorldPosition(Vector3.New(p1leftLIKsPos))
    -- p1leftLIK:SetWorldRotation(Rotation.New(p1leftLIKsRot))

    p1rightLIK = p1rightLIKs
    -- p1rightLIK:SetWorldPosition(Vector3.New(p1rightLIKsPos))
    -- p1rightLIK:SetWorldRotation(Rotation.New(p1rightLIKsRot))

    p1pelvisIK = p1pelvisIKs
    -- p1pelvisIK:SetWorldPosition(Vector3.New(p1pelvisIKsPos))
    -- p1pelvisIK:SetWorldRotation(Rotation.New(p1pelvisIKsRot))

    p1Length = p1animationLength*KeyframeInterval
    else
    p2rightHIK = p2rightHIKs
    -- p2rightHIK:SetWorldPosition(Vector3.New(p2rightHIKsPos))
    -- p2rightHIK:SetWorldRotation(Rotation.New(p2rightHIKsRot))

    p2leftHIK = p2leftHIKs
    -- p2leftHIK:SetWorldPosition(Vector3.New(p2leftHIKsPos))
    -- p2leftHIK:SetWorldRotation(Rotation.New(p2leftHIKsRot))

    p2leftLIK = p2leftLIKs
    -- p2leftLIK:SetWorldPosition(Vector3.New(p2leftLIKsPos))
    -- p2leftLIK:SetWorldRotation(Rotation.New(p2leftLIKsRot))

    p2rightLIK = p2rightLIKs
    -- p2rightLIK:SetWorldPosition(Vector3.New(p2rightLIKsPos))
    -- p2rightLIK:SetWorldRotation(Rotation.New(p2rightLIKsRot))

    p2pelvisIK = p2pelvisIKs
    -- p2pelvisIK:SetWorldPosition(Vector3.New(p2pelvisIKsPos))
    -- p2pelvisIK:SetWorldRotation(Rotation.New(p2pelvisIKsRot))

    p2Length = p2animationLength*KeyframeInterval
    end
end

function LocateIK(player)
    if player:GetResource(PNum) == 1 then
    SetIK(p1Pelvis, player, p1pelvisIK)
    SetIK(p1LHand, player, p1leftHIK)
    SetIK(p1RHand, player, p1rightHIK)
    SetIK(p1LFoot, player, p1leftLIK)
    SetIK(p1RFoot, player, p1rightLIK)
    else
    SetIK(p2Pelvis, player, p2pelvisIK)
    SetIK(p2LHand, player, p2leftHIK)
    SetIK(p2RHand, player, p2rightHIK)
    SetIK(p2LFoot, player, p2leftLIK)
    SetIK(p2RFoot, player, p2rightLIK)
    end
end

function SetIK(anchor, player, IK)
    anchor:MoveTo(Vector3.New(IK:GetWorldPosition()),KeyframeInterval/10,false)
    anchor:RotateTo(Rotation.New (IK:GetWorldRotation()),KeyframeInterval/10,false)
    if not anchor.serverUserData.isActivated then
    anchor:Activate(player)
    anchor.serverUserData.isActivated = true
    end
end

--function DebugIK()

    -- CoreDebug.DrawLine(pelvisIK:GetWorldPosition(), Aniplayer:GetWorldPosition(),{duration = KeyframeInterval, thickness = 10})
	 --CoreDebug.DrawLine(rightHIK:GetWorldPosition(), Aniplayer:GetWorldPosition(),{duration = KeyframeInterval, thickness = 10})
	-- CoreDebug.DrawLine(leftHIK:GetWorldPosition(), Aniplayer:GetWorldPosition(),{thickness = 10})
    -- CoreDebug.DrawLine(rightLIK:GetWorldPosition(), Aniplayer:GetWorldPosition(),{thickness = 10})
	-- CoreDebug.DrawLine(leftLIK:GetWorldPosition(), Aniplayer:GetWorldPosition(),{thickness = 10})

--end

Game.playerJoinedEvent:Connect(OnPlayerJoined)