-- This file can be loaded by calling `lua require('plugins')` from your init.vim

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd.packadd('packer.nvim')
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Mapleader specified here to be compatible with lazy plugins.lua setup
require("core.set")

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
  	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
  	  -- or                            , branch = '0.1.x',
  	  requires = { {'nvim-lua/plenary.nvim'} }
    }

--    use({
--  	  'rose-pine/neovim',
--  	  as = 'rose-pine',
--  	  config = function()
--  		  vim.cmd('colorscheme rose-pine')
--  	  end
--    })

--    use({
--  	  'ellisonleao/gruvbox.nvim',
--  	  as = 'gruvbox',
--  	  config = function()
--  		  vim.cmd('colorscheme gruvbox')
--  	  end
--    })

    use({
  	  'Mofiqul/vscode.nvim',
  	  as = 'vscode',
  	  config = function()
  		  vim.cmd('colorscheme vscode')
  	  end
    })

--    use({
--  	  'EdenEast/nightfox.nvim',
--  	  as = 'nightfox',
--  	  config = function()
--  		  vim.cmd('colorscheme nightfox')
--  	  end
--    })

    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    })


    use({"nvim-treesitter/nvim-treesitter", run = "TSUpdate"})
    use("nvim-treesitter/playground")
    use("theprimeagen/harpoon")
    use("theprimeagen/refactoring.nvim")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use("nvim-treesitter/nvim-treesitter-context");

    use {
  	  'VonHeikemen/lsp-zero.nvim',
  	  branch = 'v1.x',
  	  requires = {
  		  -- LSP Support
  		  {'neovim/nvim-lspconfig'}, -- enables lsp configuration
  		  {'williamboman/mason.nvim'}, -- enables managing language servers
  		  {'williamboman/mason-lspconfig.nvim'}, -- connects mason and lsp

  		  -- Autocompletion
  		  {'hrsh7th/nvim-cmp'},
  		  {'hrsh7th/cmp-buffer'},
  		  {'hrsh7th/cmp-path'},
  		  {'saadparwaiz1/cmp_luasnip'},
  		  {'hrsh7th/cmp-nvim-lsp'},
  		  {'hrsh7th/cmp-nvim-lua'},

  		  -- Snippets
  		  {'L3MON4D3/LuaSnip'},
  		  {'rafamadriz/friendly-snippets'},
  	  }
    }

    use("folke/zen-mode.nvim")
--    use("github/copilot.vim")
    use("eandrju/cellular-automaton.nvim")
    use("laytan/cloak.nvim")

    -- auto close parenthesis
    use("Raimondi/delimitMate")

    -- nvim-tree file manager
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional
      },
      config = function()
        require("nvim-tree").setup {}
      end
    }

    -- status line
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- terminal
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup()
    end}

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
      require('packer').sync()
    end
end)

