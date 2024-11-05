require "nvchad.mappings"

-- add yours here
vim.api.nvim_create_user_command("CopyFullPath", function()
    local path = vim.fn.expand("%:p")
    vim.fn.setreg("+", path)
    vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})

vim.api.nvim_create_user_command("CopyRelPath",
  function()
    vim.api.nvim_call_function(
      "setreg",
      {"+", vim.fn.fnamemodify(vim.fn.expand("%"), ":.")})
  end,
  {})

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>fs", "<CMD>Telescope grep_string<CR>", { desc = "search for word under cursor"})
map("x", "<leader>fs", "<CMD>Telescope grep_string<CR>", { desc = "search for selected text"})
map("n", "cp", "<CMD>CopyRelPath<CR>", { desc = "copy relative file path" })
map("n", "cfp", "<CMD>CopyFullPath<CR>", { desc = "copy full file path" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
