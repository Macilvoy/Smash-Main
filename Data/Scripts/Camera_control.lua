local MainCamera = script:GetCustomProperty("MainCamera"):WaitForObject()

local GlobalCamera = script:GetCustomProperty("GlobalCamera"):WaitForObject()
local CameraCube = script:GetCustomProperty("CameraCube"):WaitForObject()
local YLimit = script:GetCustomProperty("YLimit")
local ZLimit = script:GetCustomProperty("ZLimit")

local cutscene=false

function GetInRangePos(player)
	local myPos=Vector3.New(0,0,0)
	local myY=0
	local myZ=0
	if player:GetWorldPosition().y>YLimit then
		myY=YLimit
	elseif player:GetWorldPosition().y<YLimit*-1 then
		myY=YLimit*-1
	else
		myY=player:GetWorldPosition().y
	end

	if player:GetWorldPosition().z>ZLimit then
		myZ=ZLimit
	elseif player:GetWorldPosition().z<ZLimit*-1 then
		myZ=ZLimit*-1
	else
		myZ=player:GetWorldPosition().z
	end

	myPos=Vector3.New(0,myY,myZ)
	return myPos
end

function InRange(player)
	if player:GetWorldPosition().y<YLimit and player:GetWorldPosition().y>YLimit*-1 and player:GetWorldPosition().z<ZLimit and player:GetWorldPosition().z>ZLimit*-1 then
		return true
	else
		return false
	end
end

function Tick()
	Task.Wait(0.1)
	if cutscene==false then
		Centr=Vector3.New(0,0,0)
		MinY=nil
		MinZ=nil
		MaxY=nil
		MaxZ=nil
		Dist=nil
		players=Game.GetPlayers()
		speed=nil
		for _,player in ipairs(players) do
			if player~=nil and player.isDead==false then
				if InRange(player) then
					Centr= player:GetWorldPosition()
				else
					Centr= GetInRangePos(player)
				end
				break
			end
		end
		for _,player in ipairs(players) do
			if player.isDead==false then--and InRange(player) then
				if MinY==nil or GetInRangePos(player).y<MinY then
					MinY=GetInRangePos(player).y
				end
				if MinZ==nil or GetInRangePos(player).z<MinZ then
					MinZ=GetInRangePos(player).z
				end
				if MaxY==nil or GetInRangePos(player).y>MaxY then
					MaxY=GetInRangePos(player).y
				end
				if MaxZ==nil or GetInRangePos(player).z>MaxZ then
					MaxZ=GetInRangePos(player).z
				end
				Centr= (Centr+GetInRangePos(player))/2
			end
		end
		
		if MinY~=nil then
			Dist=math.sqrt( (MaxY-MinY)^2+(MaxZ-MinZ)^2 )/1.7
			Centr=Vector3.New( (300+Dist)*-1,	Centr.y, Centr.z)
			speed=math.sqrt( (Centr.y-GlobalCamera:GetWorldPosition().y)^2+(Centr.z-GlobalCamera:GetWorldPosition().z)^2 )/0.13
			GlobalCamera:Follow(CameraCube,speed,1)
			CameraCube:MoveTo(Centr,0.1,false)
		end
	end
end

function RoundStartCutscene()
	cutscene=true
	local cutscenePlayers=Game.GetPlayers()
	for a,obj in pairs(cutscenePlayers) do
		Task.Wait(1.25)
		--GlobalCamera:SetWorldPosition(obj:GetWorldPosition()+Vector3.New(-205,5,15))
		Task.Wait(1.25)
	end
	Task.Wait(1)
	cutscene=false
end

Events.Connect("RoundStartCutsceneClient",RoundStartCutscene)

function UpdateCamera()
	local player=Game.GetLocalPlayer()
	player:SetDefaultCamera(GlobalCamera)
end

Events.Connect("UpdateCamera",UpdateCamera)