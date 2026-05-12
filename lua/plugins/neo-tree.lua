-- ~/.config/nvim/lua/plugins/neo-tree.lua
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      bind_to_cwd = true,
      cwd_target = "current",

      -- reveal current file but don't auto-expand everything
      follow_current_file = {
        enabled = true,
        leave_dirs_open = false,  -- close dirs you're not in
      },

      -- stop it from expanding empty dirs
      group_empty_dirs = true,

      -- don’t auto-expand nested dirs unless you explicitly open them
      hijack_netrw_behavior = "open_default",
    },
  },
}

