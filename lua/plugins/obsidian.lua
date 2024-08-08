return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  event = {
    "BufReadPre /home/sam/Nextcloud/personal/Notes/*.md",
    "BufNewFile /home/sam/Nextcloud/personal/Notes/*.md",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "/home/sam/Nextcloud/personal/Notes/",
        overrides = {
          disable_frontmatter = true,
        },
      },
    },
  },
}
