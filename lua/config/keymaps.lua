-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local harpoon = require("harpoon")

vim.keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end, { desc = "Harpoon add" })
vim.keymap.set("n", "<leader><Tab>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Harpoon menu" })
vim.keymap.set("n", "<C-1>", function()
  harpoon:list():select(1)
end)
vim.keymap.set("n", "<C-2>", function()
  harpoon:list():select(2)
end)
vim.keymap.set("n", "<C-3>", function()
  harpoon:list():select(3)
end)
vim.keymap.set("n", "<C-4>", function()
  harpoon:list():select(4)
end)

vim.keymap.set("n", "<leader>gg", function()
  require("neogit").open()
end, { desc = "Neogit" })

vim.keymap.set("n", "<leader>e", function()
  require("snacks.picker").explorer()
end, { desc = "Explorer" })

vim.keymap.set("n", "<leader>u", "", {
  desc = "User",
  buffer = vim.api.nvim_get_current_buf(),
})
vim.keymap.set("n", "<leader>ua", function()
  require("aerial").toggle()
end, { desc = "Code Outline" })

local wk = require("which-key")
wk.add({
  { "<leader>a", group = "Harpoon" },
  { "<leader>gg", group = "Git" },
  { "<leader>e", group = "Explorer" },
  { "<leader>u", group = "User" },
})
