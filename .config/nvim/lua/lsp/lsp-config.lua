local lsp_status, lspconfig = pcall(require, "lspconfig")
if not lsp_status then
  return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return
end

local keymap = vim.keymap

local on_attach = function(client, bufnr)
  -- keybind options
  local opts = { noremap = true, silent = true, buffer = bufnr }

  -- set keybinds
  keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)             -- show definition, references
  keymap.set("n", "gD", vim.lsp.buf.declaration, opts)                         -- got to declaration
  keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)            -- see definition and make edits in window
  keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)        -- go to implementation
  keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)       -- go to implementation
  keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)                 -- see available code actions
  keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)        -- see available code actions, in visual mode will apply to selection
  keymap.set("n", "<leader>rn", ":IncRename ", opts)                           -- smart rename
  keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file
  keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)                -- show diagnostics for line
  keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)                        -- jump to previous diagnostic in buffer
  keymap.set("n", "]d", vim.diagnostic.goto_next, opts)                        -- jump to next diagnostic in buffer
  keymap.set("n", "K", vim.lsp.buf.hover, opts)                                -- show documentation for what is under cursor
end

local capabilities = cmp_nvim_lsp.default_capabilities()

local servers = require "lsp.servers"

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    capabilities = capabilities
  })
end
