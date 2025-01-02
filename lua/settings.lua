-- 基本选项设置
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.cursorline = true



-- 平台相关设置
if vim.fn.has("win32") == 1 then
    -- Windows 特定设置
elseif vim.fn.has("unix") == 1 then
    -- Unix 特定设置
end
