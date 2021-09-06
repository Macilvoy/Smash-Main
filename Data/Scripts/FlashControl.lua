local Flash1VFX = script:GetCustomProperty("Flash1VFX"):WaitForObject()
local Flash2VFX = script:GetCustomProperty("Flash2VFX"):WaitForObject()
local Group = script:GetCustomProperty("Group"):WaitForObject()

Group:LookAt(Vector3.ZERO)
Task.Wait(0.1)

Flash1VFX:Play()
Flash2VFX:Play()