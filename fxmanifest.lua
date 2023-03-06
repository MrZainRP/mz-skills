fx_version 'cerulean'
game 'gta5'

description 'mz-skills - a customised fork of qb-skillz created by Kings#4220'
version '1.0.0'

shared_script 'config.lua'

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/main.lua'
}

client_scripts {
    'client/main.lua',
    'client/functions.lua',
    'client/gui.lua'
}

exports {
    "UpdateSkill",
    "GetCurrentSkill"
}
