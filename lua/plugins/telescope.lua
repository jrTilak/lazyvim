return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    opts.defaults = opts.defaults or {}
    local ignore = opts.defaults.file_ignore_patterns or {}

    vim.list_extend(ignore, {
      -- Ignore folders anywhere in the path
      ".*/node_modules/.*",
      ".*/dist/.*",
      ".*/build/.*", -- this replaces client/build
      ".*/out/.*",
      ".*/coverage/.*",
      ".*/target/.*",
      ".*/generated/.*",

      -- Git
      ".*/%.git/.*",

      -- Next.js
      ".*/%.next/.*",

      -- Expo
      ".*/%.expo/.*",
      ".*/%.expo%-shared/.*",
      -- Vite
      ".*/vite%-dist/.*",

      -- WSL system folders
      "^/dev/",
      "^/proc/",
      "^/sys/",
    })

    opts.defaults.file_ignore_patterns = ignore
    return opts
  end,
}
