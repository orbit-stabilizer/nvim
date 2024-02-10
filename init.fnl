;; Set up lazy.nvim
(local lazypath (.. (vim.fn.stdpath "data") "/lazy/lazy.nvim"))
(if (not (vim.loop.fs_stat lazypath))
  (vim.fn.system ["git" "clone" "--filter=blob:none" "https://github.com/folke/lazy.nvim.git" "--branch=stable" lazypath])) (vim.opt.rtp.prepend vim.opt.rtp lazypath)

;; Run commands
(fn run-cmd! [option value]
  ((. vim.cmd option) value))

((. (require :lazy) :setup)
 [
  {
    1 "catppuccin/nvim"
    :config (fn [] 
              ((. (require "catppuccin") :setup)
               {
                :transparent_background true
               })
              (run-cmd! :colorscheme "catppuccin"))
  }
  {
    1 "nvim-treesitter/nvim-treesitter"
    :config (fn []
              ((. (require "nvim-treesitter.configs") :setup)
               {
                :ensure_installed ["c" "lua" "vim" "vimdoc" "fennel"]
                :auto_install true
                :highlight {:enable true}
               }))
  }
  {
    1 "neovim/nvim-lspconfig"
    :config (fn []
              (let [lspconfig (require "lspconfig")]
                (lspconfig.clangd.setup {})))
  }
])
