-- Include packer's plugin configuration and remapped bindings

require("toki.packer")
require("toki.remap")

-- Source the colorscheme

vim.cmd("so ~/.config/nvim/tuna.vim")
