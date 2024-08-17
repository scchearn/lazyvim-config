return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tailwindcss = {
          filetypes = {
            "css",
            "sass",
            "scss",
            "less",
            "php",
            "blade",
          },
        },
      },
    },
  },
}
