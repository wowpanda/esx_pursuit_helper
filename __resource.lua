resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Pursuit Helper'

client_script { "client/main.lua" }

server_scripts { "server/main.lua" }

ui_page('client/html/index.html')

files({
    'client/html/index.html',
    'client/html/sounds/connected.ogg',
    'client/html/sounds/deployed.ogg',
    'client/html/sounds/disconnected.ogg'
})
