local autopairs_status, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_status then
  return
end

autopairs.setup({
  check_ts = true,
  ts_config = {
    java = false
  }
})

local cmp_autopairs_setup, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
if not cmp_autopairs_setup then
  return
end

local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
  return
end

-- make cmp autopairs compatible with autopairs
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
