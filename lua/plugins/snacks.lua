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
        enabled = true, -- Bật hướng dẫn thụt lề
        char = "│", -- Ký tự hiển thị cho hướng dẫn thụt lề
        only_scope = false, -- Chỉ hiển thị hướng dẫn thụt lề của phạm vi hiện tại
        only_current = false, -- Chỉ hiển thị hướng dẫn thụt lề trong cửa sổ hiện tại
        hl = "SnacksIndent", -- Nhóm highlight cho hướng dẫn thụt lề
        -- Có thể là danh sách các nhóm highlight để luân phiên
        -- hl = {
        --     "SnacksIndent1",
        --     "SnacksIndent2",
        --     "SnacksIndent3",
        --     "SnacksIndent4",
        --     "SnacksIndent5",
        --     "SnacksIndent6",
        --     "SnacksIndent7",
        --     "SnacksIndent8",
        -- },
        animate = {
          enabled = vim.fn.has("nvim-0.10") == 1,
          style = "out",
          easing = "linear", -- Kiểu easing cho hoạt ảnh
          duration = {
            step = 20, -- ms mỗi bước
            total = 500, -- Thời gian tối đa
          },
        },
        scope = {
          enabled = true, -- Bật highlight cho phạm vi hiện tại
          priority = 200,
          char = "│", -- Ký tự hiển thị cho phạm vi
          underline = true, -- Gạch chân bắt đầu của phạm vi
          only_current = true, -- Chỉ hiển thị phạm vi trong cửa sổ hiện tại
          hl = "SnacksIndentScope", -- Nhóm highlight cho phạm vi
        },
        blank = {
          char = " ", -- Ký tự khoảng trắng
          -- char = "·",
          hl = "SnacksIndentBlank", -- Nhóm highlight cho khoảng trắng
        },
        -- Bộ lọc cho các buffer để bật hướng dẫn thụt lề
        filter = function(buf)
          return vim.g.snacks_indent ~= false and vim.b[buf].snacks_indent ~= false and vim.bo[buf].buftype == ""
        end,
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
