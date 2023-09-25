vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true

vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

--use spaces for tabs and whatnot
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

--Line numbers
vim.wo.relativenumber = true
vim.wo.number = true

vim.opt.swapfile = false

vim.keymap.set('i', '<c-z>', '<Esc>:undo<CR>i')
vim.keymap.set('n', '<s-k>', ':pyf /usr/share/clang/clang-format.py<CR>')
vim.keymap.set('n', '<leader>ac', ':%y+<CR>')
vim.keymap.set('n', '<TAB>', '%')
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<c-s>', ':write<CR>')
vim.keymap.set('n', 'q', ':quit<CR>')
vim.keymap.set('n', '<leader>q', ':quitall!<CR>')
