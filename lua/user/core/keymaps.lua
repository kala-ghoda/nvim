local keymap = vim.keymap

keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })
keymap.set("n", "<leader>q", "<cmd>Ex<CR>", { desc = "Open explorer" })

keymap.set("n", "<leader>v", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>s", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>n", "<C-w>n", { desc = "Open new window" })
keymap.set("n", "<leader>e", "<C-w>=", { desc = "Split window equal sizes" })
keymap.set("n", "<leader>x", "<cmd>close<CR>", { desc = "Close current split" })
keymap.set("n", "<leader>h", "<C-w>h", { desc = "Move to left window" })
keymap.set("n", "<leader>j", "<C-w>j", { desc = "Move to right window" })
keymap.set("n", "<leader>k", "<C-w>k", { desc = "Move to down window" })
keymap.set("n", "<leader>l", "<C-w>l", { desc = "Move to right window" })
keymap.set("n", "<leader>,", "<C-w><", { desc = "Increase width on left side" })
keymap.set("n", "<leader>.", "<C-w>>", { desc = "Increase width on right side" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- FZF keymaps
local builtin = require("telescope.builtin")
keymap.set("n", "<leader>ff", builtin.find_files, {})
keymap.set("n", "<leader>gf", builtin.git_files, {})
keymap.set("n", "<leader>pf", function() builtin.grep_string({ search = vim.fn.input("Grep > ") }) end, {})

-- NvimTree keymaps
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })
