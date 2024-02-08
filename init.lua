local function set_key_21(mode, new, old)
  _G.assert((nil ~= old), "Missing argument old on master.fnl:1")
  _G.assert((nil ~= new), "Missing argument new on master.fnl:1")
  _G.assert((nil ~= mode), "Missing argument mode on master.fnl:1")
  local opts = {noremap = true, silent = true}
  return vim.keymap.set(mode, new, old, opts)
end
vim.g.mapleader = " "
set_key_21("n", "<leader>wh", "<C-w>h")
set_key_21("n", "<leader>wj", "<C-w>j")
set_key_21("n", "<leader>wk", "<C-w>k")
set_key_21("n", "<leader>wl", "<C-w>l")
local function set_opt_21(option, value)
  _G.assert((nil ~= value), "Missing argument value on master.fnl:11")
  _G.assert((nil ~= option), "Missing argument option on master.fnl:11")
  do end (vim.opt)[option] = value
  return nil
end
set_opt_21("number", true)
set_opt_21("relativenumber", true)
set_opt_21("splitbelow", true)
set_opt_21("splitright", true)
set_opt_21("wrap", false)
set_opt_21("expandtab", true)
set_opt_21("tabstop", 2)
set_opt_21("shiftwidth", 2)
set_opt_21("clipboard", "unnamedplus")
set_opt_21("scrolloff", 999)
set_opt_21("virtualedit", "block")
set_opt_21("inccommand", "split")
set_opt_21("ignorecase", true)
set_opt_21("termguicolors", true)
local lazypath = (vim.fn.stdpath("data") .. "/lazy/lazy.nvim")
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath})
else
end
vim.opt.rtp.prepend(vim.opt.rtp, lazypath)
local function run_cmd_21(option, value)
  _G.assert((nil ~= value), "Missing argument value on master.fnl:34")
  _G.assert((nil ~= option), "Missing argument option on master.fnl:34")
  return vim.cmd[option](value)
end
local function _2_()
  require("catppuccin").setup({transparent_background = true})
  return run_cmd_21("colorscheme", "catppuccin")
end
local function _3_()
  return require("nvim-treesitter.configs").setup({ensure_installed = {"c", "lua", "vim", "vimdoc", "fennel"}, auto_install = true, highlight = {enable = true}, incremental_selection = {enable = true, keymaps = {init_selection = "<Leader>ss", node_incremental = "<Leader>si", scope_incremental = "<Leader>sc", node_decremental = "<Leader>sd"}}, textobjects = {select = {enable = true, lookahead = true, include_surrounding_whitespace = true, selection_modes = {["@parameter.outer"] = "v", ["@function.outer"] = "V", ["@class.outer"] = "<c-v>"}, keymaps = {af = "@function.outer", ["if"] = "@function.inner", ac = "@class.outer", ic = {query = "@class.inner", desc = "Select inner part of a class region"}, as = {query = "@scope", query_group = "locals", desc = "Select language scope"}}}}})
end
return require("lazy").setup({{"catppuccin/nvim", config = _2_}, {"nvim-treesitter/nvim-treesitter", config = _3_}, {"nvim-treesitter/nvim-treesitter-textobjects"}})
