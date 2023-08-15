-- 
-- ToDo: Whitelist, Login, Character Auswahl, Character erstellen, (Spawn Location), Loading Screen
-- 

fx_version 'cerulean'
game 'gta5'

author 'B1GSt4R'
description 'Project X Core Project'
version '0.0.1'

loadscreen 'loading/index.html'
ui_page 'hud/index.html'

files {
  "loading/*",
  "hud/*",
}

client_scripts {
  'config.lua',
  'cash.lua',
  'speedo.lua',
  'veh.lua',
  'npc.lua',
}