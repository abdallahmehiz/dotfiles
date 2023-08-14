local ts_status, treesitter = pcall(require, "nvim-treesitter.configs")
if not ts_status then
  return
end

treesitter.setup({
  highlight = {
    enable = true,
  },
  indent = { enable = true },
  autotag = { enable = true },
  ensure_installed = {
    "bash",
    "bibtex",
    "c",
    "c_sharp",
    "cmake",
    "css",
    "cpp",
    "diff",
    "git_config",
    "git_rebase",
    "gitattributes",
    "gitcommit",
    "gitignore",
    "graphql",
    "groovy",
    "html",
    "http",
    "ini",
    "java",
    "javascript",
    "jq",
    "json",
    "json5",
    "kotlin",
    "latex",
    "lua",
    "markdown",
    "markdown_inline",
    "regex",
    "scss",
    "sql",
    "toml",
    "tsx",
    "typescript",
    "vim",
    "vue",
    "xml",
    "yaml"
  },
  auto_install = true,
})
