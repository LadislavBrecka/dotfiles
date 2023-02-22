local set = vim.opt

--basic editor related settings
set.number = true
set.relativenumber = true
set.autoindent = true
set.tabstop = 4
set.shiftwidth = 4
set.smarttab = true
set.softtabstop = 4
set.mouse = a
set.termguicolors = true

-- color scheme setting
vim.cmd [[
  colorscheme jellybeans
]]
