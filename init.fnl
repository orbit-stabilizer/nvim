;; Set up lazy.nvim
(local lazypath (.. (vim.fn.stdpath "data") "/lazy/lazy.nvim"))
(if (not (vim.loop.fs_stat lazypath))
  (vim.fn.system ["git" "clone" "--filter=blob:none" "https://github.com/folke/lazy.nvim.git" "--branch=stable" lazypath])) (vim.opt.rtp.prepend vim.opt.rtp lazypath)

;; Run commands
(lambda run-cmd! [option value]
  ((. vim.cmd option) value))

((. (require :lazy) :setup)
 [
  {
    1 "catppuccin/nvim"
    :config (lambda [] 
              ((. (require "catppuccin") :setup)
               {
                :transparent_background true
               })
              (run-cmd! :colorscheme "catppuccin"))
  }
  {
    1 "nvim-treesitter/nvim-treesitter"
    :config (lambda []
              ((. (require "nvim-treesitter.configs") :setup)
               {
                :ensure_installed ["c" "lua" "vim" "vimdoc" "fennel"]
                :auto_install true
                :highlight {:enable true}
                :incremental_selection {:enable true :keymaps {:init_selection "<Leader>ss" :node_incremental "<Leader>si" :scope_incremental "<Leader>sc" :node_decremental "<Leader>sd"}}
                :textobjects {:select {:enable true :lookahead true :include_surrounding_whitespace true :selection_modes {"@parameter.outer" "v" "@function.outer" "V" "@class.outer" "<c-v>"} :keymaps { 
                  :af "@function.outer"
                  :if "@function.inner"
                  :ac "@class.outer"
                  :ic {:query "@class.inner" :desc "Select inner part of a class region"}
                  :as {:query "@scope" :query_group "locals" :desc "Select language scope"}}}}
                }
               ))
  }
  {
    1 "nvim-treesitter/nvim-treesitter-textobjects"
  }
])

