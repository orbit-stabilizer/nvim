local options = {
  hlsearch = true,
  splitbelow = true,
  splitright = true,
  shiftwidth = 2,
  tabstop = 2,
  number = true,
  termguicolors = true,
  expandtab = true,
  smartindent = true,
  signcolumn = 'yes',
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
