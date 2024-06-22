fx_version 'cerulean'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game 'rdr3'

description 'rex-guarma'
version '1.0.1'

shared_scripts {
    '@ox_lib/init.lua',
    '@rsg-core/shared/locale.lua',
    'locales/en.lua', 
    'locales/*.lua', 
    'config.lua',
}

client_scripts {
    'client/client.lua',
    'client/npcs.lua',
}

server_scripts {
    'server/server.lua',
    'server/versionchecker.lua'
}

dependencies {
    'ox_lib',
    'rsg-core',
}

escrow_ignore {
    'installation',
    'locales',
    'config.lua',
    'README.md'
}

lua54 'yes'