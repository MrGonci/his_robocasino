fx_version 'adamant'
games {'gta5' }

description 'Robo casino HispanLifeRP'

version '1.0.0'

server_scripts {
    '@es_extended/locale.lua',
	'locales/en.lua',
	'locales/de.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'locales/de.lua',
	'config.lua',
	'client/main.lua'
}

files {
    "ui/index.html",
    "ui/alarma.ogg"
}

ui_page 'ui/index.html'