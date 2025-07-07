vim.keymap.set({ "n", "i" }, "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set({ "n", "i" }, "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set({ "n", "i" }, "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set({ "n", "i" }, "<down>", '<cmd>echo "Use j to move!!"<CR>')

vim.opt.relativenumber = true
vim.opt.scrolloff = 23
vim.opt.statusline = "%f %=%c,%l"

vim.keymap.set("n", "<Leader>dl", ":Ex<Enter>")
vim.keymap.set("n", "<Leader>pl", vim.cmd.Lazy)
vim.keymap.set("n", "<Leader>ls", vim.cmd.Mason)

vim.keymap.set("n", "<Leader>t", vim.cmd.TimeTracker)

vim.keymap.set("n", "<Leader>s", "<C-^>")
vim.keymap.set("i", "<C-c>", "<Esc>")

local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

vim.o.clipboard = 'unnamedplus'
vim.keymap.set({"n", "v"}, "y", [["+y]])
vim.keymap.set("n", "Y", [["+Y]])

vim.keymap.set({"n", "v"}, "p", [["+p]])
vim.keymap.set("n", "P", [["+P]])

vim.keymap.set("n", "<Leader>vbg", ":VimBeGood<Enter>")

vim.keymap.set("n", "<C-;>", "<C-x>")
vim.keymap.set("n", "<C-[>", "<C-a>")
vim.g.zig_fmt_autosave = 0

vim.keymap.set("n", "<Leader>n", ":noh<Enter>")
