-- mason.lua
require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "zls" },
    automatic_installation = false,   -- explicitly disable
    automatic_enable = false,    
})

local lspconfig = require("lspconfig")

-- Setup for ZLS (Zig LSP)
lspconfig.zls.setup({})

-- Setup for Lua LS (recommended extras for neovim development)
lspconfig.lua_ls.setup({
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
        },
    },
})

