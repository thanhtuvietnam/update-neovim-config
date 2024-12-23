return {
  {
    "saghen/blink.cmp",
    dependencies = {
      "rafamadriz/friendly-snippets",
      {
        "saghen/blink.compat",
        optional = true,
        opts = {},
        version = not vim.g.lazyvim_blink_main and "*",
      },
      { "L3MON4D3/LuaSnip", version = "v2.*" },
    },
    version = "v0.*",
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = { preset = "default" },

      sources = {
        default = { "lsp", "path", "snippets", "buffer", "luasnip" },
        -- optionally disable cmdline completions
        -- cmdline = {},
      },

      snippets = {
        expand = function(snippet)
          require("luasnip").lsp_expand(snippet)
        end,
        active = function(filter)
          if filter and filter.direction then
            return require("luasnip").jumpable(filter.direction)
          end
          return require("luasnip").in_snippet()
        end,
        jump = function(direction)
          require("luasnip").jump(direction)
        end,
      },

      completion = {
        accept = { auto_brackets = { enabled = true } },

        menu = {
          border = "rounded",
          draw = {
            columns = {
              { "label", "label_description", gap = 1 },
              { "kind_icon", "kind" },
            },
          },
        },

        documentation = {
          auto_show = true,
          window = {
            border = "rounded",
          },
        },

        ghost_text = {
          enabled = true,
        },
      },

      signature = { enabled = false, window = { border = "rounded" } },

      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "normal",

        kind_icons = {
          Text = "󰉿",
          Method = "󰊕",
          Function = "󰊕",
          Constructor = "󰒓",

          Field = "󰜢",
          Variable = "󰆦",
          Property = "󰖷",

          Class = "󱡠",
          Interface = "󱡠",
          Struct = "󱡠",
          Module = "󰅩",

          Unit = "󰪚",
          Value = "󰦨",
          Enum = "󰦨",
          EnumMember = "󰦨",

          Keyword = "󰻾",
          Constant = "󰏿",

          Snippet = "󱄽",
          Color = "󰏘",
          File = "󰈔",
          Reference = "󰬲",
          Folder = "󰉋",
          Event = "󱐋",
          Operator = "󰪚",
          TypeParameter = "󰬛",
        },
      },
    },
    opts_extend = { "sources.default" },
  },
}
