_G.disable_cursorhold = false
-- Disable the concealing in some file formats
-- The default conceallevel is 3 in LazyVim
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc", "markdown" },
  callback = function()
    vim.opt.conceallevel = 0
  end,
})

-- vim.api.nvim_create_autocmd("CursorHold", {
--   callback = function()
--     if not _G.disable_cursorhold then
--       vim.diagnostic.open_float(nil, { focusable = false, border = "rounded" })
--     end
--   end,
-- })
