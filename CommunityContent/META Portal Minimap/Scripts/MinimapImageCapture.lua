--[[
Copyright 2021 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

------------------------------------------------------------------------------------------------------------------------
-- Minimap Image Client
-- Author Morticai (META) - (https://www.coregames.com/user/d1073dbcc404405cbef8ce728e53d380)
-- Date: 2021/6/10
-- Version 0.0.1
------------------------------------------------------------------------------------------------------------------------
-- OBJECTS
------------------------------------------------------------------------------------------------------------------------

local LOCAL_PLAYER = Game.GetLocalPlayer()
local ROOT = script:GetCustomProperty("MinimapSetup"):WaitForObject()
local UIContainer = script:GetCustomProperty("UIContainer"):WaitForObject()
local Minimap = script:GetCustomProperty("Minimap"):WaitForObject()
local SCREENSHOT_CAMERA = script:GetCustomProperty("Camera"):WaitForObject()
local ObjectGroup = script:GetCustomProperty("3D"):WaitForObject()

------------------------------------------------------------------------------------------------------------------------
-- CUSTOM PROPERTIES
------------------------------------------------------------------------------------------------------------------------

local isDevMode = ROOT:GetCustomProperty("IsDevMode")
local enterCameraMode = ROOT:GetCustomProperty("CameraModeKeybind")
local zoomCameraOut = ROOT:GetCustomProperty("CameraZoomOutKeybind")
local zoomCameraIn = ROOT:GetCustomProperty("CameraZoomInKeybind")
local hideMapObject = ROOT:GetCustomProperty("HideMapObjectKeybind")

------------------------------------------------------------------------------------------------------------------------
-- GLOBAL FUNCTIONS
------------------------------------------------------------------------------------------------------------------------

if isDevMode then
    while not Minimap.context.GetBounds do
        Task.Wait()
    end

    local boundsWidth, boundsHeight, boundsLeft, boundsRight, boundsTop, boundsBottom, boundsHigh, boundsLow =
        Minimap.context.GetBounds()

    function OnBindingPressed(player, keybind)
        local camViewWidth = SCREENSHOT_CAMERA.viewWidth
        if keybind == zoomCameraIn then
            SCREENSHOT_CAMERA.viewWidth = camViewWidth + (camViewWidth * 0.01)
        elseif keybind == zoomCameraOut then
            SCREENSHOT_CAMERA.viewWidth = camViewWidth - (camViewWidth * 0.01)
        elseif keybind == enterCameraMode then
            UIContainer.visibility = Visibility.FORCE_OFF
            local xCenter = (boundsRight + boundsLeft) / 2
            local yCenter = (boundsBottom + boundsTop) / 2
            local zCenter = (boundsHigh + boundsLow) / 2

            SCREENSHOT_CAMERA:SetWorldPosition((Vector3.New(xCenter, yCenter, zCenter)))

            local screenRes = UI.GetScreenSize()
            local currentScreenAspect = screenRes.x / screenRes.y
            local boundsAspectRatio = boundsWidth / boundsHigh

            SCREENSHOT_CAMERA.viewWidth = boundsWidth

            LOCAL_PLAYER:SetOverrideCamera(SCREENSHOT_CAMERA)
        elseif keybind == hideMapObject then
            for _, child in ipairs(ObjectGroup:GetChildren()) do
                child.visibility = Visibility.FORCE_OFF
            end
        end
    end
    LOCAL_PLAYER.bindingPressedEvent:Connect(OnBindingPressed)
end
