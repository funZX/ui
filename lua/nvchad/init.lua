local api = vim.api
local config = require "nvconfig"
local new_cmd = api.nvim_create_user_command

if config.ui.statusline.enabled then
  vim.o.statusline = "%!v:lua.require('nvchad.stl." .. config.ui.statusline.theme .. "')()"
  require("nvchad.stl.utils").autocmds()
end

if config.ui.tabufline.enabled then
  require "nvchad.tabufline.lazyload"
end

vim.schedule(function()
  require "nvchad.au"
end)
