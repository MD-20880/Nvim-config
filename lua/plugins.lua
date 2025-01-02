-- 自动安装 Packer
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

-- 使用 Packer 管理插件
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- Packer 可以管理自己

    -- 你可以在这里添加更多插件

    if packer_bootstrap then
        require('packer').sync()
    end
end)
