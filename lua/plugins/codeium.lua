return {
  "Exafunction/codeium.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "yioneko/nvim-cmp",
  },
  config = function()
    require("codeium").setup({})
  end,
}
