-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}
local keymap = vim.keymap.set

vim.g.mapleader = " "    --set leader key

---------------
-- View Mode --
---------------
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)    -- move line down
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)    -- move line up
-- Hint: start visual mode with the same area as the previous area and the same mode
keymap("v", "<Tab>", ">gv", opts)    -- indent right
keymap("v", "<S-Tab>", "<gv", opts)    -- indent left

-----------------
-- Normal Mode --
-----------------
keymap("n", "J", ":m .+1<CR>==", opts)    -- move line down
keymap("n", "K", ":m .-2<CR>==", opts)    -- move line up
keymap("n", "<leader>o", "o<Esc>", opts)    -- insert new line below
keymap("n", "<leader>O", "O<Esc>", opts)    -- insert new line above
keymap("n", "<leader>nh", ":nohlsearch<CR>", opts)    -- clear search highlight
keymap("n", "<Tab>", ">>", opts)    -- indent right
keymap("n", "<S-Tab>", "<<", opts)    -- indent left
keymap("n", "<leader>j", "10j", opts)   -- move 10 lines down
keymap("n", "<leader>k", "10k", opts)   -- move 10 lines up
keymap("n", "<leader>l", "10e", opts)   -- move 10 words end
keymap("n", "<leader>h", "10b", opts)   -- move 10 words begin
-- Window Navigation
keymap("n", "<A-h>", "<C-w>h", opts)    -- move to left window
keymap("n", "<A-j>", "<C-w>j", opts)    -- move to down window
keymap("n", "<A-k>", "<C-w>k", opts)    -- move to up window
keymap("n", "<A-l>", "<C-w>l", opts)    -- move to right window
keymap("n", "<leader>wh", "<C-w>s", opts)    -- split window horizontally
keymap("n", "<leader>wv", "<C-w>v", opts)    -- split window vertically
keymap("n", "<A-w>", "<C-w>q", opts)    -- close window
keymap("n", "<leader>wq", "<C-w>q", opts)    -- close window
keymap("n", "<leader>wc", "<C-w>c", opts)    -- close window
-- Resize with arrows
-- delta: 2 lines
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-----------------
-- Insert Mode --
-----------------
