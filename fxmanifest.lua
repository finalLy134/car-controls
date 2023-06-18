fx_version 'cerulean'
game 'gta5'

author 'missyu'
description 'Adds multiple UI controls such as car-controls and HUD.'
version '1.0.0'

client_scripts {
    'client/main.lua',
    'client/car_controls.lua',
    'client/gta5_hud.lua'
}

server_script 'server/main.lua'

ui_page 'html/index.html'

files {
    'html/*',
    'html/js/*',
    'html/styles/*',
    'html/images/*'
}
