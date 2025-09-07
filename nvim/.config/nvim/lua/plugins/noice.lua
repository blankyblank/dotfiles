return {
  "folke/noice.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
-- OPTIONAL:`nvim-notify`if you want to use the notification view.
    "rcarriga/nvim-notify",
  },
  event = "VeryLazy",
  opts = {
    presets = {
      bottom_search = true, -- use a classic bottom cmdline for search
      --command_palette = true, -- position the cmdline and popupmenu together
      long_message_to_split = true, -- long messages will be sent to a split
      --inc_rename = false, -- enables an input dialog for inc-rename.nvim
      lsp_doc_border = true, -- add a border to hover docs and signature help
    },
    cmdline = {
      view = "cmdline",
      format = {
        cmdline = { pattern = "^:", icon = " :", lang = "vim" },
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
    --hover = {
    --  silent = false,
    --},
    --messages = {},
    --popupmenu = {
    --  kind_icons = false,
    --},
    -- add any options here
    --routes = {
    --  {
    --    view = "notify",
    --    filter = { event = "msg_showmode" },
    --  },
    --},
