-- local rightHandAnchor = script:GetCustomProperty("RHand"):WaitForObject()
-- local leftHandAnchor = script:GetCustomProperty("LHand"):WaitForObject()
-- local PelvisAnchor = script:GetCustomProperty("Pelvis"):WaitForObject()
-- local propCube = script:GetCustomProperty("Cube"):WaitForObject()
-- local propCurve = script:GetCustomProperty("curve")
-- local forward = 100
-- local side = 30

-- function setIk (anchor, player, hit)
-- --if hit then

-- anchor:MoveTo(hit:GetWorldPosition()+Vector3. New(0,0,25),3,true)
-- anchor:RotateTo(Rotation.New(90, 0, player:GetWorldRotation().z),3,true)
-- if not anchor.serverUserData.isActivated then
-- anchor: Activate(player)
-- anchor.serverUserData.isActivated = true
-- end
-- -- else
-- -- if anchor.serverUserData.isActivated then
-- -- anchor : Deactivate(player)
-- -- anchor.serverUserData.isActivated = false
-- -- end
-- end
-- --end

-- function Tick()
--     --print(propCurve)
-- for _,player in pairs(Game.GetPlayers()) do
-- local leftHandHit = propCube--World.Raycast(player:GetWorldPosition() + player:GetWorldRotation() * Vector3.New(forward, -side, 0) + Vector3.New(0,0,200), player:GetWorldPosition() + player:GetWorldRotation() * Vector3.New(forward, -side, 0))
-- setIk(leftHandAnchor, player, leftHandHit)
-- local rightHandHit = propCube--World.Raycast(player:GetWorldPosition() + player: GetWorldRotation() * Vector3.New(forward, side, 0) + Vector3.New(0,0,200), player:GetWorldPosition() + player:GetWorldRotation() * Vector3.New(forward, side, 0))
-- setIk(rightHandAnchor, player, rightHandHit)
-- local PelvisHit = propCube
-- setIk(PelvisAnchor, player, PelvisHit)
-- end
-- end
