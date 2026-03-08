return {
  "saghen/blink.cmp",
  version = "*",
  dependencies = { "rafamadriz/friendly-snippets" },
  opts = {
    completion = {
      min_keyword_length = 3,
      list = { selection = { preselect = false } },
      ghost_text = { enabled = false },
      accept = { auto_brackets = { enabled = false } },
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    keymap = {
      preset = "enter",
    },
  },
}
