-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- Escape
keymap.set("i", "jj", "<Esc>", { noremap = false, desc = "Escape" })

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

-- Close all buffers
keymap.set("n", "<leader>ba", ":%bd<enter>", { desc = "Close all buffers" })

-- Set comment for insert mode to ctrl + period.
keymap.set(
  "i",
  "<C-.>",
  '<ESC><CMD>lua require("mini.comment").toggle_lines(vim.fn.line("."), vim.fn.line("."))<CR>i',
  { noremap = true, silent = true, desc = "Comment (Insert mode)" }
)

-- Close current buffer
keymap.set("n", "<C-x>", function()
  Snacks.bufdelete.delete()
end, { desc = "Close buffer" })
