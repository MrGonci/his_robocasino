local PlayerData                = {}
ESX                             = nil

local heist = false
local tags = false
local searched = 0
local location1 = false
local location2 = false
local location3 = false

local partedos = false

local searchedloot = 0
local location4 = false
local location5 = false
local location6 = false

local partecuantro = false

Citizen.CreateThread(function()
    while ESX == nil do
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
      Citizen.Wait(0)
    end
  end)  

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

--- Funciones
        
RegisterNetEvent("his_robocasino:empezar")
AddEventHandler("his_robocasino:empezar", function()
  heist = true
  tags = true
  Citizen.CreateThread(function()
    while true do 
      Citizen.Wait(1)
        local ped = PlayerPedId()
        if location1 == false and tags == true then
            DrawMarker(0, 958.3,63.5,75.4, 0, 0, 0, 0, 0, 155.0, 0.1, 0.1, 0.1, 255, 255, 255, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), 958.3,63.5,75.4, true) < 1.5 then
                ESX.ShowFloatingHelpNotification('~s~Presiona~y~ E ~s~para buscar.', vector3(958.3,63.5,75.4))
                    if IsControlJustReleased(1, 51) then
                        animacionBuscar()
                        location1 = true
                        searched = searched+1
                    end
                end
            end
        if location2 == false and tags == true then
            DrawMarker(0, 962.4, 58.9, 75.4, 0, 0, 0, 0, 0, 155.0, 0.1, 0.1, 0.1, 255, 255, 255, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), 962.4, 58.9, 75.4, true) < 1.5 then
                ESX.ShowFloatingHelpNotification('~s~Presiona~y~ E ~s~para buscar.', vector3(962.4, 58.9, 75.4))
                    if IsControlJustReleased(1, 51) then
                        animacionBuscar()
                        location2 = true
                        searched = searched+1
                    end
                end
            end
        if location3 == false and tags == true then
            DrawMarker(0, 957.4, 55.1, 75.4, 0, 0, 0, 0, 0, 155.0, 0.1, 0.1, 0.1, 255, 255, 255, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), 957.4, 55.1, 75.4, true) < 1.5 then
                ESX.ShowFloatingHelpNotification('~s~Presiona~y~ E ~s~para buscar.', vector3(957.4, 55.1, 75.4))
                    if IsControlJustReleased(1, 51) then
                        animacionBuscar()
                        location3 = true
                        searched = searched+1
                    end
                end
            end
        end
    end)
end)


RegisterNetEvent("his_robocasino:partedos")
AddEventHandler("his_robocasino:partedos", function()
    Citizen.CreateThread(function()
        Citizen.Wait(1)
        if partedos == true then
            local ped = PlayerPedId()
            ESX.ShowHelpNotification("~s~Baja a la cámara acorada desde el ~y~ascensor~s~.")
            while true do
                Citizen.Wait(1)
                if GetDistanceBetweenCoords(GetEntityCoords(ped), 975.9, 71.5, 75.4, true) < 50 then
                    DrawMarker(0, 975.9, 71.5, 75.4, 0, 0, 0, 0, 0, 155.0, 0.1, 0.1, 0.1, 255, 255, 255, 155, 0, 0, 2, 0, 0, 0, 0)
                    if GetDistanceBetweenCoords(GetEntityCoords(ped), 975.9, 71.5, 75.4, true) < 1.5 then
                        ESX.ShowFloatingHelpNotification('~s~Presiona~y~ E ~s~para bajar a la cámara acoracada.', vector3(975.9, 71.5, 75.4))
                        if IsControlJustReleased(1, 51) then
                            animacionAscensor()
                            teleportacamara(ped, 968.1, 15.6, 59.8, 234.54)
                            TriggerServerEvent("his_robocasino:final")
                            print("3")
                            partedos = false
                            partetres = true
                        end
                    end
                end
            end
        end
    end)
end)

RegisterNetEvent("his_robocasino:partetres")
AddEventHandler("his_robocasino:partetres", function()
    Citizen.CreateThread(function()

        local ped = PlayerPedId()
        Citizen.Wait(2000)
        ESX.ShowHelpNotification("~s~Coge todo lo que puedas.~s~.")
        while true do 
            if partetres == true then
                Citizen.Wait(1)
                if location4 == false then
                    DrawMarker(0, 994.1, 53.7, 59.8, 0, 0, 0, 0, 0, 155.0, 0.1, 0.1, 0.1, 255, 255, 255, 155, 0, 0, 2, 0, 0, 0, 0)
                    if GetDistanceBetweenCoords(GetEntityCoords(ped), 994.1, 53.7, 59.8, true) < 1.5 then
                        ESX.ShowFloatingHelpNotification('~s~Presiona~y~ E ~s~para coger el botin.', vector3(994.1, 53.7, 59.8))
                        if IsControlJustReleased(1, 51) then
                            animacionBuscar()
                            location4 = true
                            searchedloot = searchedloot+1
                        end
                    end
                end
                if location5 == false then
                    DrawMarker(0, 995.2, 46.5, 59.8, 0, 0, 0, 0, 0, 155.0, 0.1, 0.1, 0.1, 255, 255, 255, 155, 0, 0, 2, 0, 0, 0, 0)
                    if GetDistanceBetweenCoords(GetEntityCoords(ped), 995.2, 46.5, 59.8, true) < 1.5 then
                        ESX.ShowFloatingHelpNotification('~s~Presiona~y~ E ~s~para coger el botin.', vector3(995.2, 46.5, 59.8))
                        if IsControlJustReleased(1, 51) then
                            animacionBuscar()
                            location5 = true
                            searchedloot = searchedloot+1
                        end
                    end
                end
                if location6 == false then
                    DrawMarker(0, 983.1, 49.2, 59.8, 0, 0, 0, 0, 0, 155.0, 0.1, 0.1, 0.1, 255, 255, 255, 155, 0, 0, 2, 0, 0, 0, 0)
                    if GetDistanceBetweenCoords(GetEntityCoords(ped), 983.1, 49.2, 59.8, true) < 1.5 then
                        ESX.ShowFloatingHelpNotification('~s~Presiona~y~ E ~s~para coger el botin.', vector3(983.1, 49.2, 59.8))
                        if IsControlJustReleased(1, 51) then
                            animacionBuscar()
                            location6 = true
                            searchedloot = searchedloot+1
                        end
                    end
                end
            end
        end
    end)
end)

RegisterNetEvent('his_robocasino:alarma')
AddEventHandler('his_robocasino:alarma', function(estado)
    if estado == 1 then
        PlaySound = true
        SendNUIMessage({transactionType = 'playSound'})
    elseif estado == 2 then
        PlaySound = false
        SendNUIMessage({transactionType = 'stopSound'})
    end
end)

--- Robo

Citizen.CreateThread(function()
    while true do
      Citizen.Wait(1)
        local ped = PlayerPedId()
          if heist == false then
              if GetDistanceBetweenCoords(GetEntityCoords(ped), 955.36,56.1, 75.44, true) < 50 then
                  DrawMarker(29, 955.36,56.1, 75.44, 0, 0, 0, 0, 0, 75.0, 0.50, 0.50, 0.50, 255, 0, 0, 155, 1, 0, 2, 0, 0, 0, 0)
                  if GetDistanceBetweenCoords(GetEntityCoords(ped), 955.36,56.1, 75.44, true) < 1.5 then
                      limpiar()
                      ESX.ShowFloatingHelpNotification('~s~Presiona~y~ E ~s~para robar el casino', vector3(955.36,56.1, 75.44))
                      if IsControlJustReleased(1, 51) then
                          Citizen.Wait(1000)
                          TriggerServerEvent("his_robocasino:robo")
                          ESX.ShowHelpNotification("~s~Busca la ~y~Tarjeta de seguridad ~s~en la oficina del gerente.")
                      end
                  end
              end
          end
      end
  end)
  
Citizen.CreateThread(function()
    while searchedloot < 3 do 
        Citizen.Wait(70)
        if searchedloot == 1 then
            Citizen.Wait(1)
            ESX.ShowHelpNotification("~s~Has robado todo el ~y~dinero~s~ posible. El sistema de ascensores acaba de ser desactivado... Busca la forma de huir de la camara acorazada.")
            TriggerServerEvent("his_robocasino:dardinero")
            searchedloot = 0
        end
    end
end)

RegisterNetEvent("his_robocasino:notifiacionsonido")
AddEventHandler("his_robocasino:notifiacionsonido", function(text)
    ESX.ShowHelpNotification(text)
    PlaySoundFrontend(-1, "HACKING_SUCCESS", 0, 1)
end)

Citizen.CreateThread(function()
      while true do
          Citizen.Wait(1)
          local ped = PlayerPedId()
          if GetDistanceBetweenCoords(GetEntityCoords(ped), 983.93,61.66,78.50, true) > 100 then
              heist = false
              tags = false
          end
      end
  end)

Citizen.CreateThread(function()
    while searched < 3 do 
        Citizen.Wait(70)
        if searched == 1 and heist == true then
            heist = false
            tags = false
            searched = 0
            Citizen.Wait(1)
            ESX.ShowHelpNotification("~s~Has encontrado la ~y~tarjeta de seguridad~s~.")
            partedos = true
            Citizen.Wait(1000)
            TriggerServerEvent("his_robocasino:entregarkey")
        end
    end
end)

-- Animaciones y otros

function loadModel(model)
    if type(model) == 'number' then
        model = model
    else
        model = GetHashKey(model)
    end
    while not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(0)
    end
end

function loadAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Citizen.Wait(0)
    end
end

function teleportacamara(ped, x, y, z, heading)
    Citizen.CreateThread(function()
        TriggerServerEvent("his_robocasino:alarma_s", 1)
        SetEntityCoords(ped, x, y, z)
        SetEntityHeading(ped, heading)
        Citizen.Wait(12000)
        TriggerServerEvent("his_robocasino:alarma_s", 2)
    end)
end

function animacionBuscar()
    local ped = PlayerPedId()
    Citizen.CreateThread(function()
      RequestAnimDict("mini@triathlon")
      Citizen.Wait(100)
      TaskPlayAnim((ped), 'mini@triathlon', 'rummage_bag', 2.0, 2.0, -1, 81, 0, 0, 0, 0)
      FreezeEntityPosition(PlayerPedId(), true)
      Citizen.Wait(20000)
      ClearPedTasks(ped)
      FreezeEntityPosition(PlayerPedId(), false)
    end)
end

function animacionAscensor()
	local playerPed = GetPlayerPed(-1)
    TaskStartScenarioInPlace(playerPed, "PROP_HUMAN_ATM", 0, true)  
    FreezeEntityPosition(PlayerPedId(), true)
    Citizen.Wait(20000)
    ClearPedTasks(playerPed)
    FreezeEntityPosition(PlayerPedId(), false)
end

function teleportarriba(ped, x, y, z, heading)
    Citizen.CreateThread(function()
        while not IsScreenFadedOut() do
          Wait(0)
        end
        SetEntityCoords(ped, x, y, z)
        SetEntityHeading(ped, heading)
    end)
end

function limpiar()
    heist = false
    tags = false
    searched = 0
    location1 = false
    location2 = false
    location3 = false
    
    partedos = false
    
    searchedloot = 0
    location4 = false
    location5 = false
    location6 = false
    
    partecuantro = false
end

