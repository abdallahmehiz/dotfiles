local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  "folke/lazy.nvim",         -- Plugin Manager (Auto Update :D)
  "nvim-lua/plenary.nvim",   -- Plenary for neovim
  "nvim-tree/nvim-tree.lua", -- File Explorer

  -- Editor
  "windwp/nvim-autopairs",  -- Autopairs
  "windwp/nvim-ts-autotag", -- Autotag for typescript
  "numToStr/Comment.nvim",  -- Comment plugin for Neovim
  "mattn/emmet-vim",        -- Emmet for neovim
  "mg979/vim-visual-multi", -- Multi-cursor
  "mhartington/formatter.nvim", -- Formatter
  -- UI
  "kyazdani42/nvim-web-devicons", -- Icons for neovim
  "romgrk/barbar.nvim",           -- Better looking tabs
  "nvim-lualine/lualine.nvim",    -- Statusline for neovim
  "folke/tokyonight.nvim",        -- Theme for neovim

  -- LSP and code completion
  "neovim/nvim-lspconfig",
  "williamboman/mason.nvim", -- LSP Installer
  "williamboman/mason-lspconfig",
  "hrsh7th/cmp-nvim-lsp",
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  "glepnir/lspsaga.nvim", -- LSP UI

  -- Snippets
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  "rafamadriz/friendly-snippets",

  -- Services
  "wakatime/vim-wakatime", -- Wakatime
  "github/copilot.vim",    -- GH Copilot for neovim
  "andweeb/presence.nvim", -- Discord RPC

  -- Fuzzy Finder (Telescope)
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  "nvim-telescope/telescope.nvim",

  -- Treesitter (Syntax Highlighting)
  {
    "nvim-Treesitter/nvim-treesitter",
    build = function()
      require("nvim-treesitter.install").update({ with_sync = true })
    end,
  },

  -- Git plugins
  "lewis6991/gitsigns.nvim", -- Git signs

  -- Misc
  "akinsho/toggleterm.nvim"

}

require("lazy").setup(plugins)
