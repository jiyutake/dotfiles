-- Disables netrw to prevent errors
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Enable highlight groups
vim.opt.termguicolors = true

-- Setup options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
