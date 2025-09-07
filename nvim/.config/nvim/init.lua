vim.cmd [[colorscheme onedark]]

require("config.lazy")
require("config.autocommand")
require("config.plugin-config")
require("config.keybinds")
require("config.theme")

local highlight = { "CursorLine", "Whitespace", }

vim.o.backup = true
vim.o.backupdir = os.getenv("HOME").."/.local/state/nvim/backup/"
vim.o.clipboard = "unnamedplus"
vim.o.cursorline = true
vim.o.number = true
vim.o.relativenumber = true
vim.diagnostic.config({ virtual_text = true })
vim.o.wrap = false
vim.o.mouse = ''
vim.o.showmode = true
vim.o.laststatus = 3
--vim.o.showcmd = false
--vim.o.statusline = ' %f %= %(%h%w%m%r%) %y '
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = 'number'
vim.o.timeoutlen = 200
vim.o.list = true
vim.o.inccommand = 'split'
vim.o.scrolloff = 38
vim.gave_nerd_font = false
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.termguicolors = true
vim.o.winborder = 'single'

require("config.lsp-config")
