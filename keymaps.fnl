(lambda set-key! [mode new old]
  (let [opts {:noremap true :silent true}]
    (vim.keymap.set mode new old opts)))

(set vim.g.mapleader " ")
(set-key! :n "<leader>wh" "<C-w>h")
(set-key! :n "<leader>wj" "<C-w>j")
(set-key! :n "<leader>wk" "<C-w>k")
(set-key! :n "<leader>wl" "<C-w>l")

