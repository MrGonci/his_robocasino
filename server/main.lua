ESX               = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

CasinoHeist = {
    ['finishedFriends'] = 0,
}

local cooldown = 0
local cooldowntime = 1 * 6000

function Timer()
	cooldown = 1
	Citizen.Wait(cooldowntime)
	cooldown = 0
end

RegisterServerEvent('his_robocasino:robo')
AddEventHandler('his_robocasino:robo', function(text)
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
	local xPlayers = ESX.GetPlayers()
	local police = 0
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			police = police+1
		end
	end
		if cooldown == 0 then
			TriggerClientEvent("his_robocasino:empezar", source)
			Citizen.Wait(1000)
			Timer()
		end

		if cooldown == 1 then
			TriggerClientEvent("his_robocasino:notifiacionsonido", source, _U('robbed_recent'))
		end

		if police < Config.LSPD then
			TriggerClientEvent("his_robocasino:notifiacionsonido", source, _U('police'))
		end
end)

RegisterServerEvent('his_robocasino:entregarkey')
AddEventHandler('his_robocasino:entregarkey', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)	
	--xPlayer.addMoney(math.random(Config.MinReward,Config.MaxReward))
	xPlayer.addInventoryItem("key1", "1")
	TriggerClientEvent("his_robocasino:partedos", source)
end)

RegisterServerEvent('his_robocasino:final')
AddEventHandler('his_robocasino:final', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)	
	--xPlayer.addMoney(math.random(Config.MinReward,Config.MaxReward))
	xPlayer.removeInventoryItem("key1", "1")
	TriggerClientEvent("his_robocasino:partetres", source)
end)


RegisterServerEvent('his_robocasino:dardinero')
AddEventHandler('his_robocasino:dardinero', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)	
	xPlayer.addMoney("275000")
end)

RegisterServerEvent("his_robocasino:alarma_s")
AddEventHandler("his_robocasino:alarma_s", function(modo)
	TriggerClientEvent("his_robocasino:alarma", -1, modo)
end)

RegisterServerEvent("his_robocasino:huir")
AddEventHandler("his_robocasino:huir", function()
	TriggerClientEvent("his_robocasino:huida", source)
end)