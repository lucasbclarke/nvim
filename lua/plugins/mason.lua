-- mason.lua
require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = { "nil_ls" }, 
    automatic_installation = false,
    automatic_enable = false,    
})
