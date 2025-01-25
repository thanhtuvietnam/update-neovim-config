if vim.g.vscode then
  vim.cmd([[source $HOME/.config/nvim/vscode/keybindings.json]])
  -- vim.cmd([[source $HOME/.config/nvim/vscode/easymotion-config.vim]])
else
  require("config.lazy")
  vim.g.neovim_server = "127.0.0.1:6666"
end

-- NOTE: neovide

-- if vim.g.neovide then
--   require("config.lazy")
-- end
