-- --[[
-- ability_extra_21 = W
-- ability_extra_30 = A
-- ability_extra_31 = S
-- ability_extra_32 = D

-- ability_extra_20 = Q
-- ability_extra_22 = E

-- ability_extra_36 = J
-- ability_extra_37 = K

-- ability_extra_23 = R

-- ability_extra_33 = F

-- ability_extra_40 = X

-- ability_extra_38 = L

-- ability_extra_17 = Space
-- ability_extra_19 = TAB
-- ability_extra_12 = LShift

-- ]]

-- local Wkey = "ability_extra_21"
-- local Akey = "ability_extra_30"
-- local Skey = "ability_extra_31"
-- local Dkey = "ability_extra_32"
-- local Jkey = "ability_extra_36"
-- local Kkey = "ability_extra_37"
-- local Rkey = "ability_extra_23"
-- local Spacekey = "ability_extra_17"
-- local TABkey = "ability_extra_19"
-- local LShiftkey = "ability_extra_12"

-- local isAttached = "isAttached"
-- local ColRes = "Color"
-- local StateId = "State"
-- local PrevStateId = "PrevStateId"
-- local Stunned = "Stunned"
-- local Combo = "Combo"
-- local NoControl = "NoControl"
-- local Zpos = "Zpos"
-- local WeaponId = "WeaponId"
-- local KeyActive = "KeyActive"
-- local CapsuleAttached = "CapsuleAttached"
-- local PNum = "PNum"

-- local PlayerCapsule = script:GetCustomProperty("PlayerCapsule")
-- local MovingSpeed = script:GetCustomProperty("MovingSpeed")
-- local JumpPower = script:GetCustomProperty("JumpPower")
-- local Gravity = script:GetCustomProperty("Gravity")
-- local MaxSpeed = script:GetCustomProperty("MaxSpeed")

-- local P1ToFollow = script:GetCustomProperty("p1ToFollow"):WaitForObject()
-- local P2ToFollow = script:GetCustomProperty("p2ToFollow"):WaitForObject()

-- local SmoothCurve = script:GetCustomProperty("SmoothCurve")

-- local PlayerCapsule1 = nil
-- local PlayerCapsule2 = nil
-- local p1Hitbox = nil
-- local p2Hitbox = nil

-- local p1jumpCount=2
-- local p1jumpTime=time()

-- local p1KeyState={}    -- 1-W / 2-S / 3-A / 4-D
-- local p1Impulse={}
-- for a=0,360 do
--     p1Impulse[a]=0
-- end
-- local p1PrevVector=Vector3.ZERO
-- local p1Position=Vector3.ZERO
-- local p1distance = 0

-- local p2jumpCount=2
-- local p2jumpTime=time()

-- local p2KeyState={}    -- 1-W / 2-S / 3-A / 4-D
-- local p2Impulse={}
-- for a=0,360 do
--     p2Impulse[a]=0
-- end
-- local p2PrevVector=Vector3.ZERO
-- local p2Position=Vector3.ZERO
-- local p2distance = 0

-- function SystemInit(player)
--     if player:GetResource(PNum) == 1 then
--         PlayerCapsule1 = World.SpawnAsset(PlayerCapsule, {position = player:GetWorldPosition()-Vector3.New(0,0,0)})
--         p1Hitbox = PlayerCapsule1:GetChildren()[1]
--         if p1Hitbox ~= nil then
--             p1Hitbox.beginOverlapEvent:Connect(EquipingCapsule)
--         end
--     else
--         PlayerCapsule2 = World.SpawnAsset(PlayerCapsule, {position = player:GetWorldPosition()-Vector3.New(0,0,0)})
--         p2Hitbox = PlayerCapsule2:GetChildren()[1]
--         if p2Hitbox ~= nil then
--             p2Hitbox.beginOverlapEvent:Connect(EquipingCapsule)
--         end
--     end
--     player.bindingPressedEvent:Connect(OnBindingPressed)
--     player.bindingReleasedEvent:Connect(OnBindingReleased)
-- end

-- function EquipingCapsule(trigger, player)
--     if player and player:IsA("Player") then
--         if player:GetResource(CapsuleAttached) == 0 then
--             -- if trigger == p1Hitbox then
--             --     player:AttachToCoreObject(PlayerCapsule1)
--             -- else
--             --     player:AttachToCoreObject(PlayerCapsule2)
--             -- end
--             player:AddResource(CapsuleAttached,1)
--             else
--                 return
--         end
--     end
-- end

-- function OnBindingPressed(player, binding)

--     --            D E B A G
--     ----------------------------------------------
--         if binding == "ability_extra_16" then -- ENTER

--         end
--         if binding == "ability_extra_1" then
--             print(player:GetResource(Zpos))
--         end
--         if binding == "ability_extra_2" then

--         end
--         if binding == "ability_extra_3" then
    
--         end
--         if binding == "ability_extra_4" then
    
--         end
--     -----------------------------------------------
--         if binding == Wkey then -- W

--         end
--         if binding == Skey then -- S

--         end
--         if binding == Akey then -- A
--                 if player:GetResource(PNum) == 1 then
--                 p1KeyState[3]=true
--                 else
--                 p2KeyState[3]=true
--                 end
--         end
--         if binding == Dkey then -- D
--                 if player:GetResource(PNum) == 1 then
--                 p1KeyState[4]=true
--                 else
--                 p2KeyState[4]=true
--                 end
--         end
--         if binding == Jkey then -- J
    
--         end
--         if binding == Kkey then -- K
    
--         end
--         if binding == Rkey then -- R
    
--         end
--         if binding == Spacekey then -- SPACE
--             if player:GetResource(PNum) == 1 then
--                 if p1jumpCount>0 and time()>p1jumpTime+0.5 then
--                 p1Impulse[90]=p1Impulse[90]+JumpPower
--                 PlayerCapsule1:SetWorldPosition(Vector3.New(PlayerCapsule1:GetWorldPosition().x,PlayerCapsule1:GetWorldPosition().y,PlayerCapsule1:GetWorldPosition().z+50))
--                 player:SetResource(Zpos,1)
--                 if p1PrevVector.z<0 then
--                     p1PrevVector=Vector3.New(p1PrevVector.x,p1PrevVector.y,0)
--                 end
--                 p1jumpCount=p1jumpCount-1
--                 p1jumpTime=time()
--                 end
--             else
--                 if p2jumpCount>0 and time()>p2jumpTime+0.5 then
--                 p2Impulse[90]=p2Impulse[90]+JumpPower
--                 PlayerCapsule2:SetWorldPosition(Vector3.New(PlayerCapsule2:GetWorldPosition().x,PlayerCapsule2:GetWorldPosition().y,PlayerCapsule2:GetWorldPosition().z+50))
--                 player:SetResource(Zpos,1)
--                 if p2PrevVector.z<0 then
--                     p2PrevVector=Vector3.New(p2PrevVector.x,p2PrevVector.y,0)
--                 end
--                 p2jumpCount=p2jumpCount-1
--                 p2jumpTime=time()
--                 end
--             end
--         end
--         if binding == LShiftkey then -- LSHIFT
    
--         end
-- end

-- function OnBindingReleased(player, binding)

--     --            D E B A G
--     ----------------------------------------------
--     if binding == "ability_extra_16" then -- ENTER

--     end
--     if binding == "ability_extra_1" then

--     end
--     if binding == "ability_extra_2" then

--     end
--     if binding == "ability_extra_3" then

--     end
--     if binding == "ability_extra_4" then

--     end
-- -----------------------------------------------
--     if binding == Wkey then -- W

--     end
--     if binding == Skey then -- S

--     end
--     if binding == Akey then -- A
--             if player:GetResource(PNum) == 1 then
--             p1KeyState[3]=false
--             else
--             p2KeyState[3]=false
--             end
--     end
--     if binding == Dkey then -- D
--             if player:GetResource(PNum) == 1 then
--             p1KeyState[4]=false
--             else
--             p2KeyState[4]=false
--             end
--     end
--     if binding == Jkey then -- J

--     end
--     if binding == Kkey then -- K

--     end
--     if binding == Rkey then -- R

--     end
--     if binding == Spacekey then -- SPACE

--     end
--     if binding == LShiftkey then -- LSHIFT

--     end

-- end

-- -- T I M E R 
-- local UpdatemilsecondTask = Task.Spawn(function()
--     for _,player in ipairs(AllPlayers) do
--         if player:GetResource(PNum) == 1 then
--             if player:GetResource(CapsuleAttached) == 1 then
--     -- local distance=PlayerCapsule1:GetWorldPosition()-player:GetWorldPosition()
--     -- local multiply = 0
    
--     -- if distance.size > 150 then
--     --     multiply = 5
--     -- else
--     --     multiply = SmoothCurve:GetValue(distance.size)
--     -- end
--     -- --print(distance.size)
--     -- print(multiply)
--     --     player:SetVelocity((player:GetVelocity()+distance)*multiply)
-- end
-- end
-- end
-- end)
-- UpdatemilsecondTask.repeatInterval = 0.01
-- UpdatemilsecondTask.repeatCount = -1
-- ------------------------------------------------------


-- function Tick(MyTick)
--     AllPlayers = Game.GetPlayers()
--     for _,player in ipairs(AllPlayers) do
-- if player:GetResource(PNum) == 1 then
--     if player:GetResource(CapsuleAttached) == 1 then
--         -- if player:GetResource(CapsuleAttached) == 1 then
--     --     if player:GetVelocity().z ~= 0 then
--     --         player:SetResource(Zpos,1)
--     --     else
--     --         player:SetResource(Zpos,0)
--     --     end
--     -- end
--     p1Position=Vector3.ZERO
--     UpdateImpulse(player)
--     for StepRotation=0,360 do
--             p1Position=p1Position+Vector3.New(0, p1Impulse[StepRotation]*math.cos(math.rad(StepRotation)), p1Impulse[StepRotation]*math.sin(math.rad(StepRotation)) )
--             p1Impulse[StepRotation]=0
--     end
--     if player:GetResource(Zpos) == 0 and p1Position.z<0 then
--         p1Position=Vector3.New(0,p1Position.y,0)
--     end
--     p1PrevVector=p1PrevVector+p1Position
--     p1distance=math.sqrt(p1PrevVector.y^2+p1PrevVector.z^2)
--     if player:GetResource(Zpos) == 0  then
--         if p1distance>0 then
--             if p1distance<MaxSpeed then
--                 PlayerCapsule1:MoveTo(PlayerCapsule1:GetWorldPosition()+Vector3.New(0,p1PrevVector.y,p1PrevVector.z),0.15)
--                 p1PrevVector=Vector3.ZERO
--             else
--                 PlayerCapsule1:MoveTo(PlayerCapsule1:GetWorldPosition()+Vector3.New(0,p1PrevVector.y/p1distance*MaxSpeed,p1PrevVector.z/p1distance*MaxSpeed),0.15)
--                 p1PrevVector=p1PrevVector-Vector3.New(0,p1PrevVector.y/p1distance*MaxSpeed,p1PrevVector.z/p1distance*MaxSpeed)
--             end
--         else
--             p1PrevVector=Vector3.ZERO
--         end
--     else
--         if p1distance>0 then
--             if p1distance<MaxSpeed then
--                 PlayerCapsule1:MoveTo(PlayerCapsule1:GetWorldPosition()+Vector3.New(0,p1PrevVector.y,p1PrevVector.z),0.15)
--             else
--                 PlayerCapsule1:MoveTo(PlayerCapsule1:GetWorldPosition()+Vector3.New(0,p1PrevVector.y/p1distance*MaxSpeed,p1PrevVector.z/p1distance*MaxSpeed),0.15)
--             end
--         end
--     end
--     local distance=PlayerCapsule1:GetWorldPosition()-player:GetWorldPosition()
--     local multiply = 0
    
--     if distance.size > 150 then
--         multiply = 5
--     else
--         multiply = SmoothCurve:GetValue(distance.size)
--     end
--     --print(distance.size)
--     --print(multiply)
--         player:SetVelocity(player:GetVelocity()+distance*multiply)
--         --print(player:GetVelocity())
-- end
-- else
--         -- if player:GetResource(CapsuleAttached) == 1 then
--     --     if player:GetVelocity().z ~= 0 then
--     --         player:SetResource(Zpos,1)
--     --     else
--     --         player:SetResource(Zpos,0)
--     --     end
--     -- end
--     if player:GetResource(CapsuleAttached) == 1 then
--     p2Position=Vector3.ZERO
--     UpdateImpulse(player)
--     for StepRotation=0,360 do
--             p2Position=p2Position+Vector3.New(0, p2Impulse[StepRotation]*math.cos(math.rad(StepRotation)), p2Impulse[StepRotation]*math.sin(math.rad(StepRotation)) )
--             p2Impulse[StepRotation]=0
--     end
--     if player:GetResource(Zpos) == 0 and p2Position.z<0 then
--         p2Position=Vector3.New(0,p2Position.y,0)
--     end
--     p2PrevVector=p2PrevVector+p2Position
--     p2distance=math.sqrt(p2PrevVector.y^2+p2PrevVector.z^2)
--     if player:GetResource(Zpos) == 0  then
--         if p2distance>0 then
--             if p2distance<MaxSpeed then
--                 PlayerCapsule2:MoveTo(PlayerCapsule2:GetWorldPosition()+Vector3.New(0,p2PrevVector.y,p2PrevVector.z),0.15)
--                 p2PrevVector=Vector3.ZERO
--             else
--                 PlayerCapsule2:MoveTo(PlayerCapsule2:GetWorldPosition()+Vector3.New(0,p2PrevVector.y/p2distance*MaxSpeed,p2PrevVector.z/p2distance*MaxSpeed),0.15)
--                 p2PrevVector=p2PrevVector-Vector3.New(0,p2PrevVector.y/p2distance*MaxSpeed,p2PrevVector.z/p2distance*MaxSpeed)
--             end
--         else
--             p2PrevVector=Vector3.ZERO
--         end
--     else
--         if p2distance>0 then
--             if p2distance<MaxSpeed then
--                 PlayerCapsule2:MoveTo(PlayerCapsule2:GetWorldPosition()+Vector3.New(0,p2PrevVector.y,p2PrevVector.z),0.15)
--             else
--                 PlayerCapsule2:MoveTo(PlayerCapsule2:GetWorldPosition()+Vector3.New(0,p2PrevVector.y/p2distance*MaxSpeed,p2PrevVector.z/p2distance*MaxSpeed),0.15)
--             end
--         end
--     end
--     P2ToFollow:Follow(PlayerCapsule2,100000000 , 1)
--     player:SetWorldPosition(P2ToFollow:GetWorldPosition())
-- end
-- end
-- end
-- end

-- function UpdateImpulse(player)
--     if player:GetResource(PNum) == 1 then
--         player:SetResource(Zpos,1)
--     for _,obj in pairs (p1Hitbox:GetOverlappingObjects()) do
--         if obj.name=="Ground" then
--             if PlayerCapsule1:GetWorldPosition().z-100<(obj:GetWorldPosition().z+(obj:GetWorldScale().z*100)/2)-1 then
--                 PlayerCapsule1:SetWorldPosition(Vector3.New(PlayerCapsule1:GetWorldPosition().x,PlayerCapsule1:GetWorldPosition().y,(obj:GetWorldPosition().z+(obj:GetWorldScale().z*100)/2)+99))
--             end
--             p1jumpCount=2
--             player:SetResource(Zpos,0)
--             break
--         else
--             player:SetResource(Zpos,1)
--         end
--     end
--     if p1KeyState[3]==true then
--         if player:GetResource(Zpos) == 1 then
--             p1Impulse[180]=p1Impulse[180]+(MovingSpeed/50)
--         else
--             p1Impulse[180]=p1Impulse[180]+MovingSpeed
--         end
--     elseif p1KeyState[4]==true then
--         if player:GetResource(Zpos) == 1 then
--             p1Impulse[0]=p1Impulse[0]+(MovingSpeed/50)
--         else
--             p1Impulse[0]=p1Impulse[0]+MovingSpeed
--         end
--     end
--     if player:GetResource(Zpos) == 1 then
--         p1Impulse[270]=p1Impulse[270]+Gravity
--     else
--         p1Impulse[270]=0
--     end
-- else
--     player:SetResource(Zpos,1)
--     for _,obj in pairs (p2Hitbox:GetOverlappingObjects()) do
--         if obj.name=="Ground" then
--             if PlayerCapsule2:GetWorldPosition().z-100<(obj:GetWorldPosition().z+(obj:GetWorldScale().z*100)/2)-1 then
--                 PlayerCapsule2:SetWorldPosition(Vector3.New(PlayerCapsule2:GetWorldPosition().x,PlayerCapsule2:GetWorldPosition().y,(obj:GetWorldPosition().z+(obj:GetWorldScale().z*100)/2)+99))
--             end
--             p2jumpCount=2
--             player:SetResource(Zpos,0)
--             break
--         else
--             player:SetResource(Zpos,1)
--         end
--     end
--     if p2KeyState[3]==true then
--         if player:GetResource(Zpos) == 1 then
--             p2Impulse[180]=p2Impulse[180]+(MovingSpeed/50)
--         else
--             p2Impulse[180]=p2Impulse[180]+MovingSpeed
--         end
--     elseif p2KeyState[4]==true then
--         if player:GetResource(Zpos) == 1 then
--             p2Impulse[0]=p2Impulse[0]+(MovingSpeed/50)
--         else
--             p2Impulse[0]=p2Impulse[0]+MovingSpeed
--         end
--     end
--     if player:GetResource(Zpos) == 1 then
--         p2Impulse[270]=p2Impulse[270]+Gravity
--     else
--         p2Impulse[270]=0
--     end
-- end
-- end

-- Events.Connect("Movement",SystemInit)