fx_version 'cerulean'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

name 'mack-wagonextras'
description 'Wagon customization - extras, liveries, cargo, lanterns'
author 'Mack'
version '1.0.0'

shared_scripts {
    'config.lua',
}

client_scripts {
    'client/client.lua',
}

server_scripts {
    'server/server.lua',
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/script.js',
    'html/img/clipboard.png',
    'html/img/wagon.png',
    'html/img/parts.png',
    'html/img/paint.png',
    'html/img/cargo.png',
    'html/img/lights.png',
    'html/font/crock.ttf',
}

dependencies {
    'rsg-core',
    'ox_target',
}
