require("rose-pine").setup({})

vim.api.nvim_set_hl(0, "DiffAdd", { fg="#9ccfd8" })
vim.api.nvim_set_hl(0, "DiffDelete", { fg="#eb6f92" })
vim.api.nvim_set_hl(0, "DiffChange", { fg="#0000FF" }) --not working maybe ??
