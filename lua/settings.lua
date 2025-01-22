-- 基本选项设置
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.cursorline = true

-- 左侧显示行号
vim.opt.number = true
vim.opt.relativenumber = true

-- f5刷新nvim
vim.api.nvim_set_keymap('n', '<F5>', ':source $MYVIMRC<CR>', { noremap = true, silent = true })

-- 系统复制粘贴-- 
-- Visual mode: Copy to clipboard
vim.api.nvim_set_keymap('v', '<C-c>', '"+yi', { noremap = true, silent = true })

-- Visual mode: Cut to clipboard
vim.api.nvim_set_keymap('v', '<C-x>', '"+c', { noremap = true, silent = true })

-- Visual mode: Paste from clipboard
vim.api.nvim_set_keymap('v', '<C-v>', 'c<ESC>"+p', { noremap = true, silent = true })

-- Insert mode: Paste from clipboard
vim.api.nvim_set_keymap('i', '<C-v>', '<ESC>"+pa', { noremap = true, silent = true })


-- 平台相关设置
if vim.fn.has("win32") == 1 then
    -- Windows 特定设置
elseif vim.fn.has("unix") == 1 then
    -- Unix 特定设置
end
