return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      cssls = {
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
      -- vtsls = {
      --   filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
      --   settings = {
      --     vtsls = {
      --       enableMoveToFileCodeAction = true,
      --       autoUseWorkspaceTsdk = true,
      --       experimental = {
      --         completion = {
      --           enableServerSideFuzzyMatch = true,
      --         },
      --       },
      --     },
      --     typescript = {
      --       updateImportsOnFileMove = { enabled = "always" },
      --       suggest = {
      --         completeFunctionCalls = true,
      --       },
      --       inlayHints = {
      --         enumMemberValues = { enabled = true },
      --         functionLikeReturnTypes = { enabled = true },
      --         parameterNames = { enabled = "literals" },
      --         parameterTypes = { enabled = true },
      --         propertyDeclarationTypes = { enabled = true },
      --         variableTypes = { enabled = false },
      --       },
      --     },
      --   },
      -- },
    },
  },
}
