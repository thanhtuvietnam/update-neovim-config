return {
  {
    "folke/snacks.nvim",
    ---@type table
    opts = {
      bigfile = {},
      dashboard = {
        width = 80,
        row = nil,
        col = nil,
        pane_gap = 4,
        autokeys = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ",
        preset = {
          header = [[
████████╗██╗   ██╗██╗     ███████╗██████╗     ██╗     ██╗   ██╗██╗   ██╗
╚══██╔══╝╚██╗ ██╔╝██║     ██╔════╝██╔══██╗    ██║     ██║   ██║██║   ██║
   ██║    ╚████╔╝ ██║     █████╗  ██████╔╝    ██║     ██║   ██║██║   ██║
   ██║     ╚██╔╝  ██║     ██╔══╝  ██╔══██╗    ██║     ██║   ██║██║   ██║
   ██║      ██║   ███████╗███████╗██║  ██║    ███████╗╚██████╔╝╚██████╔╝
   ╚═╝      ╚═╝   ╚══════╝╚══════╝╚═╝  ╚═╝    ╚══════╝ ╚═════╝  ╚═════╝ 
          ]],
        },
      },
      indent = {
        priority = 1,
        enabled = true,
        scope = {
          enabled = true, -- enable highlighting the current scope
          priority = 200,
          char = "│",
          underline = true, -- underline the start of the scope
          only_current = false, -- only show scope in the current window
          hl = "SnacksIndentScope", ---@type string|string[] hl group for scopes
        },
      },
      input = {},
      notifier = {},
      quickfile = {},
      scroll = {},
      terminal = {
        win = {
          style = "float",
          border = "rounded",
          width = 0.8,
          height = 0.8,
        },
      },
      statuscolumn = { enabled = true },
      words = {},
    },
  },
}
