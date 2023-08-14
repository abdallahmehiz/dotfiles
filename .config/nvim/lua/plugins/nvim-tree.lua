local nvim_tree_status, nvim_tree = pcall(require, "nvim-tree")
if not nvim_tree_status then
  return
end

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvim_tree.setup()
