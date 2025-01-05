-- bootstrap lazy.nvim, LazyVim and your plugins
-- set termguicolors
-- if vim.g.vscode then
--   -- Cấu hình khi chạy trong VSCode
-- else
-- end
-- init.lua

if vim.g.vscode then
  vim.cmd([[source $HOME/.config/nvim/vscode/keybindings.json]])
  -- vim.cmd([[source $HOME/.config/nvim/vscode/easymotion-config.vim]])
else
  require("config.lazy")
end
