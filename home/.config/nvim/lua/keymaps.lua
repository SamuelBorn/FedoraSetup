-- Save and quit
vim.keymap.set("n", "<leader>w", Fn(vim.cmd, "wa"))
vim.keymap.set("n", "<leader>q", vim.cmd.quit)
vim.keymap.set("n", "<leader>o", vim.cmd.only)

-- Go to complete end and beginnng of file
vim.keymap.set({ "n", "x" }, "gg", "gg0")
vim.keymap.set({ "n", "x" }, "G", "G$")

-- Select all
vim.keymap.set({ "n", "x" }, "<C-a>", "<Esc>ggVG")

-- Yank to system clipboard
vim.keymap.set({ "n", "x" }, "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+y$')
vim.keymap.set("n", "<A-y>", '<cmd>%y+<cr>')

-- Leave terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- Save file with sudo permissions
vim.keymap.set("ca", "w!!", "w !sudo tee % > /dev/null")

-- Unhighlight search
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Remove annoying keymap
vim.keymap.set("n", "q:", ":q")

-- Move lines up and down
vim.keymap.set("x", "J", ":m '>+1<cr>gv=gv")
vim.keymap.set("x", "K", ":m '<-2<cr>gv=gv")

-- Better j k in wrapped lines (10j still behaves like j)
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- Jump centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Window management
vim.keymap.set("n", "<leader>v", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>h", vim.cmd.split)
vim.keymap.set({ "n", "t" }, "<C-h>", Fn(vim.cmd.wincmd, "h"))
vim.keymap.set({ "n", "t" }, "<C-j>", Fn(vim.cmd.wincmd, "j"))
vim.keymap.set({ "n", "t" }, "<C-k>", Fn(vim.cmd.wincmd, "k"))
vim.keymap.set({ "n", "t" }, "<C-l>", Fn(vim.cmd.wincmd, "l"))
vim.keymap.set({ "n", "t" }, "<C-Up>", Fn(vim.cmd.resize, "+2"))
vim.keymap.set({ "n", "t" }, "<C-Down>", Fn(vim.cmd.resize, "-2"))
vim.keymap.set({ "n", "t" }, "<C-Left>", Fn(vim.cmd, "vertical resize -2"))
vim.keymap.set({ "n", "t" }, "<C-Right>", Fn(vim.cmd, "vertical resize +2"))
