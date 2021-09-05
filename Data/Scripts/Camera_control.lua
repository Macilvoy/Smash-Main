local GlobalCamera = script:GetCustomProperty("GlobalCamera"):WaitForObject()
local CameraCube = script:GetCustomProperty("CameraCube"):WaitForObject()

local cutscene=false

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
		if players[1]~=nil and players[1].isDead==false then
			Centr= players[1]:GetWorldPosition()
		end
		for _,player in ipairs(players) do
			if player.isDead==false then
				if MinY==nil or player:GetWorldPosition().y<MinY then
					MinY=player:GetWorldPosition().y
				end
				if MinZ==nil or player:GetWorldPosition().z<MinZ then
					MinZ=player:GetWorldPosition().z
				end
				if MaxY==nil or player:GetWorldPosition().y>MaxY then
					MaxY=player:GetWorldPosition().y
				end
				if MaxZ==nil or player:GetWorldPosition().y>MaxZ then
					MaxZ=player:GetWorldPosition().z
				end
				Centr= (Centr+player:GetWorldPosition())/2
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
		GlobalCamera:SetWorldPosition(obj:GetWorldPosition()+Vector3.New(-205,5,15))
		Task.Wait(1.25)
	end
	Task.Wait(1)
	cutscene=false
end

Events.Connect("RoundStartCutsceneNetworked",RoundStartCutscene)