local common_lint_settings = {
  lint = {
    duplicateProperties = "warning",
    unknownAtRules = "ignore",
    -- important = "warning",
  },
}
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      cssls = {
        settings = {
          css = common_lint_settings,
          scss = common_lint_settings,
          less = common_lint_settings,
        },
      },
    },
  },
}
