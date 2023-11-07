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

vim.keymap.set('n', '<leader>do', '<cmd>lua vim.diagnostic.open_float()<CR>')

vim.keymap.set('i', '<c-z>', '<Esc>:undo<CR>i')
vim.keymap.set('n', '<s-k>', ':pyf /usr/share/clang/clang-format.py<CR>')
vim.keymap.set('n', '<leader>ac', ':%y+<CR>')
vim.keymap.set('n', '<TAB>', '%')
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<c-s>', ':write<CR>')
vim.keymap.set('n', 'q', ':quit<CR>')
vim.keymap.set('n', '<leader>q', ':quitall!<CR>')

-- barbar
vim.keymap.set('n', '<A-.>', '<Cmd>BufferNext<CR>')
-- Re-order to previous/next
vim.keymap.set('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>')
vim.keymap.set('n', '<A->>', '<Cmd>BufferMoveNext<CR>')
-- Goto buffer in position...
vim.keymap.set('n', '<A-1>', '<Cmd>BufferGoto 1<CR>')
vim.keymap.set('n', '<A-2>', '<Cmd>BufferGoto 2<CR>')
vim.keymap.set('n', '<A-3>', '<Cmd>BufferGoto 3<CR>')
vim.keymap.set('n', '<A-4>', '<Cmd>BufferGoto 4<CR>')
vim.keymap.set('n', '<A-5>', '<Cmd>BufferGoto 5<CR>')
vim.keymap.set('n', '<A-6>', '<Cmd>BufferGoto 6<CR>')
vim.keymap.set('n', '<A-7>', '<Cmd>BufferGoto 7<CR>')
vim.keymap.set('n', '<A-8>', '<Cmd>BufferGoto 8<CR>')
vim.keymap.set('n', '<A-9>', '<Cmd>BufferGoto 9<CR>')
vim.keymap.set('n', '<A-0>', '<Cmd>BufferLast<CR>')
-- Pin/unpin buffer
vim.keymap.set('n', '<A-p>', '<Cmd>BufferPin<CR>')
-- Close buffer
vim.keymap.set('n', '<A-c>', '<Cmd>BufferClose<CR>')
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
vim.keymap.set('n', '<C-p>', '<Cmd>BufferPick<CR>')
-- Sort automatically by...
vim.keymap.set('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>')
vim.keymap.set('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>')
vim.keymap.set('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>')
vim.keymap.set('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>')
