-- local LHand = script:GetCustomProperty("LHand"):WaitForObject()
-- local RHand = script:GetCustomProperty("RHand"):WaitForObject()
-- local Pelvis = script:GetCustomProperty("Pelvis"):WaitForObject()
-- local LFoot = script:GetCustomProperty("LFoot"):WaitForObject()
-- local RFoot = script:GetCustomProperty("RFoot"):WaitForObject()
-- local Animations_Root = script:GetCustomProperty("Animations"):WaitForObject()

-- local Animations = {}
-- local Bones = {}
-- local RHandKeys = {}
-- local LHandKeys = {}
-- local LLegKeys = {}
-- local RLegKeys = {}
-- local PelvisKeys = {}
-- local rightHIK = nil
-- local leftHIK = nil
-- local rightLIK = nil
-- local leftLIK = nil
-- local pelvisIK = nil
-- local rightHIKs = {}
-- local leftHIKs = {}
-- local rightLIKs = {}
-- local leftLIKs = {}
-- local pelvisIKs = {}
-- local rightHIKsPos = {}
-- local rightHIKsRot = {}
-- local leftHIKsPos = {}
-- local leftHIKsRot = {}
-- local rightLIKsPos = {}
-- local rightLIKsRot = {}
-- local leftLIKsPos = {}
-- local leftLIKsRot = {}
-- local pelvisIKsPos = {}
-- local pelvisIKsRot = {}

-- local Aniplayer = nil

-- Animations = Animations_Root:GetChildren()
-- for animIndex, animation in ipairs(Animations) do
-- Bones = animation:GetChildren()
--     for _, Bone in pairs(Bones) do
--         if Bone.name=="RHandKeys" then
--         RHandKeys = Bone:GetChildren()
--         end
--         if Bone.name=="LHandKeys" then
--         LHandKeys = Bone:GetChildren()
--         end
--         if Bone.name=="LLegKeys" then
--         LLegKeys = Bone:GetChildren()
--         end
--         if Bone.name=="RLegKeys" then
--         RLegKeys = Bone:GetChildren()
--         end
--         if Bone.name=="PelvisKeys" then
--         PelvisKeys = Bone:GetChildren()
--         end
--     end
--     for keyIndex, Key in ipairs(RHandKeys) do
--         rightHIKs[animIndex][keyIndex] = Key
--         rightHIKsPos[animIndex][keyIndex] = Key:GetPosition()
--         rightHIKsRot[animIndex][keyIndex] = Key:GetRotation()
--     end
--     for keyIndex, Key in ipairs(LHandKeys) do
--         leftHIKs[animIndex][keyIndex] = Key
--         leftHIKsPos[animIndex][keyIndex] = Key:GetPosition()
--         leftHIKsRot[animIndex][keyIndex] = Key:GetRotation()
--     end
--     for keyIndex, Key in ipairs(LLegKeys) do
--         leftLIKs[animIndex][keyIndex] = Key
--         leftLIKsPos[animIndex][keyIndex] = Key:GetPosition()
--         leftLIKsRot[animIndex][keyIndex] = Key:GetRotation()
--     end
--     for keyIndex, Key in ipairs(RLegKeys) do
--         rightLIKs[animIndex][keyIndex] = Key
--         rightLIKsPos[animIndex][keyIndex] = Key:GetPosition()
--         rightLIKsRot[animIndex][keyIndex] = Key:GetRotation()
--     end
--     for keyIndex, Key in ipairs(PelvisKeys) do
--         pelvisIKs[animIndex][keyIndex] = Key
--         pelvisIKsPos[animIndex][keyIndex] = Key:GetPosition()
--         pelvisIKsRot[animIndex][keyIndex] = Key:GetRotation()
--     end
-- end

-- function GetAnimation(AnimId,Keyframe)

--     rightHIK = rightHIKs[AnimId][Keyframe]
--     rightHIK.SetPosition = Vector3.New(rightHIKsPos[AnimId][Keyframe])
--     rightHIK.SetRotation = Rotation.New(rightHIKsRot[AnimId][Keyframe])

--     leftHIK = leftHIKs[AnimId][Keyframe]
--     leftHIK.SetPosition = Vector3.New(leftHIKsPos[AnimId][Keyframe])
--     leftHIK.SetRotation = Rotation.New(leftHIKsRot[AnimId][Keyframe])

--     leftLIK = rightHIKs[AnimId][Keyframe]
--     leftLIK.SetPosition = Vector3.New(leftLIKsPos[AnimId][Keyframe])
--     leftLIK.SetRotation = Rotation.New(leftLIKsRot[AnimId][Keyframe])

--     rightLIK = rightHIKs[AnimId][Keyframe]
--     rightLIK.SetPosition = Vector3.New(rightLIKsPos[AnimId][Keyframe])
--     rightLIK.SetRotation = Rotation.New(rightLIKsRot[AnimId][Keyframe])

--     pelvisIK = rightHIKs[AnimId][Keyframe]
--     pelvisIK.SetPosition = Vector3.New(pelvisIKsPos[AnimId][Keyframe])
--     pelvisIK.SetRotation = Rotation.New(pelvisIKsRot[AnimId][Keyframe])

-- end

-- -- local WAYPOINTS = WAYPOINT_ROOT:GetChildren()
-- -- local WAYPOINT_POSITIONS = {}
-- -- local WAYPOINT_TO_INDEX = {}

-- -- local propGamePortalImage = script:GetCustomProperty("GamePortalImage"):WaitForObject()
-- -- local propFrames = script:GetCustomProperty("Frames")
-- -- local propFrameInterval = script:GetCustomProperty("FrameInterval")
-- -- local propGameId1 = script:GetCustomProperty("GameId1")
-- -- local propGameId2 = script:GetCustomProperty("GameId2")
-- -- local propGameId3 = script:GetCustomProperty("GameId3")
-- -- local propGameId4 = script:GetCustomProperty("GameId4")
-- -- local propGameId5 = script:GetCustomProperty("GameId5")
-- -- local propGameId6 = script:GetCustomProperty("GameId6")


-- local frameIndex = 1

-- function OnPlayerJoined(player)
--     player.bindingPressedEvent:Connect(OnBindingPressed)
--     player.bindingReleasedEventEvent:Connect(OnBindingReleased)
-- end

-- function OnBindingPressed(player, binding)

-- end

-- function OnBindingReleased(player, binding)

-- end

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


-- function SetIK(anchor, Driver, hit, IK)
--     if hit then
--     anchor:SetWorldPosition(hit:GetImpactPosition())
--     anchor:SetWorldRotation(Rotation.New (IK:GetWorldRotation()))
--     if not anchor.clientUserData.isActivated then
--     anchor:Activate(Driver)
--     anchor.clientUserData.isActivated = true
--     end
--     else
--     if anchor.clientUserData.isActivated then
--     anchor:Deactivate(Driver)
--     anchor.clientUserData.isActivated = false
--     end
--     end
-- end

-- function Tick()
--     GetAnimation()
--     local locatePelvis = World.Raycast(pelvisIK:GetWorldPosition(), Aniplayer:GetWorldPosition())
--     SetIK(Pelvis, Aniplayer, locatePelvis, pelvisIK)
--     local locateLhand = World.Raycast(leftHIK:GetWorldPosition(), Aniplayer:GetWorldPosition())
--     SetIK(LHand, Aniplayer, locateLhand, leftHIK)
--     local locateRhand = World.Raycast(rightHIK:GetWorldPosition(), Aniplayer:GetWorldPosition())
--     SetIK(RHand, Aniplayer, locateRhand, rightHIK)
--     local locateLleg = World.Raycast(leftLIK:GetWorldPosition(), Aniplayer:GetWorldPosition())
--     SetIK(LFoot, Aniplayer, locateLleg, leftLIK)
--     local locateRleg = World.Raycast(rightLIK:GetWorldPosition(), Aniplayer:GetWorldPosition())
--     SetIK(RFoot, Aniplayer, locateRleg, rightLIK)
-- end

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


-- -- Store the world position of each waypoint
-- for index, waypoint in ipairs(WAYPOINTS) do
--     WAYPOINT_POSITIONS[index] = waypoint:GetWorldPosition()
--     WAYPOINT_TO_INDEX[waypoint] = index
-- end

-- function GetWayPoints()
--     return WAYPOINTS
-- end

-- Game.playerJoinedEvent:Connect(OnPlayerJoined)