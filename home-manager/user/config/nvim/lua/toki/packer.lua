vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

   -- Treesitter / LSP
  use ('nvim-treesitter/nvim-treesitter', {'run', ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('hrsh7th/nvim-cmp')
  use('hrsh7th/cmp-nvim-lsp')
  use('L3MON4D3/LuaSnip')

  --Lualine
  use {
	  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

  use {
	  'nvim-tree/nvim-tree.lua',
	  'nvim-tree/nvim-web-devicons',
      }

  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Manage LSP servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }}

  }

  use 'andweeb/presence.nvim'
  use 'sbdchd/neoformat'
  use 'stevearc/conform.nvim'
  use 'folke/noice.nvim'
  use 'MunifTanjim/nui.nvim'
  use 'rcarriga/nvim-notify'

  -- Xresources setup

  use {'martineausimon/nvim-xresources', config = function()
    require('nvim-xresources').setup({
      xresources_path = os.getenv("HOME") .. '/.Xresources',
      auto_light = {

        enable = true,
        value = 0.5,
        exclude = { }

      },

      contrast = 0.6,
      bold = false,
      palette_overrides = { }

      })

  
    local C = require('nvim-xresources.colors')

    require('nvim-xresources').custom_highlight_groups({
      -- link to a existing group :
      pythonBuiltin = "PreProc",
      -- or define highlights :
      pythonFunction = { guifg = C.cyan, guibg = C.bold, gui = C.bold, guisp = nil },
    })
    vim.cmd('colorscheme xresources')
  end
}

--use({"oahlen/iceberg.nvim", as = "iceberg"})
--vim.cmd('colorscheme iceberg')

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- EOF
end)
