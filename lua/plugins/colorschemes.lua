return {
  {
    "folke/tokyonight.nvim",
    opts = {
      -- transparent = true,
      style = "night",
      -- styles = {
      --   sidebars = "transparent",
      --   floats = "transparent",
      -- },
    },
  },

  {
    "tiagovla/tokyodark.nvim",
    config = function(_, opts)
      require("tokyodark").setup(opts)
      -- vim.cmd([[colorscheme tokyodark]])
    end,
    opts = {
      transparent_background = true,
    },
  },

  {
    "2nthony/vitesse.nvim",
    dependencies = {
      "tjdevries/colorbuddy.nvim",
    },
    config = function()
      require("vitesse").setup({
        transparent_background = false,
        transparent_float_background = true,
      })
    end,
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    optional = true,
    opts = {
      integrations = { blink_cmp = true },
    },
  },
}
