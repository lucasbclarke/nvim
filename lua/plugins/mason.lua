-- mason.lua
require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = { "zls", "nil_ls" },  -- Only ZLS, not lua_ls
    automatic_installation = false,
    automatic_enable = false,    
})

-- Remove all the Lua LS configuration from here
-- It should be configured in a separate file or in lsp-zero setup
