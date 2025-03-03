local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

local keymap = vim.keymap.set

keymap('n', '<leader>pv', vim.cmd.Ex)
keymap('n', '<leader>u', ":UndotreeShow<CR>")
keymap('i','jj', '<Escape>', opts)

keymap('n', '<leader>ga', ':nohlsearch<CR>', opts)

-- Move selection up and down
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

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
keymap('n', 'gt', ":bd<CR>", opts)
keymap('n', '<leader>ls', ":Telescope buffers<CR>", opts)
keymap('n', '<leader>tl', ":TodoTelescope<CR>", opts)

-- Shell Commands
keymap('n', '<leader>,', ":! ")

-- Window Navigation
keymap('n', '<leader>h', '<C-w>h', opts)
keymap('n', '<leader>j', '<C-w>j', opts)
keymap('n', '<leader>k', '<C-w>k', opts)
keymap('n', '<leader>l', '<C-w>l', opts)

-- Clever yank persistance per Chris@machine
keymap('v', 'p', '_dP', opts)

-- Goto Laravel Views
keymap('n', '<leader>gg', '<cmd>GoBlade<CR>', opts)

-- neotest
keymap('n', '<leader>tn', function() require('neotest').run.run() end)

-- Todo-comments
keymap('n', '<leader>do', ':TodoQuickFix<CR>', opts)
keymap('n', '<leader>ds', ':TodoTelescope<CR>')
