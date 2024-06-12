return {
  "Exafunction/codeium.vim",
  event = "VeryLazy",
  config = function()
    vim.keymap.set("i", "<C-g>", function()
      return vim.fn["codeium#Accept"]()
    end, { expr = true, silent = true })
  end,
}
