-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'},
    { "nvim-telescope/telescope-live-grep-args.nvim" },
    { "nvim-telescope/telescope-file-browser.nvim"}

    },
  config = function()
    require("telescope").load_extension("live_grep_args")
    require("telescope").load_extension "file_browser"
  end
  }

   use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
   use('nvim-treesitter/playground')
   use('ThePrimeagen/harpoon')
   use('mbbill/undotree')
   use('tpope/vim-fugitive')
   use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment these if you want to manage LSP servers from neovim
     {'williamboman/mason.nvim'},
     {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}
use { 'windwp/nvim-ts-autotag',
 config = function()
     require('nvim-ts-autotag').setup()
 end}

use {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
    }
  end,
  requires = {'nvim-tree/nvim-web-devicons'}
}
use {
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',
}

use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}

use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
use { "catppuccin/nvim", as = "catppuccin" }

use { "NeogitOrg/neogit" }
use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
use "nvim-lua/plenary.nvim"
use 'm4xshen/autoclose.nvim'
use({
  "roobert/tailwindcss-colorizer-cmp.nvim",
  -- optionally, override the default options:
  config = function()
    require("tailwindcss-colorizer-cmp").setup({
      color_square_width = 2,
    })
  end
})
use 'norcalli/nvim-colorizer.lua'
end)
