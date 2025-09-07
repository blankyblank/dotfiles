return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "modern",
      triggers = {
        { "<leader>", mode = { "n", "v" } },
        { "<C-w>", mode = { "n", "v" } },
        { "z", mode = { "n", "v" } },
        { "g", mode = { "n", "v" } },
      },
      icons = {
        breadcrumb = "+",
        separator = " ",
        group = "",
        mappings = true,
        colors = false,
        keys = { BS = "bkspace =", Esc = "esc =", },
      },
      win = {
        border = "single",
        wo = { winblend = 0, },
      },
      layout = { spacing = 3, },
      show_help = false,
      show_keys = false,
      plugins = {
        spelling = {
          enabled = false,
        },
        presets = {
          operators = true,
          motions = true, -- adds help for motions
          text_objects = true, -- help for text objects triggered after entering an operator
          windows = false, -- default bindings on <c-w>
          nav = true, -- misc bindings to work with windows
          z = true, -- bindings for folds, spelling and others prefixed with z
          g = true, -- bindings for prefixed with g
        },
      },

    },

    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = true })
        end,
        desc = "Buffer Keymaps",
      },
    },
  },
}
