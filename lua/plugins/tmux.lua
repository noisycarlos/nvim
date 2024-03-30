return {
  "christoomey/vim-tmux-navigator",
  vim.keymap.set("", "<c-m>", ":TmuxNavigateLeft<cr>"),
  vim.keymap.set("", "<c-n>", ":TmuxNavigateDown<cr>"),
  vim.keymap.set("", "<c-e>", ":TmuxNavigateUp<cr>"),
  vim.keymap.set("", "<c-i>", ":TmuxNavigateRight<cr>"),
  vim.keymap.set("", "<c-k>", ":TmuxNavigatePrevious<cr>"),
}
