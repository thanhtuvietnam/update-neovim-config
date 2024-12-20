return {
  --blink
  {
    "saghen/blink.cmp",
    version = "v0.*",
    build = vim.g.lazyvim_blink_main and "cargo build --release",

    dependencies = {
      "rafamadriz/friendly-snippets",
      "L3MON4D3/LuaSnip",
      {
        "saghen/blink.compat",
        optional = true,
        opts = {},
        version = not vim.g.lazyvim_blink_main and "*",
      },
    },

    event = "InsertEnter",

    opts = {
      keymap = {
        preset = "default",
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

      highlight = {
        -- supporting themes: tokyonight
        -- not supported: nightfox
        use_nvim_cmp_as_default = true,
      },

      completion = {
        accept = { auto_brackets = { enabled = true } },

        menu = {
          border = "rounded",
          draw = {},
        },

        documentation = {
          auto_show = true,
          window = {
            border = "rounded",
          },
        },
      },
      signature = {
        enabled = true,
        window = {
          border = "rounded",
        },
      },

      sources = {
        completion = {
          enabled_providers = { "lsp", "path", "snippets", "buffer", "luasnip", "lazydev" },
          providers = {
            -- create provider
            compat = {},
            lazydev = {
              name = "LazyDev",
              module = "lazydev.integrations.blink",
              score_offset = 100,
            },
          },
        },
      },

      appearance = {
        highlight_ns = vim.api.nvim_create_namespace("blink_cmp"),
        use_nvim_cmp_as_default = false,
        nerd_font_variant = "mono",
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
  },
}
