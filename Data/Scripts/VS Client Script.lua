local MainCamera = script:GetCustomProperty("MainCamera"):WaitForObject()
local Screen = script:GetCustomProperty("Screen"):WaitForObject()

--local LoadingPortal = script:GetCustomProperty("LoadingPortal"):WaitForObject()
--local LogoPortal = script:GetCustomProperty("LogoPortal"):WaitForObject()


local P1 = script:GetCustomProperty("p1"):WaitForObject()
local P2 = script:GetCustomProperty("p2"):WaitForObject()
local P3 = script:GetCustomProperty("p3"):WaitForObject()
local P4 = script:GetCustomProperty("p4"):WaitForObject()
local VS4Players = script:GetCustomProperty("VS4Players"):WaitForObject()
local VS3Players = script:GetCustomProperty("VS3Players"):WaitForObject()
local VS2Players = script:GetCustomProperty("VS2Players"):WaitForObject()

local CardCurve = script:GetCustomProperty("CardCurve")
local NameplateCurve = script:GetCustomProperty("NameplateCurve")
local ShinyCurve = script:GetCustomProperty("ShinyCurve")

local CardTimer = 0
local NameplateTimer = 0
local ShinyTimer = 0
local CardTimerDuration = 30
local NameplateTimerDuration = 60
local ShinyTimerDuration = 100

local Ydisplacement = 0
local AngleDisplacement = 200

local PlatesState = {}
local NamesState = {}
local ShinyState = {}
local ReadyForAnim = false
local ReadyToFight = false
local yDISABLED_POSITION = -2000
local yyDISABLED_POSITION = 0
local xDISABLED_POSITION = 340

local ROOT = nil

local mainCapture = nil
local camCapture1 = nil
local camCapture2 = nil
local camCapture3 = nil
local camCapture4 = nil
local P1Image = nil
local P2Image = nil
local P3Image = nil
local P4Image = nil
local P1Name = nil
local P2Name = nil
local P3Name = nil
local P4Name = nil

local ColRes = "Color"

function RunVS()
--    print("yo")
    local AllPlayers = Game.GetPlayers()

    if #AllPlayers == 2 then
        ROOT =  VS2Players
        --print(ROOT:GetChildren()[5]:GetChildren()[1]:GetChildren()[1])
    elseif #AllPlayers == 3 then
        ROOT =  VS3Players
    elseif #AllPlayers == 4 then
        ROOT =  VS4Players
    else
-------------------------------------------------------------------- KICK TO MENU  --------------------------------------------------------------------------TEMP
    end
    if ROOT ~= nil then
        P1Image = ROOT:GetCustomProperty("p1Image"):WaitForObject()
        P1Name = ROOT:GetCustomProperty("p1Name"):WaitForObject()
        P2Image = ROOT:GetCustomProperty("p2Image"):WaitForObject()
        P2Name = ROOT:GetCustomProperty("p2Name"):WaitForObject()
        P3Image = ROOT:GetCustomProperty("p3Image"):WaitForObject()
        P3Name = ROOT:GetCustomProperty("p3Name"):WaitForObject()
        P4Image = ROOT:GetCustomProperty("p4Image"):WaitForObject()
        P4Name = ROOT:GetCustomProperty("p4Name"):WaitForObject()

        for id, pl in ipairs(Game.GetPlayers()) do
            if id == 1 then
                if pl.name ~= nil then
                    P1Name.text = pl.name
                end
            elseif id == 2 then
                if pl.name ~= nil then
                    P2Name.text = pl.name
                end
            elseif id == 3 then
                if pl.name ~= nil then
                    P3Name.text = pl.name
                end
            elseif id == 4 then
                if pl.name ~= nil then
                    P4Name.text = pl.name
                end
            end
        end
        while camCapture1==nil do
            camCapture1 = P1:Capture(CameraCaptureResolution.VERY_LARGE)
            Task.Wait(0.1)
        end
        P1Image:SetCameraCapture(camCapture1)
        while camCapture2==nil do
            camCapture2 = P2:Capture(CameraCaptureResolution.VERY_LARGE)
            Task.Wait(0.1)
        end
        P2Image:SetCameraCapture(camCapture2)
        while camCapture3==nil do
            camCapture3 = P3:Capture(CameraCaptureResolution.VERY_LARGE)
            Task.Wait(0.1)
        end
        P3Image:SetCameraCapture(camCapture3)
        while camCapture4==nil do
            camCapture4 = P4:Capture(CameraCaptureResolution.VERY_LARGE)
            Task.Wait(0.1)
        end
        P4Image:SetCameraCapture(camCapture4)
        while mainCapture==nil do
            mainCapture = MainCamera:Capture(CameraCaptureResolution.VERY_LARGE)
            Task.Wait(0.1)
        end
        Screen:SetCameraCapture(mainCapture)
        --LoadingPortal.visibility = Visibility.FORCE_OFF -----------------------------------------STARTING VS SCREEN -----------------------------------------------------------
        Screen.visibility = Visibility.INHERIT
        ReadyForAnim = true
        PlatesState[1] = true
        NamesState[1] = true
        ShinyState[1] = true
        PlayVSscreen()
    else 
        return
    end
end


function PlayVSscreen()
    if ROOT == VS2Players then
        P1Name.parent.rotationAngle = P1Name.parent.rotationAngle - 200
        P2Name.parent.rotationAngle = P2Name.parent.rotationAngle - 200
    elseif ROOT == VS3Players  then
        P1Name.parent.rotationAngle = P1Name.parent.rotationAngle - 200
        P2Name.parent.rotationAngle = P2Name.parent.rotationAngle - 200
        P3Name.parent.rotationAngle = P3Name.parent.rotationAngle - 200
    elseif ROOT == VS4Players  then
        P1Name.parent.rotationAngle = P1Name.parent.rotationAngle - 200
        P2Name.parent.rotationAngle = P2Name.parent.rotationAngle - 200
        P3Name.parent.rotationAngle = P3Name.parent.rotationAngle - 200
        P4Name.parent.rotationAngle = P4Name.parent.rotationAngle - 200
    end
    ROOT.visibility = Visibility.INHERIT
    CardTimer = CardTimerDuration
    NameplateTimer = NameplateTimerDuration
    ShinyTimer = ShinyTimerDuration
end



function Tick()
    if ReadyForAnim then
        Snap()
        if ROOT == VS2Players then
            if PlatesState[1] then
                CurveIt(ROOT:GetChildren()[6],CardTimer, CardTimerDuration, CardCurve, yDISABLED_POSITION)
            elseif PlatesState[2] then
                CurveIt(ROOT:GetChildren()[7],CardTimer, CardTimerDuration, CardCurve, yDISABLED_POSITION)
            end
            if NamesState[1] then
                CurveIt(ROOT:GetChildren()[5]:GetChildren()[2]:GetChildren()[1],NameplateTimer, NameplateTimerDuration, NameplateCurve, xDISABLED_POSITION)
            elseif NamesState[2] then
                CurveIt(ROOT:GetChildren()[4]:GetChildren()[2]:GetChildren()[1],NameplateTimer, NameplateTimerDuration, NameplateCurve, xDISABLED_POSITION)
            end
            if ShinyState[1] then
                CurveIt(ROOT:GetChildren()[5]:GetChildren()[1]:GetChildren()[2],ShinyTimer, ShinyTimerDuration, ShinyCurve, yyDISABLED_POSITION)
            elseif ShinyState[2] then
                CurveIt(ROOT:GetChildren()[4]:GetChildren()[1]:GetChildren()[2],ShinyTimer, ShinyTimerDuration, ShinyCurve, yyDISABLED_POSITION)
            end

        elseif ROOT == VS3Players  then
            if PlatesState[1] then
                CurveIt(ROOT:GetChildren()[6],CardTimer, CardTimerDuration, CardCurve, yDISABLED_POSITION)
            elseif PlatesState[2] then
                CurveIt(ROOT:GetChildren()[7],CardTimer, CardTimerDuration, CardCurve, yDISABLED_POSITION)
            elseif PlatesState[3] then
                CurveIt(ROOT:GetChildren()[8],CardTimer, CardTimerDuration, CardCurve, yDISABLED_POSITION)
            end
            if NamesState[1] then
                CurveIt(ROOT:GetChildren()[5]:GetChildren()[2]:GetChildren()[1],NameplateTimer, NameplateTimerDuration, NameplateCurve, xDISABLED_POSITION)
            elseif NamesState[2] then
                CurveIt(ROOT:GetChildren()[4]:GetChildren()[2]:GetChildren()[1],NameplateTimer, NameplateTimerDuration, NameplateCurve, xDISABLED_POSITION)
            elseif NamesState[3] then
                CurveIt(ROOT:GetChildren()[3]:GetChildren()[2]:GetChildren()[1],NameplateTimer, NameplateTimerDuration, NameplateCurve, xDISABLED_POSITION)
            end
            if ShinyState[1] then
                CurveIt(ROOT:GetChildren()[5]:GetChildren()[1]:GetChildren()[2],ShinyTimer, ShinyTimerDuration, ShinyCurve, yyDISABLED_POSITION)
            elseif ShinyState[2] then
                CurveIt(ROOT:GetChildren()[4]:GetChildren()[1]:GetChildren()[2],ShinyTimer, ShinyTimerDuration, ShinyCurve, yyDISABLED_POSITION)
            elseif ShinyState[3] then
                CurveIt(ROOT:GetChildren()[3]:GetChildren()[1]:GetChildren()[2],ShinyTimer, ShinyTimerDuration, ShinyCurve, yyDISABLED_POSITION)
            end
            
        elseif ROOT == VS4Players  then
            if PlatesState[1] then
                CurveIt(ROOT:GetChildren()[6],CardTimer, CardTimerDuration, CardCurve, yDISABLED_POSITION)
            elseif PlatesState[2] then
                CurveIt(ROOT:GetChildren()[7],CardTimer, CardTimerDuration, CardCurve, yDISABLED_POSITION)
            elseif PlatesState[3] then
                CurveIt(ROOT:GetChildren()[8],CardTimer, CardTimerDuration, CardCurve, yDISABLED_POSITION)
            elseif PlatesState[4] then
                CurveIt(ROOT:GetChildren()[9],CardTimer, CardTimerDuration, CardCurve, yDISABLED_POSITION)
            end
            if NamesState[1] then
                CurveIt(ROOT:GetChildren()[5]:GetChildren()[2]:GetChildren()[1],NameplateTimer, NameplateTimerDuration, NameplateCurve, xDISABLED_POSITION)
            elseif NamesState[2] then
                CurveIt(ROOT:GetChildren()[4]:GetChildren()[2]:GetChildren()[1],NameplateTimer, NameplateTimerDuration, NameplateCurve, xDISABLED_POSITION)
            elseif NamesState[3] then
                CurveIt(ROOT:GetChildren()[3]:GetChildren()[2]:GetChildren()[1],NameplateTimer, NameplateTimerDuration, NameplateCurve, xDISABLED_POSITION)
            elseif NamesState[4] then
                CurveIt(ROOT:GetChildren()[2]:GetChildren()[2]:GetChildren()[1],NameplateTimer, NameplateTimerDuration, NameplateCurve, xDISABLED_POSITION)
            end
            if ShinyState[1] then
                CurveIt(ROOT:GetChildren()[5]:GetChildren()[1]:GetChildren()[2],ShinyTimer, ShinyTimerDuration, ShinyCurve, yyDISABLED_POSITION)
            elseif ShinyState[2] then
                CurveIt(ROOT:GetChildren()[4]:GetChildren()[1]:GetChildren()[2],ShinyTimer, ShinyTimerDuration, ShinyCurve, yyDISABLED_POSITION)
            elseif ShinyState[3] then
                CurveIt(ROOT:GetChildren()[3]:GetChildren()[1]:GetChildren()[2],ShinyTimer, ShinyTimerDuration, ShinyCurve, yyDISABLED_POSITION)
            elseif ShinyState[4] then
                CurveIt(ROOT:GetChildren()[2]:GetChildren()[1]:GetChildren()[2],ShinyTimer, ShinyTimerDuration, ShinyCurve, yyDISABLED_POSITION)
            end
        end
    end

    if CardTimer <= 0 then
        CardTimer = 0
        if PlatesState[1] then
            PlatesState[1] = false
            PlatesState[2] = true
            CardTimer = CardTimerDuration
        elseif PlatesState[2] then
            PlatesState[2] = false
            PlatesState[3] = true
            CardTimer = CardTimerDuration
        elseif PlatesState[3] then
            PlatesState[3] = false
            PlatesState[4] = true
            CardTimer = CardTimerDuration
        elseif PlatesState[4] then
            PlatesState[4] = false
        end
    elseif CardTimer > 0 then
        CardTimer = CardTimer - 1
    end

    if NameplateTimer <= 0 then
        NameplateTimer = 0
        if NamesState[1] then
            NamesState[1] = false
            NamesState[2] = true
            NameplateTimer = NameplateTimerDuration
        elseif NamesState[2] then
            NamesState[2] = false
            NamesState[3] = true
            NameplateTimer = NameplateTimerDuration
        elseif NamesState[3] then
            NamesState[3] = false
            NamesState[4] = true
            NameplateTimer = NameplateTimerDuration
        elseif NamesState[4] then
            NamesState[4] = false
        end
    elseif NameplateTimer > 0 then
        NameplateTimer = NameplateTimer - 1
    end
    if ShinyTimer <= 0 then
        ShinyTimer = 0
        if ShinyState[1] then
            ShinyState[1] = false
            ShinyState[2] = true
            ShinyTimer = ShinyTimerDuration
        elseif ShinyState[2] then
            ShinyState[2] = false
            if ROOT == VS2Players then
                ReadyForAnim = false
                ReadyToFight = true
            end
            ShinyState[3] = true
            ShinyTimer = ShinyTimerDuration
        elseif ShinyState[3] then
            ShinyState[3] = false
            if ROOT == VS3Players then
                ReadyForAnim = false
                ReadyToFight = true
            end
            ShinyState[4] = true
            ShinyTimer = ShinyTimerDuration
        elseif ShinyState[4] then
            ShinyState[4] = false
            if ROOT == VS4Players then
                ReadyForAnim = false
                ReadyToFight = true
            end
        end
    elseif ShinyTimer > 0 then
        ShinyTimer = ShinyTimer - 1
    end
    if ReadyToFight then ------------------------------------------------------- CHANGE TO FIGHT SCENE ---------------------------------------------------------------------
        --LogoPortal.visibility = Visibility.FORCE_ON
        ReadyToFight = false
        for a=1,10 do
            ROOT.opacity=1-a/10
            Task.Wait(0.05)
        end
        Screen.visibility = Visibility.FORCE_OFF
    end
end


function Snap()
    camCapture1:Refresh()
    camCapture2:Refresh()
    camCapture3:Refresh()
    camCapture4:Refresh()
    mainCapture:Refresh()
end

function CurveIt(item, timer, duration, curve, pos)
    local percent = 0
    percent = curve:GetValue(timer)
            SetUIPosition(item,percent,pos)
end

function SetUIPosition(UI,percent,DISABLED_POSITION)

    for index, obj in ipairs(UI.parent:GetChildren()) do
        if obj.id == UI.id then
            if DISABLED_POSITION == yDISABLED_POSITION then
            obj.y = (1 - percent)+DISABLED_POSITION
            elseif DISABLED_POSITION == yyDISABLED_POSITION then
            obj.y = percent+DISABLED_POSITION
            else
            obj.rotationAngle = percent+DISABLED_POSITION
            end
        end
    end

end

Events.Connect("RunVS",RunVS)