-- BUG: For some reason tailwind-tools is setting these keymaps, forcing it here
-- to remove and recreate.
return {
  "luckasRanarison/tailwind-tools.nvim",
  config = function()
    require("tailwind-tools").setup()
    -- Force delete the buggy keymaps
    pcall(vim.keymap.del, "n", "<C-a>")
    pcall(vim.keymap.del, "n", "<C-x>")

    vim.keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })
    vim.keymap.set("n", "<C-x>", function()
      Snacks.bufdelete.delete()
    end, { desc = "Close buffer" })
  end,
}
