return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tailwindcss = {
          emmetCompletions = true,
          includedLanguages = {
            svelte = "html",
          },
          filetypes = {
            "css",
            "sass",
            "scss",
            "less",
            "php",
            "blade",
            "svelte",
          },
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
