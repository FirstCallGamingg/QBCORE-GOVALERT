fx_version 'cerulean'
game 'gta5'
lua54 'yes'

description 'YH Government Alert Overlay (Made By Joshy)'

ui_page 'html/index.html'

files {
  'html/index.html',
  'html/style.css',
  'html/script.js',
  'html/alert.ogg'
}

dependency 'qb-core'

server_scripts { 'server.lua' }
client_scripts { 'client.lua' }
