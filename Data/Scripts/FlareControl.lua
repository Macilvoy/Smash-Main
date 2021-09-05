--local propTrigger_1 = script:GetCustomProperty("Trigger_1"):WaitForObject()
--local propTrigger_2 = script:GetCustomProperty("Trigger_2"):WaitForObject()

local Bomb = script:GetCustomProperty("Bomb")
local Flare = script:GetCustomProperty("Flare"):WaitForObject()
local Geo = script:GetCustomProperty("Geo"):WaitForObject()

Geo:MoveTo(Vector3.New(0,0,500), 0.25, false)
Task.Wait(0.5)
Geo:Destroy()
obj=World.SpawnAsset(Bomb)
obj:SetWorldPosition(script:GetWorldPosition()+Vector3.New(0,300,3000))
obj:GetCustomProperty("Trigger_1"):WaitForObject():SetNetworkedCustomProperty("Owner",Flare:GetCustomProperty("Owner"))
obj:GetCustomProperty("Trigger_2"):WaitForObject():SetNetworkedCustomProperty("Owner",Flare:GetCustomProperty("Owner"))
obj:GetCustomProperty("Trigger_1"):WaitForObject():SetNetworkedCustomProperty("Direction",2)
obj:GetCustomProperty("Trigger_2"):WaitForObject():SetNetworkedCustomProperty("Direction",2)


obj=World.SpawnAsset(Bomb)
obj:GetCustomProperty("Trigger_1"):WaitForObject():SetNetworkedCustomProperty("Owner",Flare:GetCustomProperty("Owner"))
obj:GetCustomProperty("Trigger_2"):WaitForObject():SetNetworkedCustomProperty("Owner",Flare:GetCustomProperty("Owner"))
obj:GetCustomProperty("Trigger_1"):WaitForObject():SetNetworkedCustomProperty("Direction",4)
obj:GetCustomProperty("Trigger_2"):WaitForObject():SetNetworkedCustomProperty("Direction",4)
obj:SetWorldPosition(script:GetWorldPosition()+Vector3.New(0,-300,3000))
Task.Wait(0.25)
obj=World.SpawnAsset(Bomb)
obj:GetCustomProperty("Trigger_1"):WaitForObject():SetNetworkedCustomProperty("Owner",Flare:GetCustomProperty("Owner"))
obj:GetCustomProperty("Trigger_2"):WaitForObject():SetNetworkedCustomProperty("Owner",Flare:GetCustomProperty("Owner"))
obj:GetCustomProperty("Trigger_1"):WaitForObject():SetNetworkedCustomProperty("Direction",2)
obj:GetCustomProperty("Trigger_2"):WaitForObject():SetNetworkedCustomProperty("Direction",2)
obj:SetWorldPosition(script:GetWorldPosition()+Vector3.New(0,600,3000))

obj=World.SpawnAsset(Bomb)
obj:GetCustomProperty("Trigger_1"):WaitForObject():SetNetworkedCustomProperty("Owner",Flare:GetCustomProperty("Owner"))
obj:GetCustomProperty("Trigger_2"):WaitForObject():SetNetworkedCustomProperty("Owner",Flare:GetCustomProperty("Owner"))
obj:GetCustomProperty("Trigger_1"):WaitForObject():SetNetworkedCustomProperty("Direction",4)
obj:GetCustomProperty("Trigger_2"):WaitForObject():SetNetworkedCustomProperty("Direction",4)
obj:SetWorldPosition(script:GetWorldPosition()+Vector3.New(0,-600,3000))
Task.Wait(0.25)
obj=World.SpawnAsset(Bomb)
obj:GetCustomProperty("Trigger_1"):WaitForObject():SetNetworkedCustomProperty("Owner",Flare:GetCustomProperty("Owner"))
obj:GetCustomProperty("Trigger_2"):WaitForObject():SetNetworkedCustomProperty("Owner",Flare:GetCustomProperty("Owner"))
obj:GetCustomProperty("Trigger_1"):WaitForObject():SetNetworkedCustomProperty("Direction",2)
obj:GetCustomProperty("Trigger_2"):WaitForObject():SetNetworkedCustomProperty("Direction",2)
obj:SetWorldPosition(script:GetWorldPosition()+Vector3.New(0,900,3000))

obj=World.SpawnAsset(Bomb)
obj:GetCustomProperty("Trigger_1"):WaitForObject():SetNetworkedCustomProperty("Owner",Flare:GetCustomProperty("Owner"))
obj:GetCustomProperty("Trigger_2"):WaitForObject():SetNetworkedCustomProperty("Owner",Flare:GetCustomProperty("Owner"))
obj:GetCustomProperty("Trigger_1"):WaitForObject():SetNetworkedCustomProperty("Direction",4)
obj:GetCustomProperty("Trigger_2"):WaitForObject():SetNetworkedCustomProperty("Direction",4)
obj:SetWorldPosition(script:GetWorldPosition()+Vector3.New(0,-900,3000))
Flare:Destroy()