local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Do things without affecting the register
keymap("n", "x", '"_x', opts)
local leader_mappings = {
  p = '"52p',
  P = '"52P',
  c = '"_c',
  C = '"_C',
  d = '"_d',
  D = '"_D',
}
for key, cmd in pairs(leader_mappings) do
  keymap({ "n", "v" }, "<Leader>" .. key, cmd, opts)
end

-- Split window
keymap("n", "ss", ":split<CR>", opts)
keymap("n", "sv", ":vsplit<CR>", opts)

-- Auto save
-- keymap("n", "<C-n>", ":ASToggle<CR>", {})

keymap({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- DIAGNOSTIC
keymap("n", "<C-n>", function()
  _G.disable_cursorhold = true
  vim.diagnostic.goto_next()
  vim.defer_fn(function()
    vim.diagnostic.open_float(nil, { focusable = false, border = "rounded" })
    _G.disable_cursorhold = false
  end, 100)
end, opts)

keymap("n", "<C-p>", function()
  _G.disable_cursorhold = true
  vim.diagnostic.goto_prev()
  vim.defer_fn(function()
    vim.diagnostic.open_float(nil, { focusable = false, border = "rounded" })
    _G.disable_cursorhold = false
  end, 100)
end, opts)
