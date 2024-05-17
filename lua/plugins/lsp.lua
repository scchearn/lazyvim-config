return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      cssls = {
        -- filetypes = { "svelte" },
        settings = {
          css = {
            lint = {
              unknownAtRules = "ignore",
            },
          },
          scss = {
            lint = {
              unknownAtRules = "ignore",
            },
          },
          less = {
            lint = {
              unknownAtRules = "ignore",
            },
          },
        },
      },
      tailwindcss = {
        emmetCompletions = true,
        includedLanguages = {},
      },
    },
  },
}
