function OnBindingPressed(player, bindingPressed)
    if bindingPressed == "ability_extra_50" then
        Game.StartRound()
        print("started")
    end
end

function OnPlayerJoined(player)
	local data = Storage.GetPlayerData(player)
	
    local armour = data["armour"] or 1  -- 1- light /2- ok/ 3- heavy
    local weapon = data["weapon"] or 1	-- 1- brawler /2- swordfighter /3- gunner
    -- Each time they join they gain 1 XP. Stop and play the game again to test that this value keeps going up
    player:SetResource("armour", armour)
    player:SetResource("weapon", weapon)
    
    player.bindingPressedEvent:Connect(OnBindingPressed)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)

Task.Wait(15)

--Game.StartRound()
--print("started")