return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tailwindcss = {
          emmetCompletions = true,
          includedLanguages = {},
        },
      },
    },
  },
  {
    "luckasRanarison/tailwind-tools.nvim",
    event = "LazyFile",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {
      document_color = {
        enabled = true,
        kind = "background",
      },
    },
  },
}
