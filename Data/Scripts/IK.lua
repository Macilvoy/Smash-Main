--___________________________________________________________________________________________

--####################################### SYSTEM LOGIC ######################################
--___________________________________________________________________________________________

--   Animations_Root => Animations
--                     |
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

local LHand = script:GetCustomProperty("LHand"):WaitForObject()
local RHand = script:GetCustomProperty("RHand"):WaitForObject()
local Pelvis = script:GetCustomProperty("Pelvis"):WaitForObject()
local LFoot = script:GetCustomProperty("LFoot"):WaitForObject()
local RFoot = script:GetCustomProperty("RFoot"):WaitForObject()
local Animations_Root = script:GetCustomProperty("Animations"):WaitForObject()
local AnimationSystem = script:GetCustomProperty("AnimationSystem"):WaitForObject()


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
local rightHIKs = {}
local leftHIKs = {}
local rightLIKs = {}
local leftLIKs = {}
local pelvisIKs = {}
local rightHIKsPos = {}
local rightHIKsRot = {}
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

local AnimId = 1
local Keyframe = 1
local animationLength = 0
local Length = 1
local KeyframeInterval = script:GetCustomProperty("KeyframeInterval")

--############################# getting list of animations #############################

Animations = Animations_Root:GetChildren()
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

--animationLength = #PelvisKeys[animIndex]
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

-- while(true) do
--     Task.Wait(propFrameInterval)
--     local gameId = nil
--     frameIndex = frameIndex + 1
--     if(frameIndex > propFrames) then
--         frameIndex = 1
--         gameId = propGameId1
--     else
--         if(propGameId1 ~= nil and frameIndex <= 5) then
--             gameId = propGameId1
--         elseif(propGameId2 ~= nil and frameIndex >= 6 and frameIndex <= 10) then
--             gameId = propGameId2
--         elseif(propGameId3 ~= nil and frameIndex >= 11 and frameIndex <= 15) then
--             gameId = propGameId3
--         elseif(propGameId4 ~= nil and frameIndex >= 16 and frameIndex <= 20) then
--             gameId = propGameId4
--         elseif(propGameId5 ~= nil and frameIndex >= 21 and frameIndex <= 25) then
--             gameId = propGameId5
--         elseif(propGameId6 ~= nil and frameIndex >= 26 and frameIndex <= 30) then
--             gameId = propGameId6
--         end
--     end
--     local imageToDisplay = ((frameIndex - 1) % 5) + 1
--     propGamePortalImage:SetSmartProperty("Game ID", gameId)
--     propGamePortalImage:SetSmartProperty("Screenshot Index", imageToDisplay)
-- end
-- local WAYPOINTS = WAYPOINT_ROOT:GetChildren()
-- local WAYPOINT_POSITIONS = {}
-- local WAYPOINT_TO_INDEX = {}

-- local propGamePortalImage = script:GetCustomProperty("GamePortalImage"):WaitForObject()
-- local propFrames = script:GetCustomProperty("Frames")
-- local propFrameInterval = script:GetCustomProperty("FrameInterval")
-- local propGameId1 = script:GetCustomProperty("GameId1")
-- local propGameId2 = script:GetCustomProperty("GameId2")
-- local propGameId3 = script:GetCustomProperty("GameId3")
-- local propGameId4 = script:GetCustomProperty("GameId4")
-- local propGameId5 = script:GetCustomProperty("GameId5")
-- local propGameId6 = script:GetCustomProperty("GameId6")


-- local frameIndex = 1

--[[
ability_extra_21 = W
ability_extra_30 = A
ability_extra_31 = S
ability_extra_32 = D

ability_extra_20 = Q
ability_extra_22 = E
ability_extra_23 = R

ability_extra_33 = F

ability_extra_40 = X

ability_extra_38 = L

ability_extra_17 = Space
ability_extra_19 = TAB
ability_extra_12 = LShift

]]

function OnBindingPressed(player, binding)

    if binding == "ability_extra_5" then
        AnimId = 2
        Keyframe = 1
        Animating = 1
    --    print("yo")
    --    print(AnimId)
     --   print(Keyframe)
     --   print(Animating)
    end

end

function OnBindingReleased(player, binding)

end

-- function OnEndOverlap(trigger, other)
--     local wayPointIndex = GetWayPointIndex(trigger)
--     if API.GetPlayerWayPointIndex(player) ~= wayPointIndex then
--         return
--     end

--     local nextWayPointIndex = WrapWayPointIndex(wayPointIndex+1)
--     local prevWayPointIndex = WrapWayPointIndex(wayPointIndex-1)

--     local wayPointPosition = GetWayPointPosition(wayPointIndex)
--     local nextWayPointPosition = GetWayPointPosition(nextWayPointIndex)
--     local prevWayPointPosition = GetWayPointPosition(prevWayPointIndex)

--     local directionToNextWayPoint = (nextWayPointPosition-wayPointPosition):GetNormalized()
--     local directionToPrevWayPoint = (prevWayPointPosition-wayPointPosition):GetNormalized()

--     local relativePlayerPosition = player:GetWorldPosition() - wayPointPosition
-- end


function SetIK(anchor, animatedPlayer, IK)
    --if hit then
    anchor:MoveTo(Vector3.New(IK:GetWorldPosition()),KeyframeInterval,false)
    anchor:RotateTo(Rotation.New (IK:GetWorldRotation()),KeyframeInterval,false)
   print(IK:GetWorldPosition())
    if not anchor.serverUserData.isActivated then
    anchor:Activate(animatedPlayer)
    anchor.serverUserData.isActivated = true
    end
  --  else
    -- if anchor.clientUserData.isActivated then
    -- anchor:Deactivate(animatedPlayer)
    -- anchor.clientUserData.isActivated = false
    -- end
    --end
end

function LocateIK()
    --GetAnimation()
    -- local locatePelvis = World.Raycast(pelvisIK:GetWorldPosition(), Aniplayer:GetWorldPosition())
    -- SetIK(Pelvis, Aniplayer, locatePelvis, pelvisIK)
    -- local locateLhand = World.Raycast(leftHIK:GetWorldPosition(), Aniplayer:GetWorldPosition())
    -- SetIK(LHand, Aniplayer, locateLhand, leftHIK)
    --local locateRhand = World.Raycast(rightHIK:GetWorldPosition(), Aniplayer:GetWorldPosition())
    SetIK(RHand, Aniplayer, rightHIK)
    -- local locateLleg = World.Raycast(leftLIK:GetWorldPosition(), Aniplayer:GetWorldPosition())
    -- SetIK(LFoot, Aniplayer, locateLleg, leftLIK)
    -- local locateRleg = World.Raycast(rightLIK:GetWorldPosition(), Aniplayer:GetWorldPosition())
    -- SetIK(RFoot, Aniplayer, locateRleg, rightLIK)
end

function GetAnimation()

    rightHIK = rightHIKs
   -- print(rightHIK)
    rightHIK:SetWorldPosition(Vector3.New(rightHIKsPos))
    rightHIK:SetWorldRotation(Rotation.New(rightHIKsRot))
    --print(rightHIK:GetPosition())

    -- leftHIK = leftHIKs
    -- leftHIK:SetWorldPosition(Vector3.New(leftHIKsPos))
    -- leftHIK:SetWorldRotation(Rotation.New(leftHIKsRot))

    -- leftLIK = leftLIKs
    -- leftLIK:SetWorldPosition(Vector3.New(leftLIKsPos))
    -- leftLIK:SetWorldRotation(Rotation.New(leftLIKsRot))

    -- rightLIK = rightLIKs
    -- rightLIK:SetWorldPosition(Vector3.New(rightLIKsPos))
    -- rightLIK:SetWorldRotation(Rotation.New(rightLIKsRot))

    -- pelvisIK = pelvisIKs
    -- pelvisIK:SetWorldPosition(Vector3.New(pelvisIKsPos))
    -- pelvisIK:SetRotation(Rotation.New(pelvisIKsRot))

    Length = animationLength*KeyframeInterval
  --  print(pelvisIK:GetWorldPosition())
   -- print(pelvisIK:GetWorldRotation())
end


function DebugIK()

    -- CoreDebug.DrawLine(pelvisIK:GetWorldPosition(), Aniplayer:GetWorldPosition(),{duration = KeyframeInterval, thickness = 10})
	 CoreDebug.DrawLine(rightHIK:GetWorldPosition(), Aniplayer:GetWorldPosition(),{duration = KeyframeInterval, thickness = 10})
	-- CoreDebug.DrawLine(leftHIK:GetWorldPosition(), Aniplayer:GetWorldPosition(),{thickness = 10})
    -- CoreDebug.DrawLine(rightLIK:GetWorldPosition(), Aniplayer:GetWorldPosition(),{thickness = 10})
	-- CoreDebug.DrawLine(leftLIK:GetWorldPosition(), Aniplayer:GetWorldPosition(),{thickness = 10})

end

function OnPlayerJoined(player)
  --  RHand:AttachToPlayer(player, "right_prop")
   -- RHand:SetRotation(Rotation.New(0, 0, 0))
    player.bindingPressedEvent:Connect(OnBindingPressed)
    player.bindingReleasedEvent:Connect(OnBindingReleased)
    Aniplayer = player
end

function SystemInit(System, player)
    AnimationSystem:Follow(player, player.maxWalkSpeed * 5)
end

function Tick()
    GetAnimation()
    DebugIK()
    --Task.Wait(0.5) --SERVER TICK EMULATOR
--print("tick")
--print(Animating)
Animations = Animations_Root:GetChildren()
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

--animationLength = #PelvisKeys[animIndex]
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

    if Animating == 1 then

   Task.Wait(KeyframeInterval)
     Keyframe = Keyframe + 1
   --  print(Aniplayer:GetWorldPosition())
    -- print(Aniplayer:GetWorldRotation())
    print(AnimId)
    print(Keyframe)
    print(Length)
        -- if(Keyframe*KeyframeInterval > 2*Length) then
        --     Keyframe = 1
        --     AnimId = 1
        --    -- LocateIK()
        --     Animating = 1
        -- else
            LocateIK()
        -- end
    end
end




-- -- Store the world position of each waypoint
-- for index, waypoint in ipairs(WAYPOINTS) do
--     WAYPOINT_POSITIONS[index] = waypoint:GetWorldPosition()
--     WAYPOINT_TO_INDEX[waypoint] = index
-- end

-- function GetWayPoints()
--     return WAYPOINTS
-- end
AnimationSystem.equippedEvent:Connect(SystemInit)
Game.playerJoinedEvent:Connect(OnPlayerJoined)