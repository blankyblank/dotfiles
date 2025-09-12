return {
  "folke/noice.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    --"rcarriga/nvim-notify",
  },
  event = "VeryLazy",
  opts = {
    presets = {
      bottom_search = true, -- use a classic bottom cmdline for search
      long_message_to_split = true, -- long messages will be sent to a split
      lsp_doc_border = true, -- add a border to hover docs and signature help
    },
    cmdline = {
      view = "cmdline",
      format = {
        cmdline = false,
        search_down = false,
        search_up = false,
        filter = { pattern = "^:%s*!", icon = "$", lang = "bash" },
        lua = false,
        help = false,
        input = { view = "cmdline_input", icon = "󰥻 " }, -- Used by input()
      },
    },
    routes = {
      { filter = { event = "msg_show", any = { { find = "lines yanked" }, }, }, view = "mini", }, --opts = { skip = true }, 
      { filter = { event = "msg_show", any = { { find = "more lines" }, }, }, view = "mini", },
      { filter = { event = "msg_show", any = { { find = "fewer lines" }, }, }, view = "mini", },
      { filter = { event = "msg_show", any = { { find = "lines to indent" }, }, }, opts = { skip = true }, },
      { filter = { event = "msg_show", any = { { find = "lines indented" }, }, }, view = "mini", },
      { filter = { event = "msg_show", any = { { find = "lines >ed" }, }, }, opts = { skip = true }, },
      { filter = { event = "msg_show", any = { { find = "lines <ed" }, }, }, opts = { skip = true }, },
    },
    lsp = {
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
      },
    },
  },
}
