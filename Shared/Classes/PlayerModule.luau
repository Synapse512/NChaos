local PlayerModule = {}
PlayerModule.sessionData = {}
PlayerModule.__index = PlayerModule
	--this is so when a script calls a function with playerData, it knows to search PlayerModule for it
		--and is searched for the function

--explanation:
--1: when player joins, new function runs, creates playerData table for new player
	--playerData uses functions from PlayerModule so it doesnt have to create a function for each person
--2: we set PlayerModule as metatable for playerData so it can use its functions/contents
--3: we create sessionData var in PlayerModule, and assign the players user id with playerData
	--we do this because playerData cannot be accessed throught the player

function PlayerModule.new(player)
	local playerData = {}
	setmetatable(playerData, PlayerModule)
		--link the two tables so when playerData calls function, it knows to check PlayerModule 
			--since it doesnt have it
	local character = player.character or player.CharacterAdded:Wait()

	playerData.Player = player --we use userid from player to store session data 
	playerData.Character = character 
	playerData.isAlive = true

	PlayerModule.sessionData[player.UserId] = playerData
		--sessionData and playerData dont have to be synced, sD references pD    :)
	return playerData
end

function PlayerModule.Destroy(playerData)
	PlayerModule.sessionData[playerData.Player.UserId] = nil
	table.clear(playerData)
	setmetatable(playerData, nil)
		--write metatable for player data back to nil
end



return PlayerModule
