vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pp", ":e#<CR>")
vim.keymap.set("n", "<leader>ii", ":nohl<CR>")

-- paste without copying
vim.keymap.set("x", "<leader>p", [["_dP]])

-- copy to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete without copying
vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")

-- splits
vim.keymap.set("n", "<leader>v", ":vsplit<CR>", { desc = "Enter Vsplit"        })
vim.keymap.set("n", "<leader>h", ":split<CR>",  { desc = "Enter Hsplit"        })
vim.keymap.set("n", "<C-h>",     "<C-w>h",      { desc = "Move to left split"  })
vim.keymap.set("n", "<C-l>",     "<C-w>l",      { desc = "Move to right split" })
vim.keymap.set("n", "<C-j>",     "<C-w>j",      { desc = "Move to below split" })
vim.keymap.set("n", "<C-k>",     "<C-w>k",      { desc = "Move to above split" })
vim.keymap.set("n", "<C-Left>",  "<C-w><",      { desc = "Resize split left"   })
vim.keymap.set("n", "<C-Right>", "<C-w>>",      { desc = "Resize split right"  })
vim.keymap.set("n", "<C-Up>",    "<C-w>+",      { desc = "Resize split up"     })
vim.keymap.set("n", "<C-Down>",  "<C-w>-",      { desc = "Resize split down"   })



-- moving line
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")
-- thank you theprimeagen
