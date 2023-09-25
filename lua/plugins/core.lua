return {
  {
    "rcarriga/nvim-notify",
    fps = 60,
    top_down = true,
    opts = {
      -- level = 3,
      render = "minimal",
      -- stages = "static",
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    enabled = false,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      autoformat = false,
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      textobjects = {
        select = {
          enable = true,
          lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
          keymaps = {
            -- You can use the capture groups defined in textobjects.scm
            ["aa"] = "@parameter.outer",
            ["ia"] = "@parameter.inner",
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
          },
        },
        move = {
          enable = true,
          set_jumps = true, -- whether to set jumps in the jumplist
          goto_next_start = {
            ["]["] = "@function.outer",
            ["]|"] = "@class.outer",
          },
          goto_next_end = {
            ["]]"] = "@function.outer",
            ["]o"] = "@class.outer",
          },
          goto_previous_start = {
            ["[["] = "@function.outer",
            ["[|"] = "@class.outer",
          },
          goto_previous_end = {
            ["[]"] = "@function.outer",
            ["[o"] = "@class.outer",
          },
        },
        swap = {
          enable = true,
          swap_next = {
            ["<leader>a"] = "@parameter.inner",
          },
          swap_previous = {
            ["<leader>A"] = "@parameter.inner",
          },
        },
      },
    }

  },

}


-- vim.api.nvim_set_keymap("n", "<M-/>", ":echo 'Hello!'<CR>", { noremap = true })
