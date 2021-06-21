ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent('Night_chooser')
AddEventHandler('Night_chooser', function(data)
    local tint = data.tint
    local ped = GetSelectedPedWeapon(PlayerPedId())

    if tint == 2 then
        TriggerEvent('weapon:true')
        Citizen.Wait(1000)
        SetPedWeaponTintIndex(PlayerPedId(), ped, tint)
    elseif tint == 1 then
        TriggerEvent('weapon:true')
        Citizen.Wait(1000)
        SetPedWeaponTintIndex(PlayerPedId(), ped, tint)
    elseif tint == 3 then
        TriggerEvent('weapon:true')
        Citizen.Wait(1000)
        SetPedWeaponTintIndex(PlayerPedId(), ped, tint)
    elseif tint == 4 then
        TriggerEvent('weapon:true')
        Citizen.Wait(1000)
        SetPedWeaponTintIndex(PlayerPedId(), ped, tint)
    elseif tint == 5 then
        TriggerEvent('weapon:true')
        Citizen.Wait(1000)
        SetPedWeaponTintIndex(PlayerPedId(), ped, tint)
    elseif tint == 6 then
        TriggerEvent('weapon:true')
        Citizen.Wait(1000)
        SetPedWeaponTintIndex(PlayerPedId(), ped, tint)
    elseif tint == 7 then
        TriggerEvent('weapon:true')
        Citizen.Wait(1000)
        SetPedWeaponTintIndex(PlayerPedId(), ped, tint)
    elseif tint == 0 then
        TriggerEvent('weapon:true')
        Citizen.Wait(1000)
        SetPedWeaponTintIndex(PlayerPedId(), ped, tint)    
    end                         

end)  

function loadAnimDict( dict )
    while ( not HasAnimDictLoaded( dict ) ) do
        RequestAnimDict( dict )
        Citizen.Wait( 5 )
    end
end

RegisterNetEvent('weapon:true')
AddEventHandler('weapon:true', function()
    ClearPedSecondaryTask(PlayerPedId())
    loadAnimDict("mp_arresting") 
    TaskPlayAnim(PlayerPedId(), "mp_arresting", "a_uncuff",  3.0, 3.0, 1000, 51, 0, false, false, false)
end)


RegisterNetEvent('Night:tintselect', function()
    TriggerEvent('nh-context:sendMenu', {
        {
            id = 1,
            header = "Tint selecter",
            txt = ""
        },
        {
            id = 2,
            header = "oro",
            txt = "",
            params = {
                event = "Night_chooser",
                args = {
                    tint = 2,
                    
                }
            }
        },
        {
            id = 3,
            header = "green",
            txt = "",
            params = {
                event = "Night_chooser",
                args = {
                    tint = 1,
                    
                }
            }
        },
        {
            id = 4,
            header = "pink",
            txt = "",
            params = {
                event = "Night_chooser",
                args = {
                    tint = 3,
                    
                }
            }
        },
		{
            id = 5,
            header = "army",
            txt = "",
            params = {
                event = "Night_chooser",
                args = {
                    tint = 4,
                    
                }
            }
        },
        {
            id = 6,
            header = "lspd",
            txt = "",
            params = {
                event = "Night_chooser",
                args = {
                    tint = 5,
                    
                }
            }
        },
        {
            id = 7,
            header = "orange",
            txt = "",
            params = {
                event = "Night_chooser",
                args = {
                    tint = 6,
                    
                }
            }
        },
        {
            id = 8,
            header = "platinum",
            txt = "",
            params = {
                event = "Night_chooser",
                args = {
                    tint = 7,
                    
                }
            }
        },
        {
            id = 9,
            header = "Normal",
            txt = "",
            params = {
                event = "Night_chooser",
                args = {
                    tint = 0,
                    
                }
            }
        },
        
        
    })
end)

RegisterCommand("tints", function(source, args, rawCommand)
   TriggerEvent('Night:tintselect')
end)    







Citizen.CreateThread(function()
    local xPlayer = ESX.GetPlayerData()

    if xPlayer.job.name == 'police' then

        local camper2 = AddBlipForCoord(2706.687, 2779.225, 37.878)

        SetBlipSprite (camper2, 365)
        SetBlipDisplay(camper2, 4)
        SetBlipScale  (camper2, 1.3)
        SetBlipColour (camper2, 5)
        SetBlipAsShortRange(camper2, true)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringPlayerName("Уул уурхай")
        EndTextCommandSetBlipName(camper2)

        table.insert(blipcache,camper2)

    else 
        RemoveBlip(camper2)

        

    end
end)