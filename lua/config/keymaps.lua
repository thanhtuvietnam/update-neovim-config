local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

--Do things without affecting the register
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

--Increment/decrement
-- keymap("n", "+", "<C-a>")
-- keymap("n", "-", "<C-x>")

--Delete a word backwards
-- keymap.set("n", "dw", "vb_d")
-- keymap("n", "<C-a>", "gg<S-v>G")

--Jumplist
-- keymap("n", "<C-m>", "<C-i>", opts)

--New Tab
-- keymap("n", "<Leader>te", ":tabedit<CR>", opts)
-- keymap("n", "<Tab>", ":tabnext<CR>", opts)
-- keymap("n", "<S-Tab>", ":tabprev<CR>", opts)

--Split window
keymap("n", "ss", ":split<CR>", opts)
keymap("n", "sv", ":vsplit<CR>", opts)

-- Diagnostics
--
-- keymap("n", "<C-p>", function()
--   vim.diagnostic.goto_next()
-- end, opts)
-- Auto save
keymap("n", "<C-n>", ":ASToggle<CR>", {})
--
--
keymap({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
