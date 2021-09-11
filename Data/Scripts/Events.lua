--local propGeo = script:GetCustomProperty("Geo"):WaitForObject()
--local propHeavyHitTrigger = script:GetCustomProperty("HeavyHitTrigger"):WaitForObject()
--local propExplosionVFX = script:GetCustomProperty("ExplosionVFX"):WaitForObject()


--local propSE1_VFX = script:GetCustomProperty("SE1_VFX"):WaitForObject()
--local propSE1_VFX2 = script:GetCustomProperty("SE1_VFX2"):WaitForObject()
--local propADE1_VFX = script:GetCustomProperty("ADE1_VFX"):WaitForObject()
--local propSE2_VFX = script:GetCustomProperty("SE2_VFX"):WaitForObject()

local propInvWall = script:GetCustomProperty("InvWall"):WaitForObject()	-- need to prevent player access to death triggers during lobby time (turn off collision on round start)
local StorageKey = script:GetCustomProperty("StorageKey")

local ANIM_API = require(script:GetCustomProperty("ANIM_API"))
local propANIMS = script:GetCustomProperty("ANIMS")
local propVFXS = script:GetCustomProperty("VFXS")
local propHitbox = script:GetCustomProperty("Hitbox")

--local propTrigger = script:GetCustomProperty("Trigger"):WaitForObject()
local Flash = script:GetCustomProperty("Flash")
local HitTrigger = script:GetCustomProperty("HitTrigger")
local HeavyHitTrigger = script:GetCustomProperty("HeavyHitTrigger")
local StunTrigger = script:GetCustomProperty("StunTrigger")
local PhysicGranade = script:GetCustomProperty("PhysicGranade")
local PhysicMine = script:GetCustomProperty("PhysicMine")
local Flare = script:GetCustomProperty("Flare")

local directionVector3={}
directionVector3[1]=Vector3.New(0,295,50)--(0,50000,0)
directionVector3[2]=Vector3.New(0,200,200)
directionVector3[3]=Vector3.New(0,50,295)
directionVector3[4]=Vector3.New(0,-200,200)
directionVector3[5]=Vector3.New(0,-295,50)
directionVector3[6]=Vector3.New(0,-200,-200)
directionVector3[7]=Vector3.New(0,50,-295)
directionVector3[8]=Vector3.New(0,200,-200)

local ImpactID={}
--ImpactID[1]="unarmed_react_damage"
ImpactID[1]="unarmed_stun_dizzy"
ImpactID[2]="unarmed_stun_electric"

local KeyState={}
for a=1,5 do
	KeyState[a]={}	--0-name / 1-W / 2-A / 3-S / 4-D / 5-E / 6-Q
end
local PlayerState={}
for a=1,5 do
	PlayerState[a]={}	--0-BreakHitState / 1-BreakHitTime / 2-BasicDownHit state / 3-BasicUpHit state / 4-BasicUpHit time / 5- player hp / 6- weapon Id / 7- playerHitbox (to pick items) / 8- DeathOverlapTime
end
local PlayerStats={}
for a=1,5 do
	PlayerStats[a]={}	--0- Deaths	/ 1- Damage dealt
end

function Stun(player)
	player.maxWalkSpeed=0
	player.isCrouchEnabled=false
	player.maxJumpCount=0
	player:ResetVelocity()
end

function StunMovement(player)
	player.maxWalkSpeed=0
	player.isCrouchEnabled=false
	player.maxJumpCount=0
end

function ResetMovement(player)
	player.isCrouchEnabled=true
	if player:GetResource("armour")==1 then
		player.maxWalkSpeed=1100
		player.maxJumpCount=3
	elseif player:GetResource("armour")==2 then
		player.maxWalkSpeed=1000
		player.maxJumpCount=3
	else
		player.maxWalkSpeed=900
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

function ResetWeapon(player)
	for _,obj in pairs(player:GetAttachedObjects()) do
		if obj.name=="Weapon" then
			obj:Destroy()
			for b=1,5 do
				if KeyState[b][0]==player.name then
					PlayerState[b][6]=0
					break
				end
			end
		elseif obj.name=="LPW1" then
			obj:Destroy()
		elseif obj.name=="RPW1" then
			obj:Destroy()
		elseif obj.name=="DHW2" then
			obj:Destroy()
		elseif obj.name=="RPW3" then
			obj:Destroy()
		elseif obj.name=="RPW4" then
			obj:Destroy()
		elseif obj.name=="RPW5" then
			obj:Destroy()
		end
	end
end

function ResetAnim(player)
	for _,obj in pairs(player:GetEquipment()) do
		if obj.name=="VFXS" then
			local LHA=obj:GetCustomProperty("LHAnchor"):WaitForObject()
			local RHA=obj:GetCustomProperty("RHAnchor"):WaitForObject()
			local LFA=obj:GetCustomProperty("LFAnchor"):WaitForObject()
			local RFA=obj:GetCustomProperty("RFAnchor"):WaitForObject()
			local PA=obj:GetCustomProperty("PAnchor"):WaitForObject()
			LHA:Deactivate()
			RHA:Deactivate()
			LFA:Deactivate()
			RFA:Deactivate()
			PA:Deactivate()
		end
	end
	for b=1,5 do
    	if KeyState[b][0]==player.name then
    		if PlayerState[b][6]==0 then
				player.animationStance="unarmed_stance"
			elseif PlayerState[b][6]==2 then
				player.animationStance="2hand_melee_stance"
			else
				player.animationStance="unarmed_stance"
			end
			break
		end
    end
end


--[[
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

propTrigger.beginOverlapEvent:Connect(OnBeginOverlap)		Old stuff
]]
function HitReset(NickName)
	for b=1,5 do
    	if KeyState[b][0]==NickName and PlayerState[b][0] then
    		return
		end
    end
end

function RoundStartCutscene()
	local playersAmount=0
	for a,player in pairs(Game.GetPlayers()) do
		Stun(player)
		local string="Spawn"..a
		player:SetWorldPosition(script:GetCustomProperty(string):WaitForObject():GetWorldPosition())
		obj=World.SpawnAsset(propANIMS)
		obj:Equip(player)
		obj=World.SpawnAsset(propVFXS)
		obj:Equip(player)
		playersAmount=a
	end
	Task.Wait(3+playersAmount*2.5)
	for _,player in pairs(Game.GetPlayers()) do
		ResetMovement(player)
	end
end

function RoundEndCutscene()
	local playersAmount=0
	for a,player in pairs(Game.GetPlayers()) do
		Stun(player)

		local Table = Storage.GetSharedPlayerData(StorageKey, player)
		--for _,res in pairs(Table) do
		--	print(res)
		--end
		if Table["PlayedGames"]~=nil then
			Table["PlayedGames"]=Table["PlayedGames"]+1
			Table["TotalDeath"]=Table["TotalDeath"]+PlayerStats[a][0]
			Table["TotalDamage"]=Table["TotalDamage"]+PlayerStats[a][1]
		else
			Table["PlayedGames"]=0
			Table["TotalDeath"]=0
			Table["TotalDamage"]=0
		end
		Storage.SetSharedPlayerData(StorageKey, player, Table)
		
		local string="Spawn"..a
		player:SetWorldPosition(script:GetCustomProperty(string):WaitForObject():GetWorldPosition())
		local Top={}
		for a=1, 4 do
			Top[a]=a
		end
		for a=1, 4 do
			for b=1, 3 do--PlayerState[a][0]
				if PlayerStats[Top[b+1]][0]~=nil and PlayerStats[Top[b+1]][0]~=-1 then
					if PlayerStats[Top[b]][0]>PlayerStats[Top[b+1]][0] then
						Top[b],Top[b+1]=Top[b+1],Top[b]
					elseif PlayerState[Top[b]][5]>PlayerState[Top[b+1]][5] then
						Top[b],Top[b+1]=Top[b+1],Top[b]
					end
				end
			end
		end
		for a=1, 4 do
			if KeyState[Top[a]][0]~=nil and KeyState[Top[a]][0]~="" then
				--print(a.."- "..KeyState[Top[a]][0])
				Events.BroadcastToAllPlayers("UpdateResult",a,KeyState[Top[a]][0],PlayerStats[Top[a]][0],PlayerStats[Top[a]][1])
			end
		end

	end
end

function EquipWeapon(player,theTrigger)
	ResetWeapon(player)
	Task.Wait(0.1)
	for b=1,5 do
    	if KeyState[b][0]==player.name then
			theTrigger:SetNetworkedCustomProperty("isEquipped",true)
			theTrigger.parent:AttachToPlayer(player, "nameplate")
			theTrigger.parent:SetWorldPosition(player:GetWorldPosition())
			theTrigger.parent:SetWorldRotation(player:GetWorldRotation())
			player.animationStance="unarmed_bind_pose"
			if theTrigger:GetCustomProperty("ID")==1 then
				for _,obj in pairs(theTrigger.parent:GetChildren()) do
					if obj.name=="RPW1" then
						obj:AttachToPlayer(player, "right_prop")
						obj:SetPosition(Vector3.ZERO)
						obj:SetRotation(Rotation.ZERO)
					end
					if obj.name=="LPW1" then
						obj:AttachToPlayer(player, "left_prop")
						obj:SetPosition(Vector3.ZERO)
						obj:SetRotation(Rotation.ZERO)
					end
				end
			end
			if theTrigger:GetCustomProperty("ID")==2 then
				for _,obj in pairs(theTrigger.parent:GetChildren()) do
					if obj.name=="DHW2" then
						obj:AttachToPlayer(player, "right_prop")
						obj:SetPosition(Vector3.ZERO)
						obj:SetRotation(Rotation.ZERO)
					end
				end
			end
			if theTrigger:GetCustomProperty("ID")==3 then
				for _,obj in pairs(theTrigger.parent:GetChildren()) do
					if obj.name=="RPW3" then
						obj:AttachToPlayer(player, "right_prop")
						obj:SetPosition(Vector3.ZERO)
						obj:SetRotation(Rotation.ZERO)
					end
				end
			end
			if theTrigger:GetCustomProperty("ID")==4 then
				for _,obj in pairs(theTrigger.parent:GetChildren()) do
					if obj.name=="RPW4" then
						obj:AttachToPlayer(player, "right_prop")
						obj:SetPosition(Vector3.ZERO)
						obj:SetRotation(Rotation.ZERO)
					end
				end
			end
			if theTrigger:GetCustomProperty("ID")==5 then
				for _,obj in pairs(theTrigger.parent:GetChildren()) do
					if obj.name=="RPW5" then
						obj:AttachToPlayer(player, "right_prop")
						obj:SetPosition(Vector3.ZERO)
						obj:SetRotation(Rotation.ZERO)
					end
				end
			end
			PlayerState[b][6]=theTrigger:GetCustomProperty("ID")
			ResetAnim(player)
			break
		end
	end
end

function PlayWeaponAnim(player,weaponID,anim,frameID)
	for _,obj in pairs(player:GetEquipment()) do
		if obj.name=="VFXS" then
			local LHA=obj:GetCustomProperty("LHAnchor"):WaitForObject()
			local RHA=obj:GetCustomProperty("RHAnchor"):WaitForObject()
			local LFA=obj:GetCustomProperty("LFAnchor"):WaitForObject()
			local RFA=obj:GetCustomProperty("RFAnchor"):WaitForObject()
			local PA=obj:GetCustomProperty("PAnchor"):WaitForObject()
			if frameID==1 then
				LHA:SetPosition(ANIM_API.WEAPONS[weaponID][anim][frameID]["LHAnchor"]["Position"])
				LHA:SetRotation(ANIM_API.WEAPONS[weaponID][anim][frameID]["LHAnchor"]["Rotation"])
				LHA:SetAimOffset(ANIM_API.WEAPONS[weaponID][anim][frameID]["LHAnchor"]["Offset"])
				RHA:SetPosition(ANIM_API.WEAPONS[weaponID][anim][frameID]["RHAnchor"]["Position"])
				RHA:SetRotation(ANIM_API.WEAPONS[weaponID][anim][frameID]["RHAnchor"]["Rotation"])
				RHA:SetAimOffset(ANIM_API.WEAPONS[weaponID][anim][frameID]["RHAnchor"]["Offset"])
				LFA:SetPosition(ANIM_API.WEAPONS[weaponID][anim][frameID]["LFAnchor"]["Position"])
				LFA:SetRotation(ANIM_API.WEAPONS[weaponID][anim][frameID]["LFAnchor"]["Rotation"])
				LFA:SetAimOffset(ANIM_API.WEAPONS[weaponID][anim][frameID]["LFAnchor"]["Offset"])
				RFA:SetPosition(ANIM_API.WEAPONS[weaponID][anim][frameID]["RFAnchor"]["Position"])
				RFA:SetRotation(ANIM_API.WEAPONS[weaponID][anim][frameID]["RFAnchor"]["Rotation"])
				RFA:SetAimOffset(ANIM_API.WEAPONS[weaponID][anim][frameID]["RFAnchor"]["Offset"])
				PA:SetPosition(ANIM_API.WEAPONS[weaponID][anim][frameID]["PAnchor"]["Position"])
				PA:SetRotation(ANIM_API.WEAPONS[weaponID][anim][frameID]["PAnchor"]["Rotation"])
				LHA:Activate(player)
				RHA:Activate(player)
				LFA:Activate(player)
				RFA:Activate(player)
				PA:Activate(player)
			else
				LHA:MoveTo(ANIM_API.WEAPONS[weaponID][anim][frameID]["LHAnchor"]["Position"],0.2,true)
				LHA:RotateTo(ANIM_API.WEAPONS[weaponID][anim][frameID]["LHAnchor"]["Rotation"],0.2,true)
				LHA:SetAimOffset(ANIM_API.WEAPONS[weaponID][anim][frameID]["LHAnchor"]["Offset"])
				RHA:MoveTo(ANIM_API.WEAPONS[weaponID][anim][frameID]["RHAnchor"]["Position"],0.2,true)
				RHA:RotateTo(ANIM_API.WEAPONS[weaponID][anim][frameID]["RHAnchor"]["Rotation"],0.2,true)
				RHA:SetAimOffset(ANIM_API.WEAPONS[weaponID][anim][frameID]["RHAnchor"]["Offset"])
				LFA:MoveTo(ANIM_API.WEAPONS[weaponID][anim][frameID]["LFAnchor"]["Position"],0.2,true)
				LFA:RotateTo(ANIM_API.WEAPONS[weaponID][anim][frameID]["LFAnchor"]["Rotation"],0.2,true)
				LFA:SetAimOffset(ANIM_API.WEAPONS[weaponID][anim][frameID]["LFAnchor"]["Offset"])
				RFA:MoveTo(ANIM_API.WEAPONS[weaponID][anim][frameID]["RFAnchor"]["Position"],0.2,true)
				RFA:RotateTo(ANIM_API.WEAPONS[weaponID][anim][frameID]["RFAnchor"]["Rotation"],0.2,true)
				RFA:SetAimOffset(ANIM_API.WEAPONS[weaponID][anim][frameID]["RFAnchor"]["Offset"])
				PA:MoveTo(ANIM_API.WEAPONS[weaponID][anim][frameID]["PAnchor"]["Position"],0.2,true)
				PA:RotateTo(ANIM_API.WEAPONS[weaponID][anim][frameID]["PAnchor"]["Rotation"],0.2,true)
			end
		end
	end
end

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
					
					for b=1,5 do
					    if KeyState[b][0]==player.name then
					    	PlayerState[b][0]=true
					    	PlayerState[b][1]=time()
						end
					end
					
					if Object.IsValid(theTrigger) then theTrigger:Destroy() end
				end
			end
		end
	end
end

function HitOverlap(theTrigger)--
	list=theTrigger:GetOverlappingObjects()
	for _,player in pairs(list) do
		if player and player:IsA("Player") and Object.IsValid(theTrigger) and theTrigger:GetCustomProperty("Owner")~=player.name then
			
			for _,pl in pairs(Game.GetPlayers()) do
				if pl.name==theTrigger:GetCustomProperty("Owner") then
					for b=1,5 do
						if KeyState[b][0]==pl.name then
							PlayerStats[b][1]=PlayerStats[b][1]+theTrigger:GetCustomProperty("Damage")
						end
					end
				end
			end
			
			for b=1,5 do
			    if KeyState[b][0]==player.name then
					PlayerState[b][5]=PlayerState[b][5]+theTrigger:GetCustomProperty("Damage")
					script:SetNetworkedCustomProperty("Player"..b.."HP",PlayerState[b][5])
					break
				end
			end

			player.animationStance=ImpactID[math.random(2)]
			local equips=player:GetEquipment()
			for _,obj in pairs(equips) do
				if obj.name=="VFXS" then
					VFX=obj:GetCustomProperty("Fist_Hit_VFX"):WaitForObject()
					VFX:Play()
				end
			end
			
			for b=1,5 do
			    if KeyState[b][0]==player.name then
			    	PlayerState[b][0]=true
			    	PlayerState[b][1]=time()
				end
			end
			
			if Object.IsValid(theTrigger) then theTrigger:Destroy() end
			Task.Wait(0.3)
			ResetAnim(player)
		end
	end
end

function HeavyHitOverlap(theTrigger)
	list=theTrigger:GetOverlappingObjects()
	for _,player in pairs(list) do
		if player and player:IsA("Player") and Object.IsValid(theTrigger) and theTrigger:GetCustomProperty("Owner")~=player.name then
			
			for _,pl in pairs(Game.GetPlayers()) do
				if pl.name==theTrigger:GetCustomProperty("Owner") then
					for b=1,5 do
						if KeyState[b][0]==pl.name then
							PlayerStats[b][1]=PlayerStats[b][1]+theTrigger:GetCustomProperty("Damage")
						end
					end
				end
			end

			for b=1,5 do
			    if KeyState[b][0]==player.name then
					playerId=b
					break
				end
			end
			if player:GetVelocity().z==0 then
				local triggerOwner
				for _,pl in pairs(Game.GetPlayers()) do
					if pl.name==theTrigger:GetCustomProperty("Owner") then
						triggerOwner=pl
					end
				end
				player:ResetVelocity()
				if player:GetWorldPosition().y>triggerOwner:GetWorldPosition().y then
					player:SetVelocity(directionVector3[2]*(theTrigger:GetCustomProperty("Power")+(PlayerState[playerId][5]/10)))
				else
					player:SetVelocity(directionVector3[4]*(theTrigger:GetCustomProperty("Power")+(PlayerState[playerId][5]/10)))
				end
			else
				player:ResetVelocity()
				player:SetVelocity(directionVector3[theTrigger:GetCustomProperty("Direction")]*(theTrigger:GetCustomProperty("Power")+(PlayerState[playerId][5]/10)))
			end
			PlayerState[playerId][5]=PlayerState[playerId][5]+theTrigger:GetCustomProperty("Damage")
			script:SetNetworkedCustomProperty("Player"..playerId.."HP",PlayerState[playerId][5])
			player.animationStance=ImpactID[math.random(2)]
			local equips=player:GetEquipment()
			for _,obj in pairs(equips) do
				if obj.name=="VFXS" then
					if theTrigger:GetCustomProperty("Power")>5 then
						VFX=obj:GetCustomProperty("Trail_VFX"):WaitForObject()
						VFX:Play()
					end
				end
			end
			
			PlayerState[playerId][0]=true
			PlayerState[playerId][1]=time()
			
			if Object.IsValid(theTrigger) then theTrigger:Destroy() end
			Task.Wait(0.3)
			ResetAnim(player)
		end
	end
end

function DeathOverlap(theTrigger)
	list=theTrigger:GetOverlappingObjects()
	for _,player in pairs(list) do
		if player and player:IsA("Player") then
			for b=1,5 do
			    if KeyState[b][0]==player.name then
					playerId=b
					break
				end
			end
			if time()>=PlayerState[playerId][8]+3 then
				local obj=World.SpawnAsset(Flash)
				obj:SetWorldPosition(player:GetWorldPosition())
				--player:ResetVelocity()
				PlayerState[playerId][8]=time()
				PlayerState[playerId][6]=0
				ResetWeapon(player)
				ResetMovement(player)
				ResetVFX(player)
				ResetAnim(player)
				for a=1,6 do
					KeyState[playerId][a]=false
				end
				PlayerState[playerId][0]=false 
				PlayerState[playerId][1]=0.0 
				PlayerState[playerId][2]=false 
				PlayerState[playerId][3]=false 
				PlayerState[playerId][4]=0.0 
				PlayerState[playerId][5]=0 
				PlayerStats[playerId][0]=PlayerStats[playerId][0]+1
				script:SetNetworkedCustomProperty("Player"..playerId.."Deaths",PlayerStats[playerId][0])
				script:SetNetworkedCustomProperty("Player"..playerId.."HP",PlayerState[playerId][5])
				Task.Wait(2)
				player:ResetVelocity()
				for a,obj in pairs(Game.GetPlayers()) do
					if obj==player then
						player:SetWorldPosition(script:GetCustomProperty("Spawn"..a):WaitForObject():GetWorldPosition())
					end
				end
			end
		end
	end
end
--===========================================================AllHitActions===================================================
---------------------------------------------------------BasicUpHit-----------------------------------------------------
function BasicUpHit(player,direction)
	local equips=player:GetEquipment()

	for _,obj in pairs(equips) do
		if obj.name=="ANIMS" then
			for a=1,5 do
    			if KeyState[a][0]==player.name then
    				MyLocalID=a
    			end
    		end
			--	|Check for hit reset|	--
			for b=1,5 do
			    if KeyState[b][0]==player.name and PlayerState[b][0] then
			    	return
				end
			end
			--	=====================	--
			PlayerState[MyLocalID][3]=true
			PlayerState[MyLocalID][4]=time()
			StunMovement(player)
			if player:GetVelocity().z<0 then
				player:ResetVelocity()
			end
			player:SetVelocity(player:GetVelocity()+directionVector3[direction]*3)
			obj:GetCustomProperty("UpHit_Anim"):WaitForObject():Activate()
			trigger=World.SpawnAsset(HeavyHitTrigger)
			trigger:SetNetworkedCustomProperty("Owner",player.name)
			trigger:SetNetworkedCustomProperty("Direction",direction)
			trigger:SetNetworkedCustomProperty("Damage",10)
			trigger:SetNetworkedCustomProperty("Power",3)
			trigger.beginOverlapEvent:Connect(HeavyHitOverlap)
			trigger:AttachToPlayer(player,"root")
			if Object.IsValid(trigger) then trigger:SetWorldPosition(Vector3.New(player:GetWorldPosition().x,player:GetWorldPosition().y,player:GetWorldPosition().z+100)) end
			if Object.IsValid(trigger) then trigger:SetWorldScale(Vector3.New(1,1,1)) end
    		Task.Wait(0.2)
			--player:ResetVelocity()
			ResetMovement(player)
		end
	end
end
---------------------------------------------------------BasicDownHit-----------------------------------------------------
function BasicDownHit(player,direction)
	local equips=player:GetEquipment()

	for _,obj in pairs(equips) do
		if obj.name=="ANIMS" then
			for a=1,5 do
    			if KeyState[a][0]==player.name then
    				MyLocalID=a
    			end
    		end
			--	|Check for hit reset|	--
			for b=1,5 do
			    if KeyState[b][0]==player.name and PlayerState[b][0] then
			    	return
				end
			end
			--	=====================	--
			PlayerState[MyLocalID][2]=true
			Stun(player)
			player:SetVelocity(player:GetVelocity()+directionVector3[direction]*4)
			obj:GetCustomProperty("StompHit_Anim"):WaitForObject():Activate()
			trigger=World.SpawnAsset(HeavyHitTrigger)
			trigger:SetNetworkedCustomProperty("Owner",player.name)
			trigger:SetNetworkedCustomProperty("Direction",direction)
			trigger:SetNetworkedCustomProperty("Damage",10)
			trigger:SetNetworkedCustomProperty("Power",3)
			trigger.beginOverlapEvent:Connect(HeavyHitOverlap)
			trigger:AttachToPlayer(player,"root")
			if Object.IsValid(trigger) then trigger:SetWorldPosition(Vector3.New(player:GetWorldPosition().x,player:GetWorldPosition().y,player:GetWorldPosition().z-100)) end
			if Object.IsValid(trigger) then trigger:SetWorldScale(Vector3.New(1,1,1)) end
			while player.isJumping and Object.IsValid(trigger) do
    			if PlayerState[MyLocalID][2]==false or PlayerState[MyLocalID][0] then
    				break
    			else
    				Task.Wait(0.05)
    			end
			end
			player:ResetVelocity()
			ResetMovement(player)
			PlayerState[MyLocalID][2]=false
		end
	end
end
---------------------------------------------------------BasicSideHit-----------------------------------------------------
function BasicSideHit(player,direction)
	local equips=player:GetEquipment()

	for _,obj in pairs(equips) do
		if obj.name=="ANIMS" then
			if obj:GetCustomProperty("LFastHit_Skill"):WaitForObject():GetCurrentPhase()==AbilityPhase.READY then
				StunMovement(player)
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				--	=====================	--
				obj:GetCustomProperty("LFastHit_Skill"):WaitForObject():Activate()
				trigger=World.SpawnAsset(HeavyHitTrigger)
				trigger:SetNetworkedCustomProperty("Owner",player.name)
				trigger:SetNetworkedCustomProperty("Direction",direction)
				trigger:SetNetworkedCustomProperty("Damage",10)
				trigger:SetNetworkedCustomProperty("Power",3)
				trigger.beginOverlapEvent:Connect(HeavyHitOverlap)
				trigger:AttachToPlayer(player,"root")
				if Object.IsValid(trigger) then trigger:SetWorldPosition(Vector3.New(player:GetWorldPosition().x,player:GetWorldPosition().y+directionVector3[direction].y/1000,player:GetWorldPosition().z)) end
				if Object.IsValid(trigger) then trigger:SetWorldScale(Vector3.New(1,1,1)) end				
				Task.Wait(0.1)
				--player:ResetVelocity()
				ResetMovement(player)
			end
		end
	end
end
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
		--	=====================	--
		for _,obj in pairs(equips) do
			if obj.name=="ANIMS" then
				if PrHit then
					obj:GetCustomProperty("LFastHit_Anim"):WaitForObject():Activate()
					PrHit=false
				else
					obj:GetCustomProperty("RFastHit_Anim"):WaitForObject():Activate()
					PrHit=true
				end
				Task.Wait(0.05)
				trigger=World.SpawnAsset(HitTrigger)
				trigger:SetNetworkedCustomProperty("Owner",player.name)
				trigger:SetNetworkedCustomProperty("Damage",3)
				trigger.beginOverlapEvent:Connect(HitOverlap)
				trigger:SetWorldPosition(player:GetWorldPosition())
				if Object.IsValid(trigger) then trigger:SetWorldScale(Vector3.New(2,2,1)) end
			end
		end
	end
	--	|Check for hit reset|	--
	for b=1,5 do
	    if KeyState[b][0]==player.name and PlayerState[b][0] then
	    	return
		end
	end
	--	=====================	--
	for _,obj in pairs(equips) do
		if obj.name=="ANIMS" then
			obj:GetCustomProperty("StompHit_Anim"):WaitForObject():Activate()
		end
	end
	Task.Wait(0.1)
	trigger=World.SpawnAsset(HeavyHitTrigger)
	trigger:SetNetworkedCustomProperty("Owner",player.name)
	trigger:SetNetworkedCustomProperty("Direction",direction)
	trigger:SetNetworkedCustomProperty("Damage",10)
	trigger.beginOverlapEvent:Connect(HeavyHitOverlap)
	trigger:SetWorldPosition(player:GetWorldPosition())
	if Object.IsValid(trigger) then trigger:SetWorldScale(Vector3.New(3,3,1)) end
end

function ForwardHit(player,direction)
	local equips=player:GetEquipment()

	for _,obj in pairs(equips) do
		if obj.name=="ANIMS" then
			if obj:GetCustomProperty("ForwardHit_Skill"):WaitForObject():GetCurrentPhase()==AbilityPhase.READY then
				Stun(player)
				Task.Wait(0.1)
				player:SetVelocity(player:GetVelocity()+directionVector3[direction]*5)
				
				obj:GetCustomProperty("ForwardHit_Skill"):WaitForObject():Activate()
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				--	=====================	--
				trigger=World.SpawnAsset(StunTrigger)
				trigger:SetNetworkedCustomProperty("Owner",player.name)
				trigger:SetNetworkedCustomProperty("Direction",direction)
				trigger.beginOverlapEvent:Connect(ForwardOverlap)
				trigger:AttachToPlayer(player,"root")
				if Object.IsValid(trigger) then trigger:SetWorldPosition(player:GetWorldPosition()) end
				
				Task.Wait(0.3)
				player:ResetVelocity()
				ResetMovement(player)
			end
		end
	end
end
--====================================================Weapon1==================================================================
--------------------------------------------------------ADE1-------------------------------------------------------------------
function ADE1(player,direction)
	local equips=player:GetEquipment()

	for _,obj in pairs(equips) do
		if obj.name=="ANIMS" then
			if obj:GetCustomProperty("ADE1_Skill"):WaitForObject():GetCurrentPhase()==AbilityPhase.READY then
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				--	=====================	--
				obj:GetCustomProperty("ADE1_Skill"):WaitForObject():Activate()
				Stun(player)
				PlayWeaponAnim(player,1,"ADE",1)
				Task.Wait(0.1)
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				--	=====================	--
				Task.Wait(0.2)
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				--	=====================	--
				PlayWeaponAnim(player,1,"ADE",2)
				trigger=World.SpawnAsset(HeavyHitTrigger)
				trigger:SetNetworkedCustomProperty("Owner",player.name)
				trigger:SetNetworkedCustomProperty("Direction",direction)
				trigger:SetNetworkedCustomProperty("Damage",10)
				trigger:SetNetworkedCustomProperty("Power",5)
				trigger.beginOverlapEvent:Connect(HeavyHitOverlap)
				trigger:SetWorldPosition(player:GetWorldPosition()+directionVector3[direction])
				if Object.IsValid(trigger) then trigger:SetWorldScale(Vector3.New(4,4,2)) end
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				--	=====================	--
				for _,equip in pairs(player:GetAttachedObjects()) do
					if equip.name=="LPW1" then
						equip:GetCustomProperty("FlashVFX"):WaitForObject():Play()
						break
					end
				end
				for _,equip in pairs(player:GetAttachedObjects()) do
					if equip.name=="RPW1" then
						equip:GetCustomProperty("FlashVFX"):WaitForObject():Play()
						break
					end
				end
				for _,equip in pairs(player:GetEquipment()) do
					if equip.name=="VFXS" then
						equip:GetCustomProperty("ADE1_VFX"):WaitForObject():Play()
					end
				end
				Task.Wait(0.2)
				player:ResetVelocity()
				ResetMovement(player)
				ResetAnim(player)
			end
		end
	end
end
--------------------------------------------------------SE1-------------------------------------------------------------------
function SE1(player)
	local equips=player:GetEquipment()

	for _,obj in pairs(equips) do
		if obj.name=="ANIMS" then
			if obj:GetCustomProperty("SE1_Skill"):WaitForObject():GetCurrentPhase()==AbilityPhase.READY then
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				--	=====================	--
				obj:GetCustomProperty("SE1_Skill"):WaitForObject():Activate()
				Stun(player)
				PlayWeaponAnim(player,1,"SE",1)
				Task.Wait(0.1)
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				--	=====================	--
				trigger=World.SpawnAsset(HeavyHitTrigger)
				trigger:SetNetworkedCustomProperty("Owner",player.name)
				trigger:SetNetworkedCustomProperty("Direction",5)
				trigger:SetNetworkedCustomProperty("Damage",10)
				trigger:SetNetworkedCustomProperty("Power",3)
				trigger.beginOverlapEvent:Connect(HeavyHitOverlap)
				trigger:SetWorldPosition(player:GetWorldPosition()+directionVector3[5]/2)
				if Object.IsValid(trigger) then trigger:SetWorldScale(Vector3.New(2,2,2)) end
				for _,equip in pairs(player:GetAttachedObjects()) do
					if equip.name=="RPW1" then
						equip:GetCustomProperty("FlashVFX"):WaitForObject():Play()
						break
					end
				end
				for _,equip in pairs(player:GetEquipment()) do
					if equip.name=="VFXS" then
						equip:GetCustomProperty("SE1_VFX2"):WaitForObject():Play()
					end
				end
				Task.Wait(0.2)
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				--	=====================	--
				PlayWeaponAnim(player,1,"SE",2)
				trigger=World.SpawnAsset(HeavyHitTrigger)
				trigger:SetNetworkedCustomProperty("Owner",player.name)
				trigger:SetNetworkedCustomProperty("Direction",1)
				trigger:SetNetworkedCustomProperty("Damage",10)
				trigger:SetNetworkedCustomProperty("Power",3)
				trigger.beginOverlapEvent:Connect(HeavyHitOverlap)
				trigger:SetWorldPosition(player:GetWorldPosition()+directionVector3[1]/2)
				if Object.IsValid(trigger) then trigger:SetWorldScale(Vector3.New(2,2,2)) end
				for _,equip in pairs(player:GetAttachedObjects()) do
					if equip.name=="LPW1" then
						equip:GetCustomProperty("FlashVFX"):WaitForObject():Play()
						break
					end
				end
				for _,equip in pairs(player:GetEquipment()) do
					if equip.name=="VFXS" then
						equip:GetCustomProperty("SE1_VFX"):WaitForObject():Play()
					end
				end
				Task.Wait(0.2)
				player:ResetVelocity()
				ResetMovement(player)
				ResetAnim(player)
			end
		end
	end
end
--------------------------------------------------------WE1-------------------------------------------------------------------
function WE1(player)
	local equips=player:GetEquipment()

	for _,obj in pairs(equips) do
		if obj.name=="ANIMS" then
			if obj:GetCustomProperty("WE1_Skill"):WaitForObject():GetCurrentPhase()==AbilityPhase.READY then
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				--	=====================	--
				obj:GetCustomProperty("WE1_Skill"):WaitForObject():Activate()
				Stun(player)
				PlayWeaponAnim(player,1,"WE",1)
				Task.Wait(0.1)
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				--	=====================	--
				trigger=World.SpawnAsset(HeavyHitTrigger)
				trigger:SetNetworkedCustomProperty("Owner",player.name)
				trigger:SetNetworkedCustomProperty("Direction",7)
				trigger:SetNetworkedCustomProperty("Damage",10)
				trigger:SetNetworkedCustomProperty("Power",2)
				trigger.beginOverlapEvent:Connect(HeavyHitOverlap)
				trigger:SetWorldPosition(player:GetWorldPosition())
				if Object.IsValid(trigger) then trigger:SetWorldScale(Vector3.New(2,2,2)) end
				player:SetVelocity(player:GetVelocity()+directionVector3[3]*4)
				for _,equip in pairs(player:GetAttachedObjects()) do
					if equip.name=="LPW1" then
						equip:GetCustomProperty("FlashVFX"):WaitForObject():Play()
						break
					end
				end
				for _,equip in pairs(player:GetEquipment()) do
					if equip.name=="VFXS" then
						equip:GetCustomProperty("WE1_VFX"):WaitForObject():Play()
					end
				end
				Task.Wait(0.2)
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				--	=====================	--
				PlayWeaponAnim(player,1,"WE",2)
				trigger=World.SpawnAsset(HeavyHitTrigger)
				trigger:SetNetworkedCustomProperty("Owner",player.name)
				trigger:SetNetworkedCustomProperty("Direction",7)
				trigger:SetNetworkedCustomProperty("Damage",10)
				trigger:SetNetworkedCustomProperty("Power",2)
				trigger.beginOverlapEvent:Connect(HeavyHitOverlap)
				trigger:SetWorldPosition(player:GetWorldPosition()+directionVector3[7]/2)
				if Object.IsValid(trigger) then trigger:SetWorldScale(Vector3.New(3,3,3)) end
				player:SetVelocity(player:GetVelocity()+directionVector3[3]*2)
				for _,equip in pairs(player:GetAttachedObjects()) do
					if equip.name=="RPW1" then
						equip:GetCustomProperty("FlashVFX"):WaitForObject():Play()
						break
					end
				end
				for _,equip in pairs(player:GetEquipment()) do
					if equip.name=="VFXS" then
						equip:GetCustomProperty("WE1_VFX"):WaitForObject():Play()
					end
				end
				Task.Wait(0.2)
				ResetMovement(player)
				ResetAnim(player)
			end
		end
	end
end
--====================================================Weapon2==================================================================
--------------------------------------------------------ADE2-------------------------------------------------------------------
function ADE2(player,direction)
	local equips=player:GetEquipment()

	for _,obj in pairs(equips) do
		if obj.name=="ANIMS" then
			if obj:GetCustomProperty("ADE2_Skill"):WaitForObject():GetCurrentPhase()==AbilityPhase.READY then
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				--	=====================	--
				obj:GetCustomProperty("ADE2_Skill"):WaitForObject():Activate()
				Stun(player)
				Task.Wait(0.1)
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				--	=====================	--
				PlayWeaponAnim(player,2,"ADE",1)
				Task.Wait(0.2)
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				Task.Wait(0.2)
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				--	=====================	--
				PlayWeaponAnim(player,2,"ADE",2)
				trigger=World.SpawnAsset(HeavyHitTrigger)
				trigger:SetNetworkedCustomProperty("Owner",player.name)
				trigger:SetNetworkedCustomProperty("Direction",direction)
				trigger:SetNetworkedCustomProperty("Damage",10)
				trigger:SetNetworkedCustomProperty("Power",5)
				trigger.beginOverlapEvent:Connect(HeavyHitOverlap)
				trigger:AttachToPlayer(player,"root")
				if Object.IsValid(trigger) then trigger:SetWorldPosition(player:GetWorldPosition()+directionVector3[direction]/2) end
				if Object.IsValid(trigger) then trigger:SetWorldScale(Vector3.New(2,2,1)) end
				
				--player.groundFriction=0
				--player.brakingFrictionFactor=0
				--player.brakingDecelerationWalking=0
				--player.brakingDecelerationFlying=0
				player:SetVelocity(player:GetVelocity()+directionVector3[direction]*8)
				--player:SetVelocity(directionVector3[direction]*4)
				for _,equip in pairs(player:GetAttachedObjects()) do
					if equip.name=="DHW2" then
						equip:GetCustomProperty("RocketVFX"):WaitForObject():Play()
						break
					end
				end
				Task.Wait(0.2)
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				--	=====================	--
				--[[	
				player:SetVelocity(player:GetVelocity()+directionVector3[direction])
					--player:SetVelocity(directionVector3[direction]*4)
					for _,equip in pairs(player:GetAttachedObjects()) do
						if equip.name=="DHW2" then
							equip:GetCustomProperty("RocketVFX"):WaitForObject():Play()
							break
						end
					end
				]]
				--[[
				player:SetVelocity(player:GetVelocity()+directionVector3[direction]*4)
				for _,equip in pairs(player:GetAttachedObjects()) do
					if equip.name=="DHW2" then
						equip:GetCustomProperty("RocketVFX"):WaitForObject():Play()
						break
					end
				end
				]]
				Task.Wait(0.2)
				if Object.IsValid(trigger) then trigger:Destroy() end
				ResetMovement(player)
				ResetAnim(player)
			end
		end
	end
end
--------------------------------------------------------SE2-------------------------------------------------------------------
function SE2(player)
	local equips=player:GetEquipment()

	for _,obj in pairs(equips) do
		if obj.name=="ANIMS" then
			if obj:GetCustomProperty("SE2_Skill"):WaitForObject():GetCurrentPhase()==AbilityPhase.READY then
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				--	=====================	--
				obj:GetCustomProperty("SE2_Skill"):WaitForObject():Activate()
				Stun(player)
				Task.Wait(0.1)
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				--	=====================	--
				PlayWeaponAnim(player,2,"SE",1)
				Task.Wait(0.2)
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				--	=====================	--
				trigger=World.SpawnAsset(HeavyHitTrigger)
				trigger:SetNetworkedCustomProperty("Owner",player.name)
				trigger:SetNetworkedCustomProperty("Direction",3)
				trigger:SetNetworkedCustomProperty("Damage",10)
				trigger:SetNetworkedCustomProperty("Power",3)
				trigger.beginOverlapEvent:Connect(HeavyHitOverlap)
				trigger:SetWorldPosition(player:GetWorldPosition())
				if Object.IsValid(trigger) then trigger:SetWorldScale(Vector3.New(4,4,2)) end
				for _,equip in pairs(player:GetAttachedObjects()) do
					if equip.name=="DHW2" then
						equip:GetCustomProperty("RocketVFX"):WaitForObject():Play()
						break
					end
				end
				for _,equip in pairs(player:GetEquipment()) do
					if equip.name=="VFXS" then
						equip:GetCustomProperty("SE2_VFX"):WaitForObject():Play()
					end
				end
				PlayWeaponAnim(player,2,"SE",2)
				Task.Wait(0.2)
				player:ResetVelocity()
				ResetMovement(player)
				ResetAnim(player)
			end
		end
	end
end
--------------------------------------------------------WE2-------------------------------------------------------------------
function WE2(player)
	local equips=player:GetEquipment()

	for _,obj in pairs(equips) do
		if obj.name=="ANIMS" then
			if obj:GetCustomProperty("WE2_Skill"):WaitForObject():GetCurrentPhase()==AbilityPhase.READY then
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				--	=====================	--
				obj:GetCustomProperty("WE2_Skill"):WaitForObject():Activate()
				Stun(player)
				Task.Wait(0.1)
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				--	=====================	--
				PlayWeaponAnim(player,2,"WE",1)
				Task.Wait(0.2)
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				--	=====================	--
				PlayWeaponAnim(player,2,"WE",2)
				trigger=World.SpawnAsset(HeavyHitTrigger)
				trigger:SetNetworkedCustomProperty("Owner",player.name)
				trigger:SetNetworkedCustomProperty("Direction",3)
				trigger:SetNetworkedCustomProperty("Damage",10)
				trigger:SetNetworkedCustomProperty("Power",4)
				trigger.beginOverlapEvent:Connect(HeavyHitOverlap)
				trigger:AttachToPlayer(player,"root")
				if Object.IsValid(trigger) then trigger:SetWorldPosition(player:GetWorldPosition()+directionVector3[3]/2) end
				if Object.IsValid(trigger) then trigger:SetWorldScale(Vector3.New(2,2,2)) end
				player:SetVelocity(player:GetVelocity()+directionVector3[3]*5)
				for _,equip in pairs(player:GetAttachedObjects()) do
					if equip.name=="DHW2" then
						equip:GetCustomProperty("RocketVFX"):WaitForObject():Play()
						break
					end
				end
				Task.Wait(0.2)
				ResetMovement(player)
				ResetAnim(player)
			end
		end
	end
end
--====================================================Weapon3==================================================================
--------------------------------------------------------E3---------------------------------------------------------------------
function E3(player)
	for _,obj in pairs(player:GetEquipment()) do
		if obj.name=="ANIMS" then
			if obj:GetCustomProperty("E3_Skill"):WaitForObject():GetCurrentPhase()==AbilityPhase.READY then
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				--	=====================	--
				obj:GetCustomProperty("E3_Skill"):WaitForObject():Activate()
				Task.Wait(0.1)
				flare=World.SpawnAsset(Flare)
				flare:SetNetworkedCustomProperty("Owner",player.name)
				flare:SetWorldPosition(player:GetWorldPosition())
				Task.Wait(0.2)
				ResetWeapon(player)
			end
		end
	end
end
--====================================================Weapon4==================================================================
--------------------------------------------------------ADE4-------------------------------------------------------------------
function ADE4(player,direction)
	for _,obj in pairs(player:GetEquipment()) do
		if obj.name=="ANIMS" then
			if obj:GetCustomProperty("ADE4_Skill"):WaitForObject():GetCurrentPhase()==AbilityPhase.READY then
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				--	=====================	--
				obj:GetCustomProperty("ADE4_Skill"):WaitForObject():Activate()
				Task.Wait(0.1)
				granade=World.SpawnAsset(PhysicGranade)
				trigger=granade:GetCustomProperty("HeavyHitTrigger"):WaitForObject()
				trigger:SetNetworkedCustomProperty("Owner",player.name)
				trigger:SetNetworkedCustomProperty("Direction",direction)
				trigger:SetNetworkedCustomProperty("Damage",30)
				trigger:SetNetworkedCustomProperty("Power",5)
				trigger.beginOverlapEvent:Connect(HeavyHitOverlap)
				granade:SetWorldPosition(player:GetWorldPosition()+directionVector3[direction]/2)
				granade:SetVelocity(player:GetVelocity()+directionVector3[direction]*5)
				Task.Wait(0.2)
				ResetWeapon(player)
			end
		end
	end
end
--====================================================Weapon5==================================================================
--------------------------------------------------------ADE5-------------------------------------------------------------------
function ADE5(player,direction)
	for _,obj in pairs(player:GetEquipment()) do
		if obj.name=="ANIMS" then
			if obj:GetCustomProperty("ADE5_Skill"):WaitForObject():GetCurrentPhase()==AbilityPhase.READY then
				--	|Check for hit reset|	--
				for b=1,5 do
				    if KeyState[b][0]==player.name and PlayerState[b][0] then
				    	return
					end
				end
				--	=====================	--
				obj:GetCustomProperty("ADE5_Skill"):WaitForObject():Activate()
				Task.Wait(0.1)
				local mine=World.SpawnAsset(PhysicMine)
				local trigger=mine:GetCustomProperty("HeavyHitTrigger"):WaitForObject()
				trigger:SetNetworkedCustomProperty("Owner",player.name)
				trigger:SetNetworkedCustomProperty("Direction",direction)
				trigger:SetNetworkedCustomProperty("Damage",30)
				trigger:SetNetworkedCustomProperty("Power",5)
				trigger.beginOverlapEvent:Connect(HeavyHitOverlap)
				mine:SetWorldPosition(player:GetWorldPosition()+directionVector3[direction]/2)
				mine:SetVelocity(player:GetVelocity()+directionVector3[direction]*5)
				Task.Wait(0.2)
				ResetWeapon(player)
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
				
				players=Game.GetPlayers()
				for _,pl in pairs(players) do
					if pl.name==KeyState[b][0] then
						ResetMovement(pl)
						break
					end
				end
			end
		end
		if PlayerState[b][3] then
			if time()>=PlayerState[b][4]+1.5 then
				PlayerState[b][3]=false
			end
		end
	end
end

function OnBindingPressed(player, binding)
    if binding == "ability_extra_20" then
    	for a=1,5 do
    		if KeyState[a][0]==player.name and PlayerState[a][0]==false then
    			KeyState[a][6]=true
    			if KeyState[a][2] then
		        	BasicSideHit(player,5)
        		elseif KeyState[a][4] then
        			BasicSideHit(player,1)
        		elseif KeyState[a][3] and player.isJumping and PlayerState[a][2]==false then
        			BasicDownHit(player,7)
        		elseif KeyState[a][1] and PlayerState[a][3]==false then
        			BasicUpHit(player,3)
				else--if PlayerState[a][6]==0 then
					for _,obj in pairs(PlayerState[a][7]:GetOverlappingObjects()) do
						if obj.name=="Weapon" and obj:IsA("Trigger") and obj:GetCustomProperty("isEquipped")==false then
							EquipWeapon(player,obj)
							break
						end
					end
				end
        		break
        	end
        end
    end
    if binding == "ability_2" then
    	for a=1,5 do
    		if KeyState[a][0]==player.name and PlayerState[a][0]==false then
    			KeyState[a][5]=true
    			if KeyState[a][2] then
					
					if PlayerState[a][6]==-1 then
		        		ForwardHit(player,5)
					end
					if PlayerState[a][6]==1 then
		        		ADE1(player,5)
					end
					if PlayerState[a][6]==2 then
		        		ADE2(player,5)
					end
					if PlayerState[a][6]==4 then
		        		ADE4(player,5)
					end
					if PlayerState[a][6]==5 then
		        		ADE5(player,5)
					end

        		elseif KeyState[a][4] then
					
					if PlayerState[a][6]==-1 then
        				ForwardHit(player,1)
					end
					if PlayerState[a][6]==1 then
		        		ADE1(player,1)
					end
					if PlayerState[a][6]==2 then
		        		ADE2(player,1)
					end
					if PlayerState[a][6]==4 then
		        		ADE4(player,1)
					end
					if PlayerState[a][6]==5 then
		        		ADE5(player,1)
					end

        		elseif KeyState[a][3] and player.isJumping==false then

					if PlayerState[a][6]==1 then
		        		SE1(player)
					end
					if PlayerState[a][6]==2 then
		        		SE2(player)
					end

        		elseif KeyState[a][1] then

					if PlayerState[a][6]==1 then
		        		WE1(player)
					end
					if PlayerState[a][6]==2 then
		        		WE2(player)
					end

        		elseif PlayerState[a][6]==3 then
					E3(player)
				end
        		break
        	end
        end
    end
    if binding == "ability_extra_21" then
    	for a=1,5 do
    		if KeyState[a][0]==player.name and PlayerState[a][0]==false then
    			KeyState[a][1]=true
    			if KeyState[a][6] and PlayerState[a][3]==false then
        			BasicUpHit(player,3)
				elseif KeyState[a][5] and PlayerState[a][6]==1 then
        			WE1(player)
        		elseif KeyState[a][5] and PlayerState[a][6]==2 then
        			WE2(player)
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
					
					if PlayerState[a][6]==-1 then
		        		ForwardHit(player,5)
					elseif PlayerState[a][6]==1 then
						ADE1(player,5)
					elseif PlayerState[a][6]==2 then
						ADE2(player,5)
					elseif PlayerState[a][6]==4 then
						ADE4(player,5)
					elseif PlayerState[a][6]==5 then
						ADE5(player,5)
					end

        		elseif KeyState[a][6] then
		        	BasicSideHit(player,5)
        		end
        		break
        	end
        end
    end
    if binding == "ability_extra_31" then
    	for a=1,5 do
    		if KeyState[a][0]==player.name and PlayerState[a][0]==false then
    			KeyState[a][3]=true
    			if KeyState[a][6] and player.isJumping and PlayerState[a][2]==false then
        			BasicDownHit(player,7)
				elseif KeyState[a][5] and player.isJumping==false and PlayerState[a][6]==1 then
        			SE1(player)
				elseif KeyState[a][5] and player.isJumping==false and PlayerState[a][6]==2 then
        			SE2(player)
				end
        		break
        	end
        end
    end
    if binding == "ability_extra_32" then
    	for a=1,5 do
    		if KeyState[a][0]==player.name and PlayerState[a][0]==false then
    			KeyState[a][4]=true
    			if KeyState[a][5] then

					if PlayerState[a][6]==-1 then
		        		ForwardHit(player,1)
					elseif PlayerState[a][6]==1 then
						ADE1(player,1)
					elseif PlayerState[a][6]==2 then
						ADE2(player,1)
					elseif PlayerState[a][6]==4 then
						ADE4(player,1)
					elseif PlayerState[a][6]==5 then
						ADE5(player,1)
					end

        		elseif KeyState[a][6] then
		        	BasicSideHit(player,1)
        		end
        		break
        	end
        end
    end
end

function OnBindingReleased(player, binding)
    if binding == "ability_extra_20" then
    	for a=1,5 do
    		if KeyState[a][0]==player.name then
    			KeyState[a][6]=false
           		break
        	end
        end
    end
    if binding == "ability_2" then
    	for a=1,5 do
    		if KeyState[a][0]==player.name then
    			KeyState[a][5]=false
           		break
        	end
        end
    end
    if binding == "ability_extra_21" then
    	for a=1,5 do
    		if KeyState[a][0]==player.name then
    			KeyState[a][1]=false
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
	for a=1,4 do
		script:GetCustomProperty("DeathTrigger_"..a):WaitForObject().beginOverlapEvent:Connect(DeathOverlap)
	end
	local players=Game.GetPlayers()
	for _,pl in pairs(players) do
		for a=1,5 do
			if KeyState[a][0]==nil then
				KeyState[a][0]=pl.name 
				for b=1,20 do 
					KeyState[a][b]=false 
				end 
				PlayerState[a][0]=false 
				PlayerState[a][1]=0.0 
				PlayerState[a][2]=false 
				PlayerState[a][3]=false 
				PlayerState[a][4]=0.0 
				PlayerState[a][5]=0 
				script:SetNetworkedCustomProperty("Player"..a,KeyState[a][0]) 
				PlayerState[a][6]=0
				PlayerState[a][7]=World.SpawnAsset(propHitbox)
				PlayerState[a][7]:AttachToPlayer(pl,"nameplate")
				PlayerState[a][7]:SetWorldPosition(pl:GetWorldPosition())
				PlayerState[a][8]=0
				PlayerStats[a][0]=0
				PlayerStats[a][1]=0
				script:SetNetworkedCustomProperty("Player"..a.."Deaths",PlayerStats[a][0])
				break 
			end
		end
	end
	propInvWall.collision=Collision.FORCE_OFF
end
Game.roundStartEvent:Connect(OnRoundStart)

Events.Connect("RoundStartCutsceneNetworked",RoundStartCutscene)
Events.Connect("RoundEndCutsceneNetworked",RoundEndCutscene)

function ConnectHeavyTrigger(trigger)
	trigger.beginOverlapEvent:Connect(HeavyHitOverlap)
end

Events.Connect("ConnectHeavyTrigger",ConnectHeavyTrigger)