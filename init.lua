-- 基础设置
require('settings')

-- 插件管理
require('plugins')

-- 快捷键绑定
require('keybindings')


-- 载入 nvim-tree 插件
require'nvim-tree'.setup {
     -- 这里可以添加你的自定义设置
    auto_close = true,  -- 窗口关闭时自动隐藏
    open_on_tab = true, -- 在标签页中打开
    -- 抛弃超过400ms的git请求，加快启动
    git = {
        enable = false,
        --enable = true,
        --timeout = 400 -- (in ms)
    },
    -- 其他自定义选项
    log = {
      enable = true,
      truncate = true,
      types = {
        all = false,
        config = false,
        copy_paste = false,
        dev = false,
        diagnostics = true,
        git = true,
        profile = true,
        watcher = true,
      },
    },
}

print("customized init.lua loaded")
