-- Fat cursor
-- vim.opt.guicursor = ""

-- line numbers
vim.opt.nu = true

-- relative line numbers
vim.opt.relativenumber = true

-- indent spacing
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- line wrapping off
vim.opt.wrap = false

-- backup and swp files
-- vim.opt.swapfile = false
-- vim.opt.backup = false
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- vim.opt.undofile = true

-- do not highlight search after enter
vim.opt.hlsearch = false

-- highlight as you search
vim.opt.incsearch = true

-- good colors
vim.opt.termguicolors = true

-- do not have less than 8 characters at bottom of file when scrolling
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- fast update time
vim.opt.updatetime = 50

-- color column
-- vim.opt.colorcolumn = "120"
