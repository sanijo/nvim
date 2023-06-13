-- Install package manager
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to set `mapleader` before lazy so your mappings are correct.
-- Otherwise wrong leader will be used.
require("core.set")

-- NOTE: Here is where you install your plugins.
--  You can configure plugins using the `config` key.
--
--  You can also configure plugins after the setup call,
--    as they will be available in your neovim runtime.
local plugins = {
  {
     'nvim-telescope/telescope.nvim', tag = '0.1.1',
     -- or                            , branch = '0.1.x',
     dependencies = {'nvim-lua/plenary.nvim'},
  },

--  {
--    'rose-pine/neovim',
--    name = 'rose-pine',
--    config = function()
--            vim.cmd('colorscheme rose-pine')
--    end,
--  }

--  {
--    'ellisonleao/gruvbox.nvim',
--    name = 'gruvbox',
--    config = function()
--  	  vim.cmd('colorscheme gruvbox')
--    end,
--  }

  {
     'Mofiqul/vscode.nvim',
     name = 'vscode',
     config = function()
   	  vim.cmd('colorscheme vscode')
     end,
  },

--  {
--     'EdenEast/nightfox.nvim',
--     name = 'nightfox',
--     config = function()
--   	  vim.cmd('colorscheme nightfox')
--     end,
--  },

  {
     "folke/trouble.nvim",
     config = function()
       require("trouble").setup {
         icons = false,
         -- your configuration comes here
         -- or leave it empty to use the default settings
         -- refer to the configuration section below
       }
     end,
  },

  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  'nvim-treesitter/playground',
  'theprimeagen/harpoon',
  'theprimeagen/refactoring.nvim',
  'mbbill/undotree',
  'tpope/vim-fugitive',
  'nvim-treesitter/nvim-treesitter-context',
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    dependencies = {
      'neovim/nvim-lspconfig',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets',
    },
  },
  "folke/zen-mode.nvim",
  "github/copilot.vim",
  "eandrju/cellular-automaton.nvim",
  "laytan/cloak.nvim",

  -- auto close parenthesis
  "Raimondi/delimitMate",

  -- nvim-tree file manager
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  },

  -- status line
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons'}
  },

  -- Terminal
  {'akinsho/toggleterm.nvim', version = "*", config = true}

}

local opts = {}

require("lazy").setup(plugins, opts)
