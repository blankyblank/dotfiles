return {

  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true,
  },

  {
    "kylechui/nvim-surround",
    --version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end,
  },

  {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = {},
  },

  {'booperlv/nvim-gomove',},

}
