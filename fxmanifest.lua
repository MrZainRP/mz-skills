fx_version 'cerulean'

game 'gta5'

lua54 'yes'

description 'mz-skills - a customised skills fork based on functionality provided for by B1-skillz created by Kings#4220'

version '1.3.1'

shared_script {
    '@ox_lib/init.lua',
    'config.lua'     
}

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
