local vehicleList = {
    "adder",
    "zentorno",
    "infernus",
    "schafter3",
    "cogcabrio",
    "baller",
    "dune",
}

function spawnRandomVehicle()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)

    local randomVehicle = vehicleList[math.random(1, #vehicleList)]

    RequestModel(randomVehicle)
    while not HasModelLoaded(randomVehicle) do
        Wait(500)
    end

    local vehicle = CreateVehicle(randomVehicle, coords.x, coords.y, coords.z, GetEntityHeading(playerPed), true, false)
    TaskWarpPedIntoVehicle(playerPed, vehicle, -1)

    SetModelAsNoLongerNeeded(randomVehicle)

    lib.notify({
        title = 'Vehicle Spawned',
        description = 'You have successfully spawned the vehicle ' .. randomVehicle .. '!',
        type = 'success',
        duration = 3000,
    })
end

RegisterCommand("spawnride", function()
    spawnRandomVehicle()
end, false)

TriggerEvent("chat:addSuggestion", "/spawnride", "Spawn a random vehicle from the list")