local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local keymap = vim.keymap.set

keymap('i','jj', '<Escape>', opts)
keymap('n', '<leader>ga', ':nohlsearch<CR>', opts)

-- Allow gf to open non-existent files
keymap('', 'gf', ':edit <cfile><CR>', opts)

-- Reselect visual selection after indenting
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- Maintain the cursor position when yanking a visual selection
-- http://ddrscott.github.io/blog/2016/yank-without-jank/
keymap('v', 'y', 'myy`y', opts)
keymap('v', 'Y', 'myY`y', opts)

-- When text is wrapped, move by terminal rows, not lines, unless a count is provided
keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true }, opts)
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true }, opts)

keymap('n','<leader>e', ':Lex 30<CR>', opts)

-- Buffers
keymap('n', 'gn', ":bn<CR>", opts)
keymap('n', 'gp', ":bp<CR>", opts)
keymap('n', 'gd', ":bd<CR>", opts)

-- Window Navigation
keymap('n', '<leader>h', '<C-w>h', opts)
keymap('n', '<leader>j', '<C-w>j', opts)
keymap('n', '<leader>k', '<C-w>k', opts)
keymap('n', '<leader>l', '<C-w>l', opts)

-- Move Selection up and down
keymap('v', '<A-j>', ':m .+1<CR>==', opts)
keymap('v', '<A-k>', ':m .-2<CR>==', opts)

-- Clever yank persistance per Chris@machine
keymap('v', 'p', '_dP', opts)

keymap('n', '<leader>f', '<cmd>Telescope find_files<cr>', opts)
