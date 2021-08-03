require('vacuumline').setup({
  theme = require('vacuumline.theme.gruvbox'),
  --[[ segment = {
    mode = {
      map = {
        n = {label = 'NORMAL', background = '#012383'}, -- NORMAL
        i = {label = 'INSERT', background = '#847a32'}, -- INSERT
        c = {label = ' ', background = '#18472a'}, -- COMMAND
        v = {label = ' ', background = '#abe932'}, -- VISUAL
        V = {label = ' ', background = '#4bc829'}, -- VISUAL LINE
        t = {label = ' ', background = '#98989c'}, -- TERMINAL
      }
    }
  } ]]
})
