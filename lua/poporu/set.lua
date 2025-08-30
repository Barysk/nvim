vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.tabstop = 8
vim.opt.softtabstop = 8
vim.opt.shiftwidth = 8
vim.opt.expandtab = false

vim.keymap.set("n", "<C-t><C-t>", ":set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab<CR>")
vim.keymap.set("n", "<C-t><C-s>", ":set tabstop=4 softtabstop=4 shiftwidth=4 expandtab<CR>")
vim.keymap.set("n", "<C-t><C-b>", ":set tabstop=8 softtabstop=8 shiftwidth=8 expandtab<CR>")

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80,100,120"


vim.opt.list = true
vim.opt.listchars = {
    tab = '→ ',
    trail = '·',
    extends = '»',
    precedes = '«',
    nbsp = '␣'
}
