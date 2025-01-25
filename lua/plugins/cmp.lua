return {
  {
    "saghen/blink.cmp",
    dependencies = {
      { "L3MON4D3/LuaSnip", version = "v2.*" },
      "giuxtaposition/blink-cmp-copilot",
      -- "echasnovski/mini.snippets",
    },

    opts = {
      snippets = {
        preset = "luasnip",
        -- preset = "default",
        -- preset = "mini_snippets",
      },

      sources = {
        default = { "lsp", "path", "snippets", "buffer", "copilot" },
        -- default = function(ctx)
        --   local success, node = pcall(vim.treesitter.get_node)
        --   if vim.bo.filetype == "lua" then
        --     return { "lsp", "path", "copilot" }
        --   elseif success and node and vim.tbl_contains({ "comment", "line_comment", "block_comment" }, node:type()) then
        --     return { "buffer" }
        --   else
        --     return { "lsp", "path", "snippets", "buffer", "copilot" }
        --   end
        -- end,

        providers = {
          buffer = {
            -- keep case of first char
            transform_items = function(a, items)
              local keyword = a.get_keyword()
              local correct, case
              if keyword:match("^%l") then
                correct = "^%u%l+$"
                case = string.lower
              elseif keyword:match("^%u") then
                correct = "^%l+$"
                case = string.upper
              else
                return items
              end

              -- avoid duplicates from the corrections
              local seen = {}
              local out = {}
              for _, item in ipairs(items) do
                local raw = item.insertText
                if raw:match(correct) then
                  local text = case(raw:sub(1, 1)) .. raw:sub(2)
                  item.insertText = text
                  item.label = text
                end
                if not seen[item.insertText] then
                  seen[item.insertText] = true
                  table.insert(out, item)
                end
              end
              return out
            end,
          },
        },
      },

      completion = {
        menu = {
          -- auto_show = function(ctx)
          --   return ctx.mode ~= "cmdline"
          -- end,
          auto_show = function(ctx)
            return ctx.mode ~= "cmdline" or not vim.tbl_contains({ "/", "?" }, vim.fn.getcmdtype())
          end,

          border = "rounded",
          draw = {
            -- columns = { { "item_idx" }, { "kind_icon" }, { "label", "label_description", gap = 1 } },
            columns = {
              { "label", "label_description", gap = 1 },
              { "kind_icon", "kind", gap = 1 },
            },

            components = {
              kind_icon = {
                ellipsis = false,
                text = function(ctx)
                  local kind_icon, _, _ = require("mini.icons").get("lsp", ctx.kind)
                  return kind_icon
                end,
                -- Optionally, you may also use the highlights from mini.icons
                highlight = function(ctx)
                  local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
                  return hl
                end,
              },
            },
          },
        },

        list = {
          selection = {
            preselect = function(ctx)
              return ctx.mode ~= "cmdline"
            end,
            auto_insert = function(ctx)
              return ctx.mode ~= "cmdline"
            end,
          },
        },
        trigger = {
          show_on_keyword = true,
          show_on_trigger_character = true,
        },
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 100,
          window = {
            border = "rounded",
          },
        },
      },
    },
  },
}
