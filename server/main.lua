local ESX = nil
 
TriggerEvent('esx:getSharedObject', function( obj ) ESX = obj end)
 
ESX.RegisterUsableItem('component_suppressor', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_weapcomponets:use', source, 'suppressor')
	xPlayer.removeInventoryItem('component_suppressor', 1)
end)

ESX.RegisterUsableItem('component_compensator', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_weapcomponets:use', source, 'compensator')
	xPlayer.removeInventoryItem('component_compensator', 1)
end)
 
ESX.RegisterUsableItem('component_flashlight', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_weapcomponets:use', source, 'flashlight')
	xPlayer.removeInventoryItem('component_flashlight', 1)
end)


ESX.RegisterUsableItem('component_clip_extended', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_weapcomponets:use', source, 'clip')
	xPlayer.removeInventoryItem('component_clip_extended', 1)
end)

ESX.RegisterUsableItem('component_clip_drum', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_weapcomponets:use', source, 'drum')
	xPlayer.removeInventoryItem('component_clip_drum', 1)
end)

ESX.RegisterUsableItem('component_clip_box', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_weapcomponets:use', source, 'Drum')
	xPlayer.removeInventoryItem('component_clip_box', 1)
end)

ESX.RegisterUsableItem('component_scope', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_weapcomponets:use', source, 'scope')
	xPlayer.removeInventoryItem('component_scope', 1)
end)

ESX.RegisterUsableItem('component_scope_advanced', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_weapcomponets:use', source, 'Scope')
	xPlayer.removeInventoryItem('component_scope_advanced', 1)
end)

ESX.RegisterUsableItem('component_scope_thermal', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_weapcomponets:use', source, 'TScope')
	xPlayer.removeInventoryItem('component_scope_thermal', 1)
end)

ESX.RegisterUsableItem('component_scope_night', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_weapcomponets:use', source, 'NVScope')
	xPlayer.removeInventoryItem('component_scope_night', 1)
end)

ESX.RegisterUsableItem('component_scope_holo', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_weapcomponets:use', source, 'HoloScope')
	xPlayer.removeInventoryItem('component_scope_holo', 1)
end)

ESX.RegisterUsableItem('component_grip', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_weapcomponets:use', source, 'grip')
	xPlayer.removeInventoryItem('component_grip', 1)
end)
 
ESX.RegisterUsableItem('component_barrel_heavy', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_weapcomponets:use', source, 'barrel')
	xPlayer.removeInventoryItem('component_barrel_heavy', 1)
end)

ESX.RegisterUsableItem('component_ironsights', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_weapcomponets:use', source, 'ironsight')
	xPlayer.removeInventoryItem('component_ironsights', 1)
end)

ESX.RegisterUsableItem('component_luxary_finish', function( source )
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_weapcomponets:use', source, 'skin')
	xPlayer.removeInventoryItem('component_luxary_finish', 1)
end)


RegisterServerEvent('esx_weapcomponets:giveBack')
AddEventHandler('esx_weapcomponets:giveBack', function(item)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.addInventoryItem(item, 1)
end)
