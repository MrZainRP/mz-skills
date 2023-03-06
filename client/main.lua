local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
	Citizen.CreateThread(function()
		FetchSkills()
		while true do
			local seconds = Config.UpdateFrequency * 1000
			Citizen.Wait(seconds)
			for skill, value in pairs(Config.Skills) do
				UpdateSkill(skill, value["RemoveAmount"])
			end
			TriggerServerEvent("skillsystem:update", json.encode(Config.Skills))
		end
	end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
	for skill, value in pairs(Config.Skills) do
		Config.Skills[skill]["Current"] = 0
	end
end)

	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(25000)
			local ped = PlayerPedId()
			local vehicle = GetVehiclePedIsUsing(ped)
			local isDead = QBCore.Functions.GetPlayerData().metadata["isdead"]
			local islaststand = QBCore.Functions.GetPlayerData().metadata["islaststand"]
			if LocalPlayer.state.isLoggedIn and not isDead and not islaststand then
			if IsPedRunning(ped) then
				UpdateSkill("Stamina", 0.1)
			elseif IsPedInMeleeCombat(ped) then
				local isTargetting, targetEntity = GetPlayerTargetEntity(PlayerId())
				if isTargetting and not IsEntityDead(targetEntity) and GetMeleeTargetForPed(ped) ~= 0 then
				UpdateSkill("Strength", 0.2)
				end
			elseif IsPedSwimmingUnderWater(ped) then
				UpdateSkill("Lung Capacity", 0.5)
			elseif IsPedShooting(ped) then
				UpdateSkill("Shooting", 0.1)
			elseif DoesEntityExist(vehicle) and GetPedInVehicleSeat(vehicle, -1) == ped then
				local speed = GetEntitySpeed(vehicle) * 3.6
				if GetVehicleClass(vehicle) == 8 or GetVehicleClass(vehicle) == 13 and speed >= 5 then
					local rotation = GetEntityRotation(vehicle)
					if IsControlPressed(0, 210) then
						if rotation.x >= 25.0 then
							UpdateSkill("Wheelie", 0.2)
						end 
					end
				end
				if speed >= 80 then
					UpdateSkill("Driving", 0.1)
				end
			end
			end
end
	end)
end)

AddEventHandler('onResourceStart', function(resource)
   if resource == GetCurrentResourceName() then
	  Wait(100)
	  FetchSkills()
   end
end)

-------------------
--HOSTILES NATIVE--
-------------------

RegisterNetEvent('mz-skills:client:SpawnShooters', function(position)
    QBCore.Functions.TriggerCallback('mz-skills:server:SpawnShooters', function(netIds, position)
        Wait(1000)
        local ped = PlayerPedId()
        for i=1, #netIds, 1 do
            local npc = NetworkGetEntityFromNetworkId(netIds[i])
            SetPedDropsWeaponsWhenDead(npc, false)
            GiveWeaponToPed(npc, Config.PedGun2, 250, false, true)
            SetPedMaxHealth(npc, 300)
            SetPedArmour(npc, 200)
            SetCanAttackFriendly(npc, true, false)
            TaskCombatPed(npc, ped, 0, 16)
            SetPedCombatAttributes(npc, 46, true)
            SetPedCombatAttributes(npc, 0, false)
            SetPedCombatAbility(npc, 100)
            SetPedAsCop(npc, true)
            SetPedRelationshipGroupHash(npc, `HATES_PLAYER`)
            SetPedAccuracy(npc, 60)
            SetPedFleeAttributes(npc, 0, 0)
            SetPedKeepTask(npc, true)
            SetBlockingOfNonTemporaryEvents(npc, true)
        end
    end, position)
end)