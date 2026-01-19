vim.diagnostic.config({
  virtual_text = false, -- 🚫 no inline messages
  underline = true, -- ✅ keep squiggly lines
  signs = true, -- ✅ gutter icons (E, W, etc.)
  update_in_insert = false,
  severity_sort = true,
})
