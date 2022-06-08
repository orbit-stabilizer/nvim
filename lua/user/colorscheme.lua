-- local colorscheme = 'onedark'

-- local status_ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)

-- if not status_ok then
	-- vim.notify('colorscheme ' .. colorscheme .. ' notfound!')
	-- return
-- end

require('onedark').setup {
	style = 'deep'
}
require('onedark').load()
