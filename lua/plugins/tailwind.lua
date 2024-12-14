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
          -- settings = {
          --   tailwindCSS = {
          --     includeLanguages = {
          --       svelte = "html",
          --       -- Add other mappings as needed
          --     },
          --     -- Other settings
          --   },
          -- },
        },
      },
    },
    -- setup = {
    --   tailwindcss = function(_, opts)
    --     local tw = LazyVim.lsp.get_raw_config("tailwindcss")
    --     opts.filetypes = opts.filetypes or {}
    --
    --     -- Add default filetypes
    --     vim.list_extend(opts.filetypes, tw.default_config.filetypes)
    --
    --     -- Remove excluded filetypes
    --     --- @param ft string
    --     opts.filetypes = vim.tbl_filter(function(ft)
    --       return not vim.tbl_contains(opts.filetypes_exclude or {}, ft)
    --     end, opts.filetypes)
    --
    --     -- Additional settings for Phoenix projects
    --     opts.settings = {
    --       tailwindCSS = {
    --         includeLanguages = {
    --           elixir = "html-eex",
    --           eelixir = "html-eex",
    --           heex = "html-eex",
    --         },
    --       },
    --     }
    --
    --     -- Add additional filetypes
    --     vim.list_extend(opts.filetypes, opts.filetypes_include or {})
    --   end,
    -- },
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
  -- {
  --   "yioneko/nvim-cmp",
  --   optional = true,
  --   dependencies = {
  --     { "roobert/tailwindcss-colorizer-cmp.nvim", opts = {} },
  --   },
  --   opts = function(_, opts)
  --     -- original LazyVim kind icon formatter
  --     local format_kinds = opts.formatting.format
  --     opts.formatting.format = function(entry, item)
  --       format_kinds(entry, item) -- add icons
  --       return require("tailwindcss-colorizer-cmp").formatter(entry, item)
  --     end
  --   end,
  -- },
}
