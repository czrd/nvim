local fn = vim.fn

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

-- install packer if needed
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
end

vim.cmd [[packadd packer.nvim]]

-- reload neovim when plugins.lua is saved
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- if failed to require packer, do nothing
local ok, packer = pcall(require, "packer")
if not ok then
  print "packer is not installed"
  return
end

return packer.startup(function(use)
  -- packer it self
  use "wbthomason/packer.nvim"

  -- lualine
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
    config = function()
      require("lualine").setup {}
    end,
  }

  -- utils
  use "lewis6991/impatient.nvim"
  use "nvim-lua/plenary.nvim"
  use "nvim-lua/popup.nvim"
  use "jiangmiao/auto-pairs"
  use {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  }
  use {
    "terrortylor/nvim-comment",
    config = function()
      require("nvim_comment").setup {}
    end,
  }
  use "gelguy/wilder.nvim"

  -- file navigation
  use {
    "kyazdani42/nvim-tree.lua",
    requires = {
      "kyazdani42/nvim-web-devicons", -- optional, for file icon
    },
    config = function()
      require("nvim-tree").setup {
        view = {
          width = 40,
        },
      }
    end,
  }
  use {
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/plenary.nvim" } },
    config = function()
      require("telescope").setup {
        defaults = {
          winblend = 20,
        },
      }
    end,
  }

  -- code navigation
  use "karb94/neoscroll.nvim"
  use "yuttie/comfortable-motion.vim"
  use "lukas-reineke/indent-blankline.nvim"
  use {
    "akinsho/bufferline.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("bufferline").setup {
        options = {
          show_buffer_close_icons = false,
          show_close_icon = false,
          diagnostics = "nvim_lsp",
        },
      }
    end,
  }
  use {
    "folke/todo-comments.nvim",
    config = function()
      require("todo-comments").setup()
    end,
  }
  use {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  }

  -- tag
  use "craigemery/vim-autotag"

  -- terminal
  use "akinsho/toggleterm.nvim"

  -- colorschemes
  use "challenger-deep-theme/vim"
  use "folke/tokyonight.nvim"

  -- LSP
  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer"
  use "tami5/lspsaga.nvim"
  use "jose-elias-alvarez/null-ls.nvim"

  -- completion
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/nvim-cmp"
  use "saadparwaiz1/cmp_luasnip"

  -- snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"

  -- tree-sitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }

  -- git
  use {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  }
  use "tpope/vim-fugitive"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
