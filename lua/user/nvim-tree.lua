-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`

local status_ok, nvim_tree = pcall(require, 'nvim-tree')
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, 'nvim-tree.config')
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup {
	open_on_setup = false,
	open_on_setup_file = false,
  disable_netrw = true,
  hijack_netrw = true,
  ignore_ft_on_setup = {
    'startify',
    'dashboard',
    'alpha',
  },
  open_on_tab = false,
  hijack_cursor = false,
  update_cwd = true,
  diagnostics = {
    enable = true,
    icons = {
      hint = '',
      info = '',
      warning = '',
      error = '',
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {},
  },
  system_open = {
    cmd = nil,
    args = {},
  },
  filters = {
    dotfiles = false,
    custom = {},
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'right',
    mappings = {
      custom_only = false,
      list = {
        { key = { 'l', '<CR>', 'o' }, cb = tree_cb 'edit' },
        { key = 'h', cb = tree_cb 'close_node' },
        { key = 'v', cb = tree_cb 'vsplit' },
        { key = 'H', action = '', cb = tree_cb },
      },
    },
    number = false,
    relativenumber = false,
  },
  trash = {
    cmd = 'trash',
    require_confirm = true,
  },
  actions = {
    open_file = {
      quit_on_open = false,
      window_picker = {
            enable = false,
      },
    },
	},
	renderer = {
    add_trailing = false,
    group_empty = false,
    highlight_git = false,
    highlight_opened_files = 'none',
    root_folder_modifier = ':~',
    indent_markers = {
      enable = false,
      icons = {
        corner = '└ ',
        edge = '│ ',
        none = '  ',
      },
    },
		icons = {
  		webdev_colors = true,
    	git_placement = 'before',
    	padding = ' ',
    	symlink_arrow = ' ➛ ',
    	show = {
      	file = true,
      	folder = true,
      	folder_arrow = true,
      	git = true,
    	},
    	glyphs = {
      	default = '',
      	symlink = '',
      	folder = {
      		arrow_closed = '',
      		arrow_open = '',
      		default = '',
      		open = '',
        	empty = '',
       		empty_open = '',
       		symlink = '',
        	symlink_open = '',
      	},
      	git = {
    		  -- unstaged = '',
    			-- staged = 'S',
        	unstaged = '✗',
        	staged = '✓',
        	unmerged = '',
        	renamed = '➜',
    			untracked = 'U',
        	deleted = '',
        	ignored = '◌',
      	},
			},
		},
  },
}

-- Replaces auto_close
-- vim.cmd([[
-- autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
-- ]])
