require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>fs", "<CMD>Telescope grep_string<CR>", { desc = "search for word under cursor"})
map("x", "<leader>fs", "<CMD>Telescope grep_string<CR>", { desc = "search for selected text"})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
