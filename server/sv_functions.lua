function checkWhitelist(_, _, deferrals)
    local src = source

    deferrals.defer()
    Wait(0)
    deferrals.update("Checking if you are in the whitelist.")

    for _, wId in pairs(Config.Whitelist) do
        if GetPlayerIdentifier(src, 0) == wId then
            Wait(0)
            deferrals.done()
        end
    end

    Wait(0)
    deferrals.done(string.format("You are not whitelist!\n ID: %s", GetPlayerIdentifier(src, 0)))
end
