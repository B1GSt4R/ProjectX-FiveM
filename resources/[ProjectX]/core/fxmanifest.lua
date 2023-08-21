-- 
-- ToDo: Whitelist, Login, Character Auswahl, Character erstellen, (Spawn Location), Loading Screen
-- 

fx_version 'cerulean'
game 'gta5'

author 'B1GSt4R'
description 'Project X Core Project'
version '0.0.1'

loadscreen 'html/loading/index.html'

ui_page 'html/hud/index.html'

files {
  "html/loading/*",
  "html/hud/*",
}

client_scripts {
  'client/config.lua',
  'client/npc.lua',
  'client/hud.lua',
  'client/speedo.lua',
  'client/veh.lua',
  'client/spawn.lua',
}