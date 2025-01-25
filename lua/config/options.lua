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

-- NOTE: NEOVIDE
vim.opt.linespace = 3
-- vim.g.neovide_text_gamma = 5
-- vim.g.neovide_text_contrast = 7
vim.g.neovide_padding_top = 0
vim.g.neovide_padding_bottom = 0
vim.g.neovide_padding_right = 0
vim.g.neovide_padding_left = 0
vim.g.neovide_floating_blur_amount_x = 2.0
vim.g.neovide_floating_blur_amount_y = 2.0
vim.g.neovide_floating_shadow = true
vim.g.neovide_floating_z_height = 10
vim.g.neovide_light_angle_degrees = 45
vim.g.neovide_light_radius = 5
vim.g.neovide_floating_corner_radius = 0.0
-- vim.g.neovide_transparency = 0.8
-- vim.g.neovide_normal_opacity = 0.8
-- vim.g.neovide_show_border = true
vim.g.neovide_hide_mouse_when_typing = true
-- vim.g.neovide_underline_stroke_scale = 5.0
vim.g.neovide_theme = "auto"
vim.g.neovide_remember_window_size = true
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_cursor_animate_in_insert_mode = true
-- vim.g.neovide_cursor_vfx_mode = "railgun"
-- vim.g.neovide_cursor_vfx_mode = "torpedo"
-- vim.g.neovide_cursor_vfx_mode = "pixiedust"
vim.g.neovide_cursor_vfx_mode = "sonicboom"
-- vim.g.neovide_cursor_vfx_mode = "ripple"
-- vim.g.neovide_cursor_vfx_mode = "wireframe"
vim.g.neovide_cursor_vfx_opacity = 50.0
