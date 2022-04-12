local ESX = nil
local weapons = {

    [GetHashKey('WEAPON_APPISTOL')] = {
        clip = GetHashKey("COMPONENT_APPISTOL_CLIP_02"),
        flashlight = GetHashKey("COMPONENT_AT_PI_FLSH"),
        suppressor = GetHashKey("COMPONENT_AT_PI_SUPP"),
        skin =  GetHashKey("COMPONENT_APPISTOL_VARMOD_LUXE")
    },

    [GetHashKey('WEAPON_COMBATPISTOL')] = {
        clip = GetHashKey("COMPONENT_COMBATPISTOL_CLIP_02"),
        flashlight = GetHashKey("COMPONENT_AT_PI_FLSH"),
        suppressor = GetHashKey("COMPONENT_AT_PI_SUPP"),
        skin =  GetHashKey("COMPONENT_COMBATPISTOL_VARMOD_LOWRIDER")
    },

    [GetHashKey('WEAPON_HEAVYPISTOL')] = {
        clip = GetHashKey("COMPONENT_HEAVYPISTOL_CLIP_02"),
        flashlight = GetHashKey("COMPONENT_AT_PI_FLSH"),
        suppressor = GetHashKey("COMPONENT_AT_PI_SUPP"),
        skin =  GetHashKey("COMPONENT_HEAVYPISTOL_VARMOD_LUXE")
    },

    [GetHashKey('WEAPON_REVOLVER')] = {
        skin =  GetHashKey("COMPONENT_REVOLVER_VARMOD_BOSS")
    },

    [GetHashKey('WEAPON_REVOLVER_MK2')] = {
        HoloScope = GetHashKey("COMPONENT_AT_SIGHTS"),
        scope = GetHashKey("COMPONENT_AT_SCOPE_MACRO_MK2"),
        flashlight = GetHashKey("COMPONENT_AT_PI_FLSH"),
        compensator = GetHashKey("COMPONENT_AT_PI_COMP_03"),
        skin =  GetHashKey("COMPONENT_REVOLVER_MK2_CAMO_IND_01")
    },

    [GetHashKey('WEAPON_PISTOL')] = {
        clip = GetHashKey("COMPONENT_PISTOL_CLIP_02"),
        flashlight = GetHashKey("COMPONENT_AT_PI_FLSH"),
        suppressor = GetHashKey("COMPONENT_AT_PI_SUPP"),
        skin =  GetHashKey("COMPONENT_PISTOL_VARMOD_LUXE")
    },


    [GetHashKey('WEAPON_PISTOL_MK2')] = {
        clip = GetHashKey("COMPONENT_PISTOL_MK2_CLIP_02"),
        scope = GetHashKey("COMPONENT_AT_PI_RAIL"),
        flashlight = GetHashKey("COMPONENT_AT_PI_FLSH_02"),
        suppressor = GetHashKey("COMPONENT_AT_PI_SUPP_02"),
        compensator = GetHashKey("COMPONENT_AT_PI_COMP"),
        skin =  GetHashKey("COMPONENT_PISTOL_MK2_CAMO_IND_01")
    },

    [GetHashKey('WEAPON_PISTOL50')] = {
        clip = GetHashKey("COMPONENT_PISTOL50_CLIP_02"),
        flashlight = GetHashKey("COMPONENT_AT_PI_FLSH"),
        suppressor = GetHashKey("COMPONENT_AT_AR_SUPP_02"),
        skin =  GetHashKey("COMPONENT_PISTOL50_VARMOD_LUXE")
    },

    [GetHashKey('WEAPON_SNSPISTOL')] = {
        clip = GetHashKey("COMPONENT_SNSPISTOL_CLIP_02"),
        skin =  GetHashKey("COMPONENT_SNSPISTOL_VARMOD_LOWRIDER")
    },

    [GetHashKey('WEAPON_SNSPISTOL_MK2')] = {
        clip = GetHashKey("COMPONENT_SNSPISTOL_MK2_CLIP_02"),
        scope = GetHashKey("COMPONENT_AT_PI_RAIL_02"),
        flashlight = GetHashKey("COMPONENT_AT_PI_FLSH_03"),
        suppressor = GetHashKey("COMPONENT_AT_PI_SUPP_02"),
        compensator = GetHashKey("COMPONENT_AT_PI_COMP_02"),
        skin =  GetHashKey("COMPONENT_SNSPISTOL_MK2_CAMO_IND_01")
    },

    [GetHashKey('WEAPON_VINTAGEPISTOL')] = {
        clip = GetHashKey("COMPONENT_VINTAGEPISTOL_CLIP_02"),
        suppressor = GetHashKey("COMPONENT_AT_PI_SUPP")
    },

    --Shotguns

    [GetHashKey('WEAPON_ASSAULTSHOTGUN')] = {
        clip = GetHashKey("COMPONENT_ASSAULTSHOTGUN_CLIP_02"),
        flashlight = GetHashKey("COMPONENT_AT_AR_FLSH"),
        suppressor = GetHashKey("COMPONENT_AT_AR_SUPP"),
        grip =  GetHashKey("COMPONENT_AT_AR_AFGRIP")
    },

    [GetHashKey('WEAPON_BULLPUPSHOTGUN')] = {
        flashlight = GetHashKey("COMPONENT_AT_AR_FLSH"),
        suppressor = GetHashKey("COMPONENT_AT_AR_SUPP_02"),
        grip =  GetHashKey("COMPONENT_AT_AR_AFGRIP")
    },

    [GetHashKey('WEAPON_COMBATSHOTGUN')] = {
        flashlight = GetHashKey("COMPONENT_AT_AR_FLSH"),
        suppressor = GetHashKey("COMPONENT_AT_AR_SUPP")
    },

    [GetHashKey('WEAPON_HEAVYSHOTGUN')] = {
        clip = GetHashKey("COMPONENT_HEAVYSHOTGUN_CLIP_02"),
        drum = GetHashKey("COMPONENT_HEAVYSHOTGUN_CLIP_03"),
        flashlight = GetHashKey("COMPONENT_AT_AR_FLSH"),
        suppressor = GetHashKey("COMPONENT_AT_PI_SUPP_02"),
        grip =  GetHashKey("COMPONENT_AT_AR_AFGRIP")
    },

    [GetHashKey('WEAPON_PUMPSHOTGUN')] = {
        flashlight = GetHashKey("COMPONENT_AT_AR_FLSH"),
        suppressor = GetHashKey("COMPONENT_AT_SR_SUPP"),
        skin =  GetHashKey("COMPONENT_PUMPSHOTGUN_VARMOD_LOWRIDER")
    },

    [GetHashKey('WEAPON_PUMPSHOTGUN_MK2')] = {
        HoloScope = GetHashKey("COMPONENT_AT_SIGHTS"),
        scope = GetHashKey("COMPONENT_AT_SCOPE_MACRO_MK2"),
        Scope = GetHashKey("COMPONENT_AT_SCOPE_SMALL_MK2"),
        flashlight = GetHashKey("COMPONENT_AT_AR_FLSH"),
        suppressor = GetHashKey("COMPONENT_AT_SR_SUPP_03"),
        compensator = GetHashKey("COMPONENT_AT_MUZZLE_08"),
        skin =  GetHashKey("COMPONENT_PUMPSHOTGUN_MK2_CAMO_IND_01")
    },

    [GetHashKey('WEAPON_SAWNOFFSHOTGUN')] = {
        skin =  GetHashKey("COMPONENT_SAWNOFFSHOTGUN_VARMOD_LUXE")
    },

    --- SMG & LMG

    [GetHashKey('WEAPON_ASSAULTSMG')] = {
        clip = GetHashKey("COMPONENT_ASSAULTSMG_CLIP_02"),
        scope = GetHashKey("COMPONENT_AT_SCOPE_MACRO"),
        flashlight = GetHashKey("COMPONENT_AT_AR_FLSH"),
        suppressor = GetHashKey("COMPONENT_AT_AR_SUPP_02"),
        skin =  GetHashKey("COMPONENT_ASSAULTSMG_VARMOD_LOWRIDER")
    },

    [GetHashKey('WEAPON_COMBATMG')] = {
        clip = GetHashKey("COMPONENT_COMBATMG_CLIP_02"),
        scope = GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"),
        grip = GetHashKey("COMPONENT_AT_AR_AFGRIP"),
        skin =  GetHashKey("COMPONENT_COMBATMG_VARMOD_LOWRIDER")
    },

    [GetHashKey('WEAPON_COMBATMG_MK2')] = {
        clip = GetHashKey("COMPONENT_COMBATMG_MK2_CLIP_02"),
        grip = GetHashKey("COMPONENT_AT_AR_AFGRIP_02"),
        HoloScope = GetHashKey("COMPONENT_AT_SIGHTS"),
        scope = GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"),
        Scope = GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"),
        compensator = GetHashKey("COMPONENT_AT_MUZZLE_01"),
        barrel = GetHashKey("COMPONENT_AT_MG_BARREL_02"),
        skin =  GetHashKey("COMPONENT_COMBATMG_MK2_CAMO_IND_01")
    },

    [GetHashKey('WEAPON_COMBATPDW')] = {
        clip = GetHashKey("COMPONENT_COMBATPDW_CLIP_02"),
        drum = GetHashKey("COMPONENT_COMBATPDW_CLIP_03"),
        flashlight = GetHashKey("COMPONENT_AT_AR_FLSH"),
        grip = GetHashKey("COMPONENT_AT_AR_AFGRIP"),
        scope =  GetHashKey("COMPONENT_AT_SCOPE_SMALL")
    },

    [GetHashKey('WEAPON_GUSENBERG')] = {
        clip =  GetHashKey("COMPONENT_GUSENBERG_CLIP_02")
    },

    [GetHashKey('WEAPON_MACHINEPISTOL')] = {
        clip = GetHashKey("COMPONENT_MACHINEPISTOL_CLIP_02"),
        drum = GetHashKey("COMPONENT_MACHINEPISTOL_CLIP_03"),
        suppressor =  GetHashKey("COMPONENT_AT_PI_SUPP")
    },

    [GetHashKey('WEAPON_MG')] = {
        clip = GetHashKey("COMPONENT_MG_CLIP_02"),
        scope = GetHashKey("COMPONENT_AT_SCOPE_SMALL_02"),
        skin =  GetHashKey("COMPONENT_MG_VARMOD_LOWRIDER")
    },

    [GetHashKey('WEAPON_MICROSMG')] = {
        clip = GetHashKey("COMPONENT_MICROSMG_CLIP_02"),
        flashlight = GetHashKey("COMPONENT_AT_PI_FLSH"),
        scope = GetHashKey("COMPONENT_AT_SCOPE_MACRO"),
        suppressor = GetHashKey("COMPONENT_AT_AR_SUPP_02"),
        skin =  GetHashKey("COMPONENT_MICROSMG_VARMOD_LUXE")
    },

    [GetHashKey('WEAPON_MINISMG')] = {
        clip =  GetHashKey("COMPONENT_MINISMG_CLIP_02")
    },

    [GetHashKey('WEAPON_SMG')] = {
        clip = GetHashKey("COMPONENT_SMG_CLIP_02"),
        drum = GetHashKey("COMPONENT_SMG_CLIP_03"),
        flashlight = GetHashKey("COMPONENT_AT_AR_FLSH"),
        scope = GetHashKey("COMPONENT_AT_SCOPE_MACRO_02"),
        suppressor = GetHashKey("COMPONENT_AT_PI_SUPP"),
        skin =  GetHashKey("COMPONENT_SMG_VARMOD_LUXE")
    },

    [GetHashKey('WEAPON_SMG_MK2')] = {
        clip = GetHashKey("COMPONENT_SMG_MK2_CLIP_02"),
        flashlight = GetHashKey("COMPONENT_AT_AR_FLSH"),
        HoloScope = GetHashKey("COMPONENT_AT_SIGHTS_SMG"),
        scope = GetHashKey("COMPONENT_AT_SCOPE_MACRO_02_SMG_MK2"),
        Scope = GetHashKey("COMPONENT_AT_SCOPE_SMALL_SMG_MK2"),
        suppressor = GetHashKey("COMPONENT_AT_PI_SUPP"),
        compensator = GetHashKey("COMPONENT_AT_MUZZLE_01"),
        barrel = GetHashKey("COMPONENT_AT_SB_BARREL_02"),
        skin =  GetHashKey("COMPONENT_SMG_MK2_CAMO_IND_01")
    },

    [GetHashKey('WEAPON_ADVANCEDRIFLE')] = {
        clip = GetHashKey("COMPONENT_ADVANCEDRIFLE_CLIP_02"),
        flashlight = GetHashKey("COMPONENT_AT_AR_FLSH"),
        scope = GetHashKey("COMPONENT_AT_SCOPE_SMALL"),
        suppressor = GetHashKey("COMPONENT_AT_AR_SUPP"),
        skin =  GetHashKey("COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE")
    },

    [GetHashKey('WEAPON_ASSAULTRIFLE')] = {
        clip = GetHashKey("COMPONENT_ASSAULTRIFLE_CLIP_02"),
        drum = GetHashKey("COMPONENT_ASSAULTRIFLE_CLIP_03"),
        flashlight = GetHashKey("COMPONENT_AT_AR_FLSH"),
        scope = GetHashKey("COMPONENT_AT_SCOPE_MACRO"),
        suppressor = GetHashKey("COMPONENT_AT_AR_SUPP_02"),
        grip = GetHashKey("COMPONENT_AT_AR_AFGRIP"),
        skin =  GetHashKey("COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE")
    },

    [GetHashKey('WEAPON_ASSAULTRIFLE_MK2')] = {
        clip = GetHashKey("COMPONENT_ASSAULTRIFLE_MK2_CLIP_02"),
        grip = GetHashKey("COMPONENT_AT_AR_AFGRIP_02"), 
        flashlight = GetHashKey("COMPONENT_AT_AR_FLSH"),
        HoloScope = GetHashKey("COMPONENT_AT_SIGHTS"),
        scope = GetHashKey("COMPONENT_AT_SCOPE_MACRO_MK2"),
        Scope = GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"),
        suppressor = GetHashKey("COMPONENT_AT_AR_SUPP_02"),
        compensator = GetHashKey("COMPONENT_AT_MUZZLE_01"),
        barrel = GetHashKey("COMPONENT_AT_AR_BARREL_02"),
        skin =  GetHashKey("COMPONENT_ASSAULTRIFLE_MK2_CAMO_IND_01")
    },

    [GetHashKey('WEAPON_BULLPUPRIFLE')] = {
        clip = GetHashKey("COMPONENT_BULLPUPRIFLE_CLIP_02"),
        flashlight = GetHashKey("COMPONENT_AT_AR_FLSH"),
        scope = GetHashKey("COMPONENT_AT_SCOPE_SMALL"),
        suppressor = GetHashKey("COMPONENT_AT_AR_SUPP"),
        grip = GetHashKey("COMPONENT_AT_AR_AFGRIP"),
        skin =  GetHashKey("COMPONENT_BULLPUPRIFLE_VARMOD_LOW")
    },

    [GetHashKey('WEAPON_BULLPUPRIFLE_MK2')] = {
        clip = GetHashKey("COMPONENT_BULLPUPRIFLE_MK2_CLIP_02"),
        grip = GetHashKey("COMPONENT_AT_AR_AFGRIP_02"), 
        flashlight = GetHashKey("COMPONENT_AT_AR_FLSH"),
        HoloScope = GetHashKey("COMPONENT_AT_SIGHTS"),
        scope = GetHashKey("COMPONENT_AT_SCOPE_MACRO_02_MK2"),
        Scope = GetHashKey("COMPONENT_AT_SCOPE_SMALL_MK2"),
        suppressor = GetHashKey("COMPONENT_AT_AR_SUPP"),
        compensator = GetHashKey("COMPONENT_AT_MUZZLE_01"),
        barrel = GetHashKey("COMPONENT_AT_BP_BARREL_02"),
        skin =  GetHashKey("COMPONENT_BULLPUPRIFLE_MK2_CAMO_IND_01")
    },

    [GetHashKey('WEAPON_CARBINERIFLE')] = {
        clip = GetHashKey("COMPONENT_CARBINERIFLE_CLIP_02"),
        Drum = GetHashKey("COMPONENT_CARBINERIFLE_CLIP_03"),
        flashlight = GetHashKey("COMPONENT_AT_AR_FLSH"),
        scope = GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"),
        suppressor = GetHashKey("COMPONENT_AT_AR_SUPP"),
        grip = GetHashKey("COMPONENT_AT_AR_AFGRIP"),
        skin =  GetHashKey("COMPONENT_CARBINERIFLE_VARMOD_LUXE")
    },

    [GetHashKey('WEAPON_CARBINERIFLE_MK2')] = {
        clip = GetHashKey("COMPONENT_CARBINERIFLE_MK2_CLIP_02"),
        grip = GetHashKey("COMPONENT_AT_AR_AFGRIP_02"), 
        flashlight = GetHashKey("COMPONENT_AT_AR_FLSH"),
        HoloScope = GetHashKey("COMPONENT_AT_SIGHTS"),
        scope = GetHashKey("COMPONENT_AT_SCOPE_MACRO_MK2"),
        Scope = GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"),
        suppressor = GetHashKey("COMPONENT_AT_AR_SUPP"),
        compensator = GetHashKey("COMPONENT_AT_MUZZLE_01"),
        barrel = GetHashKey("COMPONENT_AT_CR_BARREL_02"),
        skin =  GetHashKey("COMPONENT_CARBINERIFLE_MK2_CAMO_IND_01")
    },

    [GetHashKey('WEAPON_COMPACTRIFLE')] = {
        clip = GetHashKey("COMPONENT_COMPACTRIFLE_CLIP_02"),
        drum = GetHashKey("COMPONENT_COMPACTRIFLE_CLIP_03")
    },

    [GetHashKey('WEAPON_MILITARYRIFLE')] = {
        clip = GetHashKey("COMPONENT_MILITARYRIFLE_CLIP_02"),
        flashlight = GetHashKey("COMPONENT_AT_AR_FLSH"),
        scope = GetHashKey("COMPONENT_AT_SCOPE_SMALL"),
        suppressor = GetHashKey("COMPONENT_AT_AR_SUPP"),
        ironsight =  GetHashKey("COMPONENT_MILITARYRIFLE_SIGHT_01")
    },

    [GetHashKey('WEAPON_SPECIALCARBINE')] = {
        clip = GetHashKey("COMPONENT_SPECIALCARBINE_CLIP_02"),
        drum = GetHashKey("COMPONENT_SPECIALCARBINE_CLIP_03"),
        flashlight = GetHashKey("COMPONENT_AT_AR_FLSH"),
        scope = GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"),
        suppressor = GetHashKey("COMPONENT_AT_AR_SUPP_02"),
        grip = GetHashKey("COMPONENT_AT_AR_AFGRIP"),
        skin =  GetHashKey("COMPONENT_SPECIALCARBINE_VARMOD_LOWRIDER")
    },

    [GetHashKey('WEAPON_SPECIALCARBINE_MK2')] = {
        clip = GetHashKey("COMPONENT_SPECIALCARBINE_MK2_CLIP_02"),
        grip = GetHashKey("COMPONENT_AT_AR_AFGRIP_02"), 
        flashlight = GetHashKey("COMPONENT_AT_AR_FLSH"),
        HoloScope = GetHashKey("COMPONENT_AT_SIGHTS"),
        scope = GetHashKey("COMPONENT_AT_SCOPE_MACRO_MK2"),
        Scope = GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"),
        suppressor = GetHashKey("COMPONENT_AT_AR_SUPP_02"),
        compensator = GetHashKey("COMPONENT_AT_MUZZLE_01"),
        barrel = GetHashKey("COMPONENT_AT_SC_BARREL_02"),
        skin =  GetHashKey("COMPONENT_SPECIALCARBINE_MK2_CAMO_IND_01")
    },

    --Snipers

    [GetHashKey('WEAPON_HEAVYSNIPER')] = {
        scope = GetHashKey("COMPONENT_AT_SCOPE_LARGE"),
        Scope = GetHashKey("COMPONENT_AT_SCOPE_MAX")
    },

    [GetHashKey('WEAPON_HEAVYSNIPER_MK2')] = {
        clip = GetHashKey("COMPONENT_HEAVYSNIPER_MK2_CLIP_02"),
        NVScope = GetHashKey("COMPONENT_AT_SCOPE_NV"),
        TScope = GetHashKey("COMPONENT_AT_SCOPE_THERMAL"),
        scope = GetHashKey("COMPONENT_AT_SCOPE_LARGE_MK2"),
        Scope = GetHashKey("COMPONENT_AT_SCOPE_MAX"),
        suppressor = GetHashKey("COMPONENT_AT_SR_SUPP_03"),
        compensator = GetHashKey("COMPONENT_AT_MUZZLE_08"),
        barrel = GetHashKey("COMPONENT_AT_SR_BARREL_02"),
        skin =  GetHashKey("COMPONENT_HEAVYSNIPER_MK2_CAMO_IND_01")
    },

    [GetHashKey('WEAPON_MARKSMANRIFLE')] = {
        clip = GetHashKey("COMPONENT_MARKSMANRIFLE_CLIP_02"),
        flashlight = GetHashKey("COMPONENT_AT_AR_FLSH"),
        scope = GetHashKey("COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM"),
        suppressor = GetHashKey("COMPONENT_AT_AR_SUPP"),
        grip = GetHashKey("COMPONENT_AT_AR_AFGRIP"),
        skin =  GetHashKey("COMPONENT_MARKSMANRIFLE_VARMOD_LUXE")
    },

    [GetHashKey('WEAPON_MARKSMANRIFLE_MK2')] = {
        clip = GetHashKey("COMPONENT_MARKSMANRIFLE_MK2_CLIP_02"),
        HoloScope = GetHashKey("COMPONENT_AT_SIGHTS"),
        scope = GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"),
        Scope = GetHashKey("COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM_MK2"),
        flashlight = GetHashKey("COMPONENT_AT_AR_FLSH"),
        suppressor = GetHashKey("COMPONENT_AT_AR_SUPP"),
        compensator = GetHashKey("COMPONENT_AT_MUZZLE_01"),
        barrel = GetHashKey("COMPONENT_AT_MRFL_BARREL_02"),
        grip = GetHashKey("COMPONENT_AT_AR_AFGRIP_02v"),
        skin =  GetHashKey("COMPONENT_MARKSMANRIFLE_MK2_CAMO_IND_01")
    },


}
 
-- ESX
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)
 
-- ESX, playerloaded
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)
 
-- Use item
RegisterNetEvent('esx_weapcomponets:use')
AddEventHandler('esx_weapcomponets:use', function( type )

    if weapons[GetSelectedPedWeapon(PlayerPedId())] and weapons[GetSelectedPedWeapon(PlayerPedId())][type] then
        if not HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), weapons[GetSelectedPedWeapon(PlayerPedId())][type]) then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), weapons[GetSelectedPedWeapon(PlayerPedId())][type])  
            ESX.ShowNotification(string.format('%s %s', "You've equiped your ", type))
        else
            RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), weapons[GetSelectedPedWeapon(PlayerPedId())][type])  
            ESX.ShowNotification(string.format('%s %s', "You've removed your ", type))
            TriggerServerEvent('esx_weapcomponets:giveBack', (type))
        end
    else
        ESX.ShowNotification(string.format('%s %s %s', 'The ', type, " doesn't fit on your weapon.."))
        TriggerServerEvent('esx_weapcomponets:giveBack', (type))
    end
end)

--Citizen.CreateThread(function()
--	while true do
--		Citizen.Wait(0)
--		if IsControlJustPressed(0, 172) then
--			if weapons[GetSelectedPedWeapon(PlayerPedId())] then
--				for k,v in pairs(weapons) do
--					if GetSelectedPedWeapon(PlayerPedId()) == k then
--						if HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.suppressor) then
--							TriggerServerEvent('esx_weapcomponets:giveBack', 'suppressor')
--							ESX.ShowNotification("You've removed your weapon suppressor")
--							RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.suppressor)
--						elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.flashlight) then
--							TriggerServerEvent('esx_weapcomponets:giveBack', 'flashlight')
--							ESX.ShowNotification("You've removed your weapon flashlight")
--							RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.flashlight)
--						elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.skin) then
--							TriggerServerEvent('esx_weapcomponets:giveBack', 'yusuf')
--							ESX.ShowNotification("You've removed your weapon skin")
--							RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.skin)
--						elseif HasPedGotWeaponComponent(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.grip) then
--							TriggerServerEvent('esx_weapcomponets:giveBack', 'grip')
--							ESX.ShowNotification("You've removed your weapon grip")
--							RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetSelectedPedWeapon(PlayerPedId()), v.grip)
--						end
--					end
--				end
--			end
--		end
--	end
--end)
