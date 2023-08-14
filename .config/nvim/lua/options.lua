local options = {
  -- global options
  backup = false,                   -- disable backup files
  swapfile = false,                 -- creates a swapfile
  clipboard = "unnamedplus",        -- use system clipboard
  completeopt = "menuone,noselect", -- completion options
  fileencoding = "utf-8",

  -- Search options
  hlsearch = true,   -- highlight search results
  ignorecase = true, -- ignore case in search

  -- UI options
  cmdheight = 2,   -- more space for messages
  showtabline = 2, -- always show tabs
  showmode = true, -- don't show mode
  pumheight = 10,  -- pop-up menu height

  -- Editor options
  expandtab = true,       -- use spaces instead of tabs
  shiftwidth = 2,         -- shift 2 spaces when tab
  softtabstop = 2,        -- backspace 2 spaces when tab
  tabstop = 2,            -- tab is 2 spaces
  smartindent = true,     -- autoindent new lines
  autoindent = true,      -- autoindent new lines
  undofile = true,        -- enable persistent undo
  updatetime = 300,       -- faster completion (4000ms default)
  cursorline = true,      -- highlight the current line
  number = true,          -- show line numbers
  relativenumber = false, -- show relative line numbers
  numberwidth = 2,        -- set number column width to 2 {default 4}
  signcolumn = "yes",     -- always show the sign column, otherwise it would shift the text each time
  scrolloff = 8,          -- is one of my fav
  sidescrolloff = 8,

  --Window options
  guifont = "monospace:h17", -- the font used in graphical neovim applications
  termguicolors = true,      -- set term gui colors (most terminals support this)
  splitbelow = true,         -- force all horizontal splits to go below current window
  splitright = true,         -- force all vertical splits to go to the right of current window
}

for key, value in pairs(options) do
  vim.opt[key] = value
end
