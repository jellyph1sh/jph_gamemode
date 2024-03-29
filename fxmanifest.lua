fx_version "cerulean"
game "gta5"

version "1.0"
description "Basic gamemode for roleplay."
author "JellyPh1sh"

resource_type "gametype" { name = "My RP" }
resource_type "maptype" {name = "San Andreas"}

client_scripts {
    "client/cl_functions.lua",
    "client/cl_events.lua"
}

server_scripts {
    "server/sv_functions.lua",
    "server/sv_events.lua"
}

shared_script "config.lua"
