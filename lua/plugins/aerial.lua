return {
  "stevearc/aerial.nvim",
  opts = {
    nav = {
      border = "rounded",
      max_height = 0.9,
      min_height = { 10, 0.5 },
      max_width = 0.8,
      min_width = { 0.2, 20 },
      win_opts = {
        cursorline = true,
        winblend = 10,
      },
      -- Jump to symbol in source window when the cursor moves
      autojump = false,
      -- Show a preview of the code in the right column, when there are no child symbols
      preview = true,
      -- Keymaps in the nav window
      keymaps = {
        ["<CR>"] = "actions.jump",
        ["p"] = "actions.jump",
        ["<2-LeftMouse>"] = "actions.jump",
        ["v"] = "actions.jump_vsplit",
        ["s"] = "actions.jump_split",
        ["m"] = "actions.left",
        ["i"] = "actions.right",
        ["<Esc>"] = "actions.close",
      },
    },
  },
}
