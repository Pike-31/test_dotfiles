vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

-- allow movement of highlighted blocks with ctl j/k
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keeps cursor at start of line when appending previous line
vim.keymap.set("n", "J", "mzJ`z")

-- keep cursor in middle of page when jumping half pages
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keeps search terms in middle of screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- does not put removed lines into buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- leader y allows yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- more delete buffer help
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- allows crl c to do the same as escape in visual mode
vim.keymap.set("i", "<C-c>", "<Esc>")

-- don't allow capital Q to be pressed
vim.keymap.set("n", "Q", "<nop>")

-- crl f allows project switching in tmux
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- quick fix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- leader s will create sed replace on current word
vim.keymap.set("n", "<leader>sed", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- leader x will make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Copy file name
vim.keymap.set("n", "<leader>cf", "<cmd>let @+ = expand(\"%\")<CR>", { desc = "Copy File Name" })

-- copy file path
vim.keymap.set("n", "<leader>cp", "<cmd>let @+ = expand(\"%:p\")<CR>", { desc = "Copy File Path" })

-- close buffer
vim.keymap.set("n", "<leader>cb", "<cmd>bd<CR>", { desc = "Close Buffer" })

-- frecency smart picker for telescope
vim.keymap.set("n", "<leader><leader>", "<Cmd>Telescope frecency<CR>")
