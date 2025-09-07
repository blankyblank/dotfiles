require('undotree').setup()
require('fzf-lua').setup{
  winopts = {
    preview = { scrollbar = false, },
  },
  files = { cwd_prompt = false, },
}

require("gomove").setup {
  map_defaults = true,
  undojoin = true,
  reindent = true,
  move_past_end_col = true,
}

require("colorizer").setup({
  user_default_options = {
    names = true,
    names_opts = { lowercase = false, },
    RRGGBBAA = true,
    rgb_fn = true,
    css = true,
    css_fn = true,
  },
})

require("mason").setup()
--require('nvim-treesitter').setup{
--  incremental_selection = {
--    enable = true,
--     keymaps = {
--        init_selection = "gnn",
--        node_incremental = "grn",
--        scope_incremental = "grc",
--        node_decremental = "grm",
--      },
--  },
--  indent = {enable = true},
--}
