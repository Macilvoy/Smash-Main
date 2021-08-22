function OnPlayerJoined(player)
	local data = Storage.GetPlayerData(player)
	
    local armour = data["armour"] or 1  -- 1- light /2- ok/ 3- heavy
    local weapon = data["weapon"] or 1	-- 1- brawler /2- swordfighter /3- gunner
    -- Each time they join they gain 1 XP. Stop and play the game again to test that this value keeps going up
    player:SetResource("armour", armour)
    player:SetResource("weapon", weapon)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)

Task.Wait(5)

Game.StartRound()
print("started")