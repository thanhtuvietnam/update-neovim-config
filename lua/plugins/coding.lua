return {
  {
    "echasnovski/mini.surround",
    opts = {
      -- mappings = {
      --   add = "gsa",
      --   delete = "gsd",
      --   find = "gsf",
      --   find_left = "gsF",
      --   highlight = "gsh",
      --   replace = "gsr",
      --   update_n_lines = "gsn",
      -- },
    },
  },
  --NOTE: This plugin is for garabage collection
  {
    "zeioth/garbage-day.nvim",
    dependencies = "neovim/nvim-lspconfig",
    event = "VeryLazy",
    opts = {
      -- your options here
    },
  },
}
