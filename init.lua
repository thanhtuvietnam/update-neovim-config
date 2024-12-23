-- bootstrap lazy.nvim, LazyVim and your plugins
if vim.g.vscode then
  -- Cấu hình khi chạy trong VSCode
else
  require("config.lazy")
end
