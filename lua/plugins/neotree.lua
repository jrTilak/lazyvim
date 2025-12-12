return {
  -- Disable snacks.nvim file explorer to use neo-tree only
  {
    "folke/snacks.nvim",
    opts = {
      explorer = { enabled = false },
    },
  },
  -- Configure neo-tree as the file explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      opts.filesystem = opts.filesystem or {}
      opts.filesystem.filtered_items = opts.filesystem.filtered_items or {}

      -- Keep existing settings
      local filtered = opts.filesystem.filtered_items

      -- Show hidden files (dotfiles)
      filtered.visible = true
      filtered.hide_dotfiles = false
      filtered.hide_gitignored = false

      -- Keep existing never_show and extend pattern
      filtered.never_show = filtered.never_show or {}
      filtered.never_show_by_pattern = filtered.never_show_by_pattern or {}

      local extra_patterns = {}

      vim.list_extend(filtered.never_show_by_pattern, extra_patterns)

      return opts
    end,
  },
}
