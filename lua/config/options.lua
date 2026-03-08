vim.opt.showtabline = 0

vim.g.blink_completion_min_keyword_length = 3

vim.opt.guicursor = "a:block"

vim.lsp.config("*", { inlay_hints = { enabled = false } })

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = true,
})

vim.opt.timeoutlen = 0
vim.opt.ttimeoutlen = 0
