

--[[ edited ("21/10/2020") by :
    ____            __               __ __  ____  ____  ____ ___
   / __ )___  _____/ /___  _________/ // /_/ __ \/ __ \/ __ <  /
  / __  / _ \/ ___/ __/ / / / ___/_  _  __/ / / / / / / / / / / 
 / /_/ /  __/ /  / /_/ /_/ (__  )_  _  __/ /_/ / /_/ / /_/ / /  
/_____/\___/_/   \__/\__,_/____/ /_//_/  \____/\____/\____/_/   
any issues? Dm me on discord (bertus#0001)
]]

ESX = nil 
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
ESX.RegisterUsableItem('spikestrips', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('spikestrips', 1)

    TriggerClientEvent('bertus_spikes:usespikes', source)

    

end)



--[[ edited ("21/10/2020") by :
    ____            __               __ __  ____  ____  ____ ___
   / __ )___  _____/ /___  _________/ // /_/ __ \/ __ \/ __ <  /
  / __  / _ \/ ___/ __/ / / / ___/_  _  __/ / / / / / / / / / / 
 / /_/ /  __/ /  / /_/ /_/ (__  )_  _  __/ /_/ / /_/ / /_/ / /  
/_____/\___/_/   \__/\__,_/____/ /_//_/  \____/\____/\____/_/   
any issues? Dm me on discord (bertus#0001)
]]