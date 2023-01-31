function loadModel(model)
    local hash = GetHashKey(model)

    if not IsModelInCdimage(hash) then
        TriggerEvent("chat:addMessage", {args = {"~r~UNKNOW MODEL"}})
        return false
    end

    RequestModel(hash)

    while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(0)
    end

    return true
end

function spawnPlayer()
    if loadModel(Config.Model) then
        exports.spawnmanager:spawnPlayer({
            x = Config.Spawn.x,
            y = Config.Spawn.y,
            z = Config.Spawn.z,
            heading = Config.Spawn.w,
            model = Config.Model,
            skipFade = false
        }, function(spawn)
            TriggerEvent("chat:addMessage", {args = {"~g~Welcome to your new life!"}})
        end)
    end
end
