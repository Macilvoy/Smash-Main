local propTrigger = script:GetCustomProperty("Trigger"):WaitForObject()
local HitTrigger = script:GetCustomProperty("HitTrigger")
local HeavyHitTrigger = script:GetCustomProperty("HeavyHitTrigger")
local StunTrigger = script:GetCustomProperty("StunTrigger")

local directionVector3={}
directionVector3[1]=Vector3.New(0,50000,0)
directionVector3[2]=Vector3.New(0,25000,25000)
directionVector3[3]=Vector3.New(0,0,50000)
directionVector3[4]=Vector3.New(0,-25000,25000)
directionVector3[5]=Vector3.New(0,-50000,0)
directionVector3[6]=Vector3.New(0,-25000,-25000)
directionVector3[7]=Vector3.New(0,0,-50000)
directionVector3[8]=Vector3.New(0,25000,-25000)

local ImpactID={}
ImpactID[1]="unarmed_react_damage"
ImpactID[2]="unarmed_stun_dizzy"
ImpactID[3]="unarmed_stun_electric"

local KeyState={}
for a=1,5 do
	KeyState[a]={}	--0-name / 1-W / 2-A / 3-S / 4-D / 5-E / 6-Q
end
local PlayerState={}
for a=1,5 do
	PlayerState[a]={}	--0-BreakHitState / 1-BreakHitTime
end

function Stun(player)
	player.maxWalkSpeed=0
	player.isCrouchEnabled=false
	player.maxJumpCount=0
	player:ResetVelocity()
end

function ResetMovement(player)
	player.isCrouchEnabled=true
	if player:GetResource("armour")==1 then
		player.maxWalkSpeed=1400
		player.maxJumpCount=3
	elseif player:GetResource("armour")==2 then
		player.maxWalkSpeed=1200
		player.maxJumpCount=3
	else
		player.maxWalkSpeed=1000
		player.maxJumpCount=2
	end
end

function ResetVFX(player)
	local equips=player:GetEquipment()
	for _,obj in pairs(equips) do
		if obj.name=="VFXS" then
			VFX=obj:GetCustomProperty("Fist_Hit_VFX"):WaitForObject()
			VFX:Stop()
			VFX=obj:GetCustomProperty("Trail_VFX"):WaitForObject()
			VFX:Stop()
		end
	end
end



function OnBeginOverlap(theTrigger, player)
	Stun(player)
	for a=0,10 do
		Hit(player,5,0)
		Task.Wait(0.1)
	end
	Hit(player,4,10)
	Task.Wait(0.3)
	player.animationStance="unarmed_stance"
	ResetMovement(player)
	ResetVFX(player)
end

propTrigger.beginOverlapEvent:Connect(OnBeginOverlap)


--===========================================================HitOverlaps===================================================
function ForwardOverlap(theTrigger)
	list=theTrigger:GetOverlappingObjects()
	for _,player in pairs(list) do
		if player and player:IsA("Player") and Object.IsValid(theTrigger) and theTrigger:GetCustomProperty("Owner")~=player.name then
			Stun(player)
			players=Game.GetPlayers()
			for _,obj in pairs(players) do
				if Object.IsValid(theTrigger) and obj.name==theTrigger:GetCustomProperty("Owner") then
					HitSpree(obj, theTrigger:GetCustomProperty("Direction") )
					if Object.IsValid(theTrigger) then theTrigger:Destroy() end
				end
			end
		end
	end
end

function HitOverlap(theTrigger)
	list=theTrigger:GetOverlappingObjects()
	for _,player in pairs(list) do
		if player and player:IsA("Player") and Object.IsValid(theTrigger) and theTrigger:GetCustomProperty("Owner")~=player.name then
			player.animationStance=ImpactID[math.random(3)]
			local equips=player:GetEquipment()
			for _,obj in pairs(equips) do
				if obj.name=="VFXS" then
					VFX=obj:GetCustomProperty("Fist_Hit_VFX"):WaitForObject()
					VFX:Play()
				end
			end
			if Object.IsValid(theTrigger) then theTrigger:Destroy() end
		end
	end
end

function HeavyHitOverlap(theTrigger)
	list=theTrigger:GetOverlappingObjects()
	for _,player in pairs(list) do
		if player and player:IsA("Player") and Object.IsValid(theTrigger) and theTrigger:GetCustomProperty("Owner")~=player.name then
			player:AddImpulse(directionVector3[theTrigger:GetCustomProperty("Direction")]*theTrigger:GetCustomProperty("Power"))
			player.animationStance=ImpactID[math.random(3)]
			local equips=player:GetEquipment()
			for _,obj in pairs(equips) do
				if obj.name=="VFXS" then
					if theTrigger:GetCustomProperty("Power")>5 then
						VFX=obj:GetCustomProperty("Trail_VFX"):WaitForObject()
						VFX:Play()
					end
				end
			end
			if Object.IsValid(theTrigger) then theTrigger:Destroy() end
		end
	end
end

--===========================================================AllHitActions===================================================
---------------------------------------------------------ForwardHit-----------------------------------------------------
function HitSpree(player,direction)
	player:ResetVelocity()
	local equips=player:GetEquipment()
	local PrHit=false
	for a=0,10 do
		Task.Wait(0.1)
	--	|Check for hit reset|	--
		for b=1,5 do
    		if KeyState[b][0]==player.name and PlayerState[b][0] then
    			return
    		end
    	end
    --	|		|	|		|	--	
		for _,obj in pairs(equips) do
			if obj.name=="ANIMS" then
				if PrHit then
					obj:GetCustomProperty("LFastHit"):WaitForObject():Activate()
					PrHit=false
				else
					obj:GetCustomProperty("RFastHit"):WaitForObject():Activate()
					PrHit=true
				end
				Task.Wait(0.05)
				trigger=World.SpawnAsset(HitTrigger)
				trigger:SetNetworkedCustomProperty("Owner",player.name)
				trigger.beginOverlapEvent:Connect(HitOverlap)
				trigger:SetWorldPosition(player:GetWorldPosition())
				if Object.IsValid(trigger) then trigger:SetWorldScale(Vector3.New(2,2,1)) end
			end
		end
	end
	for _,obj in pairs(equips) do
		if obj.name=="ANIMS" then
			obj:GetCustomProperty("StompHit"):WaitForObject():Activate()
		end
	end
	--	|Check for hit reset|	--
		for b=1,5 do
    		if KeyState[b][0]==player.name and PlayerState[b][0] then
    			return
    		end
    	end
    --	|		|	|		|	--	
    Task.Wait(0.1)
	trigger=World.SpawnAsset(HeavyHitTrigger)
	trigger:SetNetworkedCustomProperty("Owner",player.name)
	trigger:SetNetworkedCustomProperty("Direction",direction)
	trigger.beginOverlapEvent:Connect(HeavyHitOverlap)
	trigger:SetWorldPosition(player:GetWorldPosition())
	if Object.IsValid(trigger) then trigger:SetWorldScale(Vector3.New(3,3,1)) end
end

function ForwardHit(player,direction)
	local equips=player:GetEquipment()

	for _,obj in pairs(equips) do
		if obj.name=="ANIMS" then
			if obj:GetCustomProperty("ForwardHit"):WaitForObject():GetCurrentPhase()==AbilityPhase.READY then
				Stun(player)
				Task.Wait(0.1)
				player:AddImpulse(directionVector3[direction]*5)
				
				obj:GetCustomProperty("ForwardHit"):WaitForObject():Activate()
				--	|Check for hit reset|	--
				for b=1,5 do
		    		if KeyState[b][0]==player.name and PlayerState[b][0] then
		    			return
		    		end
		    	end
		    	--	|		|	|		|	--	
				trigger=World.SpawnAsset(StunTrigger)
				trigger:SetNetworkedCustomProperty("Owner",player.name)
				trigger:SetNetworkedCustomProperty("Direction",direction)
				trigger.beginOverlapEvent:Connect(ForwardOverlap)
				trigger:AttachToPlayer(player,"upper_spine")
				trigger:SetWorldPosition(player:GetWorldPosition())
				
				Task.Wait(0.3)
				player:ResetVelocity()
				ResetMovement(player)
			end
		end
	end
end
-------------------------------------------------------------------------------------------------------------------------------

function Tick()
	for b=1,5 do
		if PlayerState[b][0] then
			if time()>=PlayerState[b][1]+1 then
				PlayerState[b][0]=false
			end
		end
	end
end

function OnBindingPressed(player, binding)
    if binding == "ability_2" then
    	for a=1,5 do
    		if KeyState[a][0]==player.name and PlayerState[a][0]==false then
    			KeyState[a][5]=true
    			if KeyState[a][2] then
		        	ForwardHit(player,5)
        		elseif KeyState[a][4] then
        			ForwardHit(player,1)
        		end
        		break
        	end
        end
    end
  	if binding == "ability_extra_30" then
    	for a=1,5 do
    		if KeyState[a][0]==player.name and PlayerState[a][0]==false then
    			KeyState[a][2]=true
    			if KeyState[a][5] then
		        	ForwardHit(player,5)
        		end
        		break
        	end
        end
    end
    if binding == "ability_extra_31" then
    	for a=1,5 do
    		if KeyState[a][0]==player.name and PlayerState[a][0]==false then
    			KeyState[a][3]=true
        		break
        	end
        end
    end
    if binding == "ability_extra_32" then
    	for a=1,5 do
    		if KeyState[a][0]==player.name and PlayerState[a][0]==false then
    			KeyState[a][4]=true
    			if KeyState[a][5] then
		        	ForwardHit(player,1)
        		end
        		break
        	end
        end
    end
end

function OnBindingReleased(player, binding)
    if binding == "ability_2" then
    	for a=1,5 do
    		if KeyState[a][0]==player.name then
    			KeyState[a][5]=false
           		break
        	end
        end
    end
    if binding == "ability_extra_30" then
    	for a=1,5 do
    		if KeyState[a][0]==player.name then
    			KeyState[a][2]=false
           		break
        	end
        end
    end
    if binding == "ability_extra_31" then
    	for a=1,5 do
    		if KeyState[a][0]==player.name then
    			KeyState[a][3]=false
        		break
        	end
        end
    end
    if binding == "ability_extra_32" then
    	for a=1,5 do
    		if KeyState[a][0]==player.name then
    			KeyState[a][4]=false
        		break
        	end
        end
    end
end

function OnPlayerJoined(player)
    player.bindingPressedEvent:Connect(OnBindingPressed)
    player.bindingReleasedEvent:Connect(OnBindingReleased)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)


function OnRoundStart()
	local players=Game.GetPlayers()
	for _,pl in pairs(players) do
		for a=1,5 do
			if KeyState[a][0]==nil then KeyState[a][0]=pl.name for b=1,20 do KeyState[a][b]=false end PlayerState[a][0]=false PlayerState[a][1]=0.0 break end
		end
	end
end
Game.roundStartEvent:Connect(OnRoundStart)