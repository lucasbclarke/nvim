require('mason').setup({})
require('mason-lspconfig').setup({
<<<<<<< HEAD
    ensure_installed = {'lua_ls', 'zls', 'ols'},
})
require('lspconfig').zls.setup{}
require('lspconfig').ols.setup{}
=======
    ensure_installed = {'lua_ls', 'zls'},
})
require('lspconfig').zls.setup{}
>>>>>>> 597bb8b (latest nvim config)
