local HourArrow = script:GetCustomProperty("HourArrow"):WaitForObject()
local MinArrow = script:GetCustomProperty("MinArrow"):WaitForObject()
local Speed = script:GetCustomProperty("Speed")

function Tick()
    MinArrow.rotationAngle=MinArrow.rotationAngle+Speed
    HourArrow.rotationAngle=HourArrow.rotationAngle+Speed/12
end