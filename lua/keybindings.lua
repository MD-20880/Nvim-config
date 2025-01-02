-- 基本快捷键设置
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- 取消默认的快捷键（示例）
map('n', '<Space>', '', opts)
vim.g.mapleader = ' '

-- 保存文件快捷键
map('n', '<Leader>w', ':w<CR>', opts)
