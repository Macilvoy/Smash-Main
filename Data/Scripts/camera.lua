local CameraCube = script:GetCustomProperty("CameraCube"):WaitForObject()
local GlobalCamera = script:GetCustomProperty("GlobalCamera"):WaitForObject()

local EnemyCamera = script:GetCustomProperty("EnemyCamera"):WaitForObject()
local PlayerCamera = script:GetCustomProperty("PlayerCamera"):WaitForObject()

local P1UI = script:GetCustomProperty("p1UI"):WaitForObject()
local P2UI = script:GetCustomProperty("p2UI"):WaitForObject()
local P1Frame = script:GetCustomProperty("p1Frame"):WaitForObject()
local P2Frame = script:GetCustomProperty("p2Frame"):WaitForObject()

local Centr=Vector3.New(0,0,100)
local MinY=nil
local MinZ=nil
local MaxY=nil
local MaxZ=nil
local Dist=nil
local speed=nil

local MapCameraLimit = Vector3.New(1500,2000,1000) --LINK TO MAP

local YLimit = MapCameraLimit.y
local ZLimit = MapCameraLimit.z

local camCapture1 = nil
local camCapture2 = nil

local LOCAL_PLAYER = Game.GetLocalPlayer()

local ColRes = "Color"

function InRange(player)
	if player:GetWorldPosition().y<YLimit and player:GetWorldPosition().y>YLimit*-1 and player:GetWorldPosition().z<ZLimit and player:GetWorldPosition().z>ZLimit*-1 then
		return true
	else
		return false
	end
end

function OnPlayerJoined(player)
        player:SetDefaultCamera(GlobalCamera)
        --print(player:GetDefaultCamera())
        if LOCAL_PLAYER:GetResource(ColRes) == 1 then
            P1Frame:SetColor(Color.RED)
            P2Frame:SetColor(Color.BLUE)
        else
            P2Frame:SetColor(Color.RED)
            P1Frame:SetColor(Color.BLUE)
        end
end

function round(number, decimals)
    local power = 10^decimals
    return math.floor(number * power) / power
end

function PositionArrow(Arrow,Frame,Pos)
          local screenPos = UI.GetScreenPosition(Pos)
          if screenPos ~= nil then
         local ScreenCenter = Vector2.New(UI.GetScreenSize().x/2,UI.GetScreenSize().y/2)

    if (screenPos ~= nil and screenPos.x >= 0 and screenPos.x <= UI.GetScreenSize().x and screenPos.y >= 0 and screenPos.y <= UI.GetScreenSize().y) then
        Arrow.visibility = Visibility.FORCE_OFF
        Frame.visibility = Visibility.FORCE_OFF --// Object center is visible
    else        
        Arrow.visibility = Visibility.FORCE_ON
        Frame.visibility = Visibility.FORCE_ON

  --  screenPos.x = screenPos.x-screenPos.x*0.5
    --screenPos.y = screenPos.y-screenPos.y*0.5
   ScreenCenter = ScreenCenter+ScreenCenter
    local angle = math.atan(screenPos.y, screenPos.x)
    angle = -angle-(270*(math.pi/180))
    -- local cos = math.cos(angle)
    -- local sin = math.sin(angle)*-1
    -- screenPos = ScreenCenter + Vector2.New(sin*150,cos*150)
    -- local m = cos/sin
    -- local screenBounds = ScreenCenter * 0.9
    -- if cos > 0 then 
    --     screenPos = Vector2.New(screenBounds.y/m,screenBounds.y)
    -- else
    --     screenPos = Vector2.New(-screenBounds.y/m,-screenBounds.y)
    -- end
    -- if screenPos.x > screenBounds.x then
    --     screenPos = Vector2.New(screenBounds.x,screenBounds.x*m)
    -- elseif screenPos.x < screenBounds.x then
    --     screenPos = Vector2.New(-screenBounds.x,-screenBounds.x*m)
    -- end
    -- screenPos = screenPos-ScreenCenter
   -- Arrow.x = screenPos.x
    --Arrow.y = screenPos.y

    Arrow.x = (ScreenCenter.x*0.2) * math.sin(angle) + ScreenCenter.x*0.5 -- // Place on ellipse touching 
    Arrow.y = (ScreenCenter.y*0.4) * math.cos(angle) + ScreenCenter.y*0.4 -- //   side of viewport
    Frame.x = Arrow.x
    Frame.y = Arrow.y
   -- Arrow.rotationAngle = -fAngle * (180 / math.pi)
    
 --  Arrow.x = ScreenCenter.x * math.sin(fAngle) + ScreenCenter.x; -- // Place on ellipse touching 
 --  Arrow.y = ScreenCenter.y * math.cos(fAngle) + ScreenCenter.y; -- //   side of viewport
   -- Pos.z = Camera.main.nearClipPlane + 0.01f;  // Looking from neg to pos Z;
    end
end
end

function Tick()
	--Task.Wait(0.1)
   -- print(tostring( UI.GetScreenSize()))
		 Centr=Vector3.New(0,0,100)
		 MinY=nil
		 MinZ=nil
		 MaxY=nil
		 MaxZ=nil
		 Dist=nil
	local	players=Game.GetPlayers()
		speed=nil
        if camCapture1 and camCapture1:IsValid() and camCapture2 and camCapture2:IsValid() then
            camCapture1:Refresh()
            camCapture2:Refresh()
        else
           camCapture1 = PlayerCamera:Capture(CameraCaptureResolution.MEDIUM)
            P1UI:SetCameraCapture(camCapture1)
            camCapture2 = EnemyCamera:Capture(CameraCaptureResolution.MEDIUM)
            P2UI:SetCameraCapture(camCapture2)
        end
        if #players > 0 then
        for _, player in ipairs(players) do
        if player.name == LOCAL_PLAYER.name then 
            PlayerCamera:MoveTo(Vector3.New(LOCAL_PLAYER:GetWorldPosition()-Vector3.New(200,0,0)),0.1,false)
            local LocalPlayerPos =  player:GetWorldPosition()
            PositionArrow(P1UI,P1Frame,LocalPlayerPos)
        else
            EnemyCamera:MoveTo(Vector3.New(player:GetWorldPosition()-Vector3.New(200,0,0)),0.1,false)
            local EnemyPlayerPos =  player:GetWorldPosition()
            PositionArrow(P2UI,P2Frame,EnemyPlayerPos)
        end
    end
    else return --print("what lol")
    end
		for _,player in ipairs(players) do
			if player~=nil and player.isDead==false then
				Centr= player:GetWorldPosition()
				break
			end
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
				if MaxZ==nil or player:GetWorldPosition().z>MaxZ then
					MaxZ=player:GetWorldPosition().z
				end
				Centr= (Centr+player:GetWorldPosition())/2
			end
		
		if MinY~=nil then
            local lowY = 0
            local lowZ = 0
            if math.sqrt(MinY^2) < math.sqrt(MaxY^2) then
                lowY = MinY
            else
                lowY = MaxY
            end
            if math.sqrt(MinZ^2) < math.sqrt(MaxZ^2) then
                lowZ = MinZ
            else
                lowZ = MaxZ
            end
        local OutX = round((Centr.x+MapCameraLimit.x)/2,3)
        local OutY = round((Centr.y+lowY)/2,3)
        local OutZ = round((Centr.z+lowZ)/2,3)
         Dist=math.sqrt( (MaxY-MinY)^2+(MaxZ-MinZ)^2 )/1.7
          if Dist < math.sqrt(MapCameraLimit.x^2) and InRange(player)  then
			Centr=Vector3.New( (100+Dist)*-1,	Centr.y, Centr.z)
          else
          Centr=Vector3.New(OutX*-1, OutY, OutZ) 
          end
			speed=math.sqrt( (Centr.y-GlobalCamera:GetWorldPosition().y)^2+(Centr.z-GlobalCamera:GetWorldPosition().z)^2 )/0.13
			GlobalCamera:Follow(CameraCube,speed/5,1)
			CameraCube:MoveTo(Centr,0.1,false)
		end
    end
-- print(Dist)
-- print(Centr)
-- print(speed)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)