ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_pursuit_helper:sendblip')
AddEventHandler('esx_pursuit_helper:sendblip', function(veh)
	local xPlayers = ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])

		if xPlayer.job.name == 'police' then
			TriggerClientEvent('esx_pursuit_helper:trackerset', xPlayers[i],veh)
		end
	end
end)

RegisterServerEvent('esx_pursuit_helper:removetracker')
AddEventHandler('esx_pursuit_helper:removetracker', function(gps)
	local xPlayers = ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])

		if xPlayer.job.name == 'police' then
			TriggerClientEvent('esx_pursuit_helper:trackerremove', xPlayers[i],gps)
		end
	end
end)

RegisterServerEvent('esx_pursuit_helper:PlayWithinDistance')
AddEventHandler('esx_pursuit_helper:PlayWithinDistance', function(maxDistance, soundFile, soundVolume)
    TriggerClientEvent('esx_pursuit_helper:playsoundlocal', -1, source, maxDistance, soundFile, soundVolume)
end)

RegisterServerEvent('esx_pursuit_helper:findtrackedcar')
AddEventHandler('esx_pursuit_helper:findtrackedcar', function(vehicle)
    TriggerClientEvent('esx_pursuit_helper:playsoundontrackedcar', -1, vehicle)
end)
