vim.filetype.add({ extension = { templ = "templ" } })

vim.g.dap_virtual_text = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "80"
vim.o.scrolloff = 8
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.api.nvim_set_keymap('n', '<leader>Y', 'gg"+yG', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', 'K', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })