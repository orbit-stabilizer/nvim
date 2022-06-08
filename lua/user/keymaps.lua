local opts = { noremap = true, silent = true }
-- Shortenfunction name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Modes
--  normal_mode        = 'n'
--  insert_mode        = 'i'
--  visual_mode        = 'v'
--  visual_block_mode  = 'x'
--  term_mode          = 't'
--  command_mode       = 'c'

-- Normal --
-- Better scrolling
keymap('n', '<C-k>', '10k', opts)
keymap('n', '<C-j>', '10j', opts)

-- Better window navigation
keymap('n', '<S-h>', '<C-w>h', opts)
keymap('n', '<S-j>', '<C-w>j', opts)
keymap('n', '<S-k>', '<C-w>k', opts)
keymap('n', '<S-l>', '<C-w>l', opts)

keymap('n', '<leader>e', ':NvimTreeToggle<cr>', opts)

keymap('n', '<leader>vs', ':vsplit<cr>', opts)
keymap('n', '<leader>hs', ':split<cr>', opts)
keymap('n', '<leader>bd', ':q<cr>', opts)

-- Navigate buffers
keymap('n', '<leader>bn', ':bnext<cr>', opts)
keymap('n', '<leader>bp', ':bprevious<cr>', opts)

-- Clear search
keymap('n', '<leader>/', ':noh<cr>', opts)

-- Macros --
-- Recording Macros
keymap('n', '<leader>ra', 'qa', opts)
keymap('n', '<leader>rb', 'qb', opts)
keymap('n', '<leader>rc', 'qc', opts)
keymap('n', '<leader>rd', 'qd', opts)
keymap('n', '<leader>re', 'qe', opts)
keymap('n', '<leader>rf', 'qf', opts)
keymap('n', '<leader>rg', 'qg', opts)
keymap('n', '<leader>rh', 'qh', opts)
keymap('n', '<leader>ri', 'qi', opts)
keymap('n', '<leader>rj', 'qj', opts)
keymap('n', '<leader>rk', 'qk', opts)
keymap('n', '<leader>rl', 'ql', opts)
keymap('n', '<leader>rm', 'qm', opts)
keymap('n', '<leader>rn', 'qn', opts)
keymap('n', '<leader>ro', 'qo', opts)
keymap('n', '<leader>rp', 'qp', opts)
keymap('n', '<leader>rq', 'qq', opts)
keymap('n', '<leader>rt', 'qt', opts)
keymap('n', '<leader>ru', 'qu', opts)
keymap('n', '<leader>rv', 'qv', opts)
keymap('n', '<leader>rw', 'qw', opts)
keymap('n', '<leader>rx', 'qx', opts)
keymap('n', '<leader>ry', 'qy', opts)
keymap('n', '<leader>rz', 'qz', opts)

-- Stop recording
keymap('n', '<leader>rs', 'q', opts)

-- Playing Macros
keymap('n', '<leader>pa', '@a', opts)
keymap('n', '<leader>pb', '@b', opts)
keymap('n', '<leader>pc', '@c', opts)
keymap('n', '<leader>pd', '@d', opts)
keymap('n', '<leader>pe', '@e', opts)
keymap('n', '<leader>pf', '@f', opts)
keymap('n', '<leader>pg', '@g', opts)
keymap('n', '<leader>ph', '@h', opts)
keymap('n', '<leader>pi', '@i', opts)
keymap('n', '<leader>pj', '@j', opts)
keymap('n', '<leader>pk', '@k', opts)
keymap('n', '<leader>pl', '@l', opts)
keymap('n', '<leader>pm', '@m', opts)
keymap('n', '<leader>pn', '@n', opts)
keymap('n', '<leader>po', '@o', opts)
keymap('n', '<leader>pp', '@p', opts)
keymap('n', '<leader>pq', '@q', opts)
keymap('n', '<leader>ps', '@s', opts)
keymap('n', '<leader>pt', '@t', opts)
keymap('n', '<leader>pu', '@u', opts)
keymap('n', '<leader>pv', '@v', opts)
keymap('n', '<leader>pw', '@w', opts)
keymap('n', '<leader>px', '@x', opts)
keymap('n', '<leader>py', '@y', opts)
keymap('n', '<leader>pz', '@z', opts)

-- Telescope
keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
--keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<leader>g", "<cmd>Telescope live_grep<cr>", opts)

-- Visual --
-- Stay in indent mode
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)
