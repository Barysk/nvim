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

--tabs
vim.keymap.set("n", "<leader>t", ":tabe<CR>",   { desc = "New tab"      })
vim.keymap.set("n", "<M-n>", ":tabn<CR>",       { desc = "Next tab"     })
vim.keymap.set("n", "<M-p>", ":tabp<CR>",       { desc = "Previous tab" })

-- splits
vim.keymap.set("n", "<leader>v", ":vsplit<CR>", { desc = "Enter Vsplit"        })
vim.keymap.set("n", "<leader>h", ":split<CR>",  { desc = "Enter Hsplit"        })
vim.keymap.set("n", "<M-h>",     "<C-w>h",      { desc = "Move to left split"  })
vim.keymap.set("n", "<M-l>",     "<C-w>l",      { desc = "Move to right split" })
vim.keymap.set("n", "<M-j>",     "<C-w>j",      { desc = "Move to below split" })
vim.keymap.set("n", "<M-k>",     "<C-w>k",      { desc = "Move to above split" })
vim.keymap.set("n", "<M-Left>",  "<C-w><",      { desc = "Resize split left"   })
vim.keymap.set("n", "<M-Right>", "<C-w>>",      { desc = "Resize split right"  })
vim.keymap.set("n", "<M-Up>",    "<C-w>+",      { desc = "Resize split up"     })
vim.keymap.set("n", "<M-Down>",  "<C-w>-",      { desc = "Resize split down"   })



-- moving line
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")
-- thank you theprimeagen
