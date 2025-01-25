return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      style = "night",
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
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

  -- {
  --   "2nthony/vitesse.nvim",
  --   dependencies = {
  --     "tjdevries/colorbuddy.nvim",
  --   },
  --   config = function()
  --     require("vitesse").setup({
  --       comment_italics = true,
  --       transparent_background = true,
  --       transparent_float_background = true, -- aka pum(popup menu) background
  --       reverse_visual = false,
  --       dim_nc = false,
  --       cmp_cmdline_disable_search_highlight_group = false, -- disable search highlight group for cmp item
  --       -- if `transparent_float_background` false, make telescope border color same as float background
  --       telescope_border_follow_float_background = true,
  --       -- similar to above, but for lspsaga
  --       lspsaga_border_follow_float_background = true,
  --       -- diagnostic virtual text background, like error lens
  --       diagnostic_virtual_text_background = true,
  --
  --       -- override the `lua/vitesse/palette.lua`, go to file see fields
  --       colors = {},
  --       themes = {},
  --     })
  --   end,
  -- },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    optional = true,
    -- opts = { integrations = { blink_cmp = true }, },
  },
}
