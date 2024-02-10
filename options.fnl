(fn set-opt! [option value]
  (tset vim.opt option value))

(set-opt! :number true)
(set-opt! :relativenumber true)
(set-opt! :splitbelow true)
(set-opt! :splitright true)
(set-opt! :wrap false)
(set-opt! :expandtab true)
(set-opt! :tabstop 2)
(set-opt! :shiftwidth 2)
(set-opt! :clipboard "unnamedplus") ;; Might want to remove this so system clipboard is different
(set-opt! :scrolloff 999)
(set-opt! :virtualedit "block")
(set-opt! :inccommand "split")
(set-opt! :ignorecase true)
(set-opt! :termguicolors true)
