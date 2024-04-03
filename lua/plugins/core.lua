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
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "L3MON4D3/LuaSnip",
    keys = false,
  },
  {
    "nvimtools/none-ls.nvim",
    enabled = false,
  },
  {
    "ggandor/flit.nvim",
    enabled = false,
    keys = {
      { "f", false },
      { "F", false },
      { "t", false },
      { "T", false },
    },
  },

  {
    "akinsho/bufferline.nvim", --tabs
    enabled = false,
  },
  {
    "projekt0n/github-nvim-theme",
    priority = 1000, -- make sure to load this before all the other start plugins
  },
  {
    "catppuccin/nvim", --theme
    enabled = false,
    name = "catppuccin",
  },
  {
    "akinsho/bufferline.nvim", -- Tabs
    enabled = false,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = false,
    opts = {
      filesystem = {
        filtered_items = {
          visible = false,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_by_name = {
            ".git",
            ".DS_Store",
            "thumbs.db",
          },
          never_show = {},
        },
      },
    },
  },
  {
    "ggandor/leap.nvim",
    opts = {
      highlight_unlabeled_phase_one_targets = false,
    },
    keys = false,
  },
  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = {
  --     autoformat = false,
  --   },
  -- },

  {
    "folke/flash.nvim",
    enabled = false,
    event = "VeryLazy",
    opts = {},
    keys = false,
    -- function()
    --   return {
    --     { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    --     { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    --     -- { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    --     -- { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    --     { "<leader>uF", mode = { "n" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    -- }
    -- end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      enable = true,
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
            [")("] = "@function.outer",
            ["]|"] = "@class.outer",
          },
          goto_next_end = {
            ["))"] = "@function.outer",
            ["]o"] = "@class.outer",
          },
          goto_previous_start = {
            ["(("] = "@function.outer",
            ["[|"] = "@class.outer",
          },
          goto_previous_end = {
            ["()"] = "@function.outer",
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
    },
  },
  {
    "echasnovski/mini.ai",
    enable = false,
  },
  {
    "echasnovski/mini.indentscope",
    opts = {
      mappings = {
        -- Textobjects
        object_scope = "hh",
        -- Motions (jump to respective border line; if not present - body line)
        goto_top = "[s",
        goto_bottom = "]s",
      },
    },
  },

  -- {
  --   "mfussenegger/nvim-dap",
  --
  --   dependencies = {
  --
  --     -- fancy UI for the debugger
  --     {
  --       "rcarriga/nvim-dap-ui",
  --       -- stylua: ignore
  --       keys = {
  --         { "<leader>du", function() require("dapui").toggle({}) end,  desc = "Dap UI" },
  --         { "<leader>de", function() require("dapui").eval() end,      desc = "Eval",  mode = { "n", "v" } },
  --       },
  --       opts = {},
  --       config = function(_, opts)
  --         local dap = require("dap")
  --         local dapui = require("dapui")
  --         dapui.setup(opts)
  --         dap.listeners.after.event_initialized["dapui_config"] = function()
  --           dapui.open({})
  --         end
  --         dap.listeners.before.event_terminated["dapui_config"] = function()
  --           dapui.close({})
  --         end
  --         dap.listeners.before.event_exited["dapui_config"] = function()
  --           dapui.close({})
  --         end
  --       end,
  --     },
  --
  --     {
  --       "theHamsta/nvim-dap-virtual-text",
  --       opts = {},
  --     },
  --
  --     -- which key integration
  --     {
  --       "folke/which-key.nvim",
  --       optional = true,
  --       opts = {
  --         defaults = {
  --           ["<leader>d"] = { name = "+debug" },
  --           ["<leader>da"] = { name = "+adapters" },
  --         },
  --       },
  --     },
  --
  --     -- mason.nvim integration
  --     {
  --       "jay-babu/mason-nvim-dap.nvim",
  --       dependencies = "mason.nvim",
  --       cmd = { "DapInstall", "DapUninstall" },
  --       opts = {
  --         -- Makes a best effort to setup the various debuggers with
  --         -- reasonable debug configurations
  --         automatic_installation = true,
  --
  --         -- You can provide additional configuration to the handlers,
  --         -- see mason-nvim-dap README for more information
  --         handlers = {},
  --
  --         -- You'll need to check that you have the required things installed
  --         -- online, please don't ask me how to install them :)
  --         ensure_installed = {
  --           -- Update this to ensure that you have the debuggers for the langs you want
  --         },
  --       },
  --     },
  --   },
  --
  --   -- stylua: ignore
  --   keys = {
  --     { "<leader>dB", function() require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: ')) end,
  --                                                                                                             desc =
  --       "Breakpoint Condition" },
  --     { "<leader>db", function() require("dap").toggle_breakpoint() end,                                    desc =
  --     "Toggle Breakpoint" },
  --     { "<leader>dc", function() require("dap").continue() end,                                             desc =
  --     "Continue" },
  --     { "<leader>dC", function() require("dap").run_to_cursor() end,                                        desc =
  --     "Run to Cursor" },
  --     { "<leader>dg", function() require("dap").goto_() end,                                                desc =
  --     "Go to line (no execute)" },
  --     { "<leader>di", function() require("dap").step_into() end,                                            desc =
  --     "Step Into" },
  --     { "<leader>dj", function() require("dap").down() end,                                                 desc = "Down" },
  --     { "<leader>dk", function() require("dap").up() end,                                                   desc = "Up" },
  --     { "<leader>dl", function() require("dap").run_last() end,                                             desc =
  --     "Run Last" },
  --     { "<leader>do", function() require("dap").step_out() end,                                             desc =
  --     "Step Out" },
  --     { "<leader>dO", function() require("dap").step_over() end,                                            desc =
  --     "Step Over" },
  --     { "<leader>dp", function() require("dap").pause() end,                                                desc =
  --     "Pause" },
  --     { "<leader>dr", function() require("dap").repl.toggle() end,                                          desc =
  --     "Toggle REPL" },
  --     { "<leader>ds", function() require("dap").session() end,                                              desc =
  --     "Session" },
  --     { "<leader>dt", function() require("dap").terminate() end,                                            desc =
  --     "Terminate" },
  --     { "<leader>dw", function() require("dap.ui.widgets").hover() end,                                     desc =
  --     "Widgets" },
  --   },
  --
  --   config = function()
  --     local Config = require("lazyvim.config")
  --     vim.api.nvim_set_hl(0, "DapStoppedLine", { default = true, link = "Visual" })
  --
  --     for name, sign in pairs(Config.icons.dap) do
  --       sign = type(sign) == "table" and sign or { sign }
  --       vim.fn.sign_define(
  --         "Dap" .. name,
  --         { text = sign[1], texthl = sign[2] or "DiagnosticInfo", linehl = sign[3], numhl = sign[3] }
  --       )
  --     end
  --   end,
  -- },
}

-- vim.api.nvim_set_keymap("n", "<M-/>", ":echo 'Hello!'<CR>", { noremap = true })
