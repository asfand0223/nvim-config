
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<leader>w", "<C-w>k")
vim.keymap.set("n", "<leader>a", "<C-w>h")
vim.keymap.set("n", "<leader>s", "<C-w>j")
vim.keymap.set("n", "<leader>d", "<C-w>l")
vim.keymap.set("n", "<Tab>", ":bn<CR>", { silent = true })
vim.keymap.set("n", "<S-Tab>", ":bp<CR>", { silent = true })
vim.keymap.set("n", "<leader>q", ":bp<CR>:bd #<CR>", { silent = true })
vim.keymap.set("n", "<leader>x", ":%y<CR>")
vim.keymap.set("n", "k", "v:count == 0 ? \"gk\" : \"k\"", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? \"gj\" : \"j\"", { expr = true, silent = true })
vim.keymap.set("n", "<leader>t", ":split term://bash <CR>", { silent = true })
vim.keymap.set("t", "<leader><Esc>", "<C-\\><C-n>", { silent = true })
vim.keymap.set("n", "<leader>v", ":edit ~/.config/nvim/init.lua<CR>", { silent = true })

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true})

vim.keymap.set("n", "<S-h>", ":bprevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-x>", ":Bdelete<CR>", { noremap = true, silent = true })

vim.cmd "sign define DiagnosticSignError text= texthl=DiagnosticSignError"
vim.cmd "sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn"
vim.cmd "sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo"
vim.cmd "sign define DiagnosticSignHint text= texthl=DiagnosticSignHint"

