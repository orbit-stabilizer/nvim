require 'user.options'
require 'user.keymaps'
require 'user.plugins'
require 'user.colorscheme'
require 'user.cmp'
require 'user.lsp'
require 'user.telescope'
require 'user.treesitter'
require 'user.autopairs'
require 'user.comment'
require 'user.gitsigns'
require 'user.nvim-tree'
require 'user.feline'
require 'user.toggleterm'

-- Set Python indent to 2 spaces
vim.cmd([[
  let g:python_recommended_style = 0
]], false)
