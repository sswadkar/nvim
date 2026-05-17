return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      transparent = false,
      styles = {
        sidebars = "dark",
        floats = "dark",
      },
      on_colors = function(colors)
        -- Slightly denser backgrounds so the editor reads better over a translucent terminal.
        colors.bg = "#161821"
        colors.bg_dark = "#14161d"
        colors.bg_float = "#161821"
        colors.bg_sidebar = "#14161d"
      end,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-night",
    },
  },
}
