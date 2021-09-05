local RPW1 = script:GetCustomProperty("RPW1")
local LPW1 = script:GetCustomProperty("LPW1")
local DHW2 = script:GetCustomProperty("DHW2")
local RPW3 = script:GetCustomProperty("RPW3")
local RPW4 = script:GetCustomProperty("RPW4")
local trigger = script:GetCustomProperty("Weapon"):WaitForObject()


if math.random(4)==1 then
    World.SpawnAsset(RPW1,{parent=script.parent,position=Vector3.New(10,-9,0),rotation=Rotation.New(0,45,90)})
    World.SpawnAsset(LPW1,{parent=script.parent,position=Vector3.New(0,11,0),rotation=Rotation.New(0,45,-90)})
    trigger:SetNetworkedCustomProperty("ID",1)
elseif math.random(3)==1 then
    World.SpawnAsset(DHW2,{parent=script.parent,position=Vector3.New(0,0,0),rotation=Rotation.New(0,0,0)})
    trigger:SetNetworkedCustomProperty("ID",2)
elseif math.random(2)==1 then
    World.SpawnAsset(RPW3,{parent=script.parent,position=Vector3.New(0,0,0),rotation=Rotation.New(0,30,90)})
    trigger:SetNetworkedCustomProperty("ID",3)
else
    World.SpawnAsset(RPW4,{parent=script.parent,position=Vector3.New(0,0,0),rotation=Rotation.New(0,0,0)})
    trigger:SetNetworkedCustomProperty("ID",4)
end