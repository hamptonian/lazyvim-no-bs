return {
  "folke/snacks.nvim",
  opts = {
    animate = { enabled = false },
    dashboard = { enabled = false },
    notification = { enabled = false },
    statuscolumn = { enabled = false },
    lazygit = { enabled = false },
    picker = {
      sources = {
        files = {
          hidden = true,
          respect_gitignore = false,
        },
        grep = {
          hidden = true,
        },
        explorer = {
          hidden = true,
        },
      },
      layout = {
        preset = "default",
        width = 1,
        height = 1,
      },
    },
    explorer = {
      width = 35,
      show_hidden = true,
    },
    words = { enabled = false },
  },
}
