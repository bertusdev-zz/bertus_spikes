                                               

--[[ edited ("21/10/2020") by :
    ____            __               __ __  ____  ____  ____ ___
   / __ )___  _____/ /___  _________/ // /_/ __ \/ __ \/ __ <  /
  / __  / _ \/ ___/ __/ / / / ___/_  _  __/ / / / / / / / / / / 
 / /_/ /  __/ /  / /_/ /_/ (__  )_  _  __/ /_/ / /_/ / /_/ / /  
/_____/\___/_/   \__/\__,_/____/ /_//_/  \____/\____/\____/_/   
any issues? Dm me on discord (bertus#0001)
]]


ESX              = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('bertus_spikes:usespikes')
AddEventHandler('bertus_spikes:usespikes', function()
    
local object_model = "p_ld_stinger_s"
   Citizen.CreateThread(function()
        RequestModel(object_model)
    	local iter_for_request = 1
    	while not HasModelLoaded(object_model) and iter_for_request < 5 do
    		Citizen.Wait(500)				
            iter_for_request = iter_for_request + 1
        end
    	if not HasModelLoaded(object_model) then
    		SetModelAsNoLongerNeeded(object_model)
    	else
            local ped = PlayerPedId()
            local x,y,z = table.unpack(GetEntityCoords(ped))
            local created_object = CreateObjectNoOffset(object_model, x, y, z, 1, 0, 1)
            PlaceObjectOnGroundProperly(created_object)
            FreezeEntityPosition(created_object,true)
            SetModelAsNoLongerNeeded(object_model)
         end
     end)

    xPlayer.showNotification('Has usado los pinchos')
end)


--[[ edited ("21/10/2020") by :
    ____            __               __ __  ____  ____  ____ ___
   / __ )___  _____/ /___  _________/ // /_/ __ \/ __ \/ __ <  /
  / __  / _ \/ ___/ __/ / / / ___/_  _  __/ / / / / / / / / / / 
 / /_/ /  __/ /  / /_/ /_/ (__  )_  _  __/ /_/ / /_/ / /_/ / /  
/_____/\___/_/   \__/\__,_/____/ /_//_/  \____/\____/\____/_/   
any issues? Dm me on discord (bertus#0001)
]]