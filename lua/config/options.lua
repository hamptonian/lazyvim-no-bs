vim.opt.showtabline = 0

vim.g.blink_completion_min_keyword_length = 3

vim.opt.guicursor = "n-v-c-i:block"

vim.opt.scrolloff = 0
vim.opt.sidescrolloff = 0

vim.opt.signcolumn = "no"
vim.opt.cursorcolumn = false
vim.opt.cursorline = false
vim.opt.number = false
vim.opt.relativenumber = false

vim.lsp.config("*", { inlay_hints = { enabled = false } })

vim.diagnostic.config({
  virtual_text = false,
  signs = false,
  underline = false,
  update_in_insert = false,
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and vim.tbl_contains(client.server_capabilities.codeLensProvider, "codeLens") then
      vim.opt_local.foldmethod = "expr"
      vim.opt_local.foldlevel = 99
    end
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "qf", "Trouble", "trouble" },
  callback = function()
    vim.diagnostic.enable(true)
    vim.opt.signcolumn = "auto"
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "qf", "Trouble", "trouble" },
  callback = function()
    vim.api.nvim_create_autocmd("BufLeave", {
      once = true,
      callback = function()
        vim.diagnostic.enable(false)
        vim.opt.signcolumn = "no"
      end,
    })
  end,
})

vim.opt.timeoutlen = 0
vim.opt.ttimeoutlen = 0
