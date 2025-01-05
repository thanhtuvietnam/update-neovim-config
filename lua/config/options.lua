local opt = vim.opt
local global = vim.g

opt.wrap = true
opt.relativenumber = false

global.lazyvim_blink_main = false

-- Add asterisks in block comments
vim.opt.formatoptions:append({ "r" })

vim.cmd([[au BufNewFile,BufRead *.astro setf astro]])
vim.cmd([[au BufNewFile,BufRead Podfile setf ruby]])

if vim.fn.has("nvim-0.8") == 1 then
  vim.opt.cmdheight = 0
end

vim.opt.termguicolors = true
