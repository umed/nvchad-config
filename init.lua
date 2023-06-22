local opt = vim.opt
-- local g = vim.g

-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })


opt.list = true
opt.listchars = 'tab:»·,nbsp:+,space:·,trail:·,extends:→,precedes:←'

opt.tabstop = 4
opt.shiftwidth = 4

opt.number = true
opt.relativenumber = true

opt.colorcolumn = '100'
