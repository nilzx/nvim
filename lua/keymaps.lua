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
-- Window Navigation
keymap("n", "<A-h>", "<C-w>h", opts)    -- move to left window
keymap("n", "<A-j>", "<C-w>j", opts)    -- move to down window
keymap("n", "<A-k>", "<C-w>k", opts)    -- move to up window
keymap("n", "<A-l>", "<C-w>l", opts)    -- move to right window
keymap("n", "<leader>s", "<C-w>s", opts)    -- split window horizontally
keymap("n", "<leader>v", "<C-w>v", opts)    -- split window vertically
keymap("n", "<leader>q", "<C-w>q", opts) -- close window
keymap("n", "<A-q>", ":qa<CR>", opts)    -- close all
-- Buffer --
keymap("n", "<leader>bn", ":bn<CR>", opts)    -- change next buffer
keymap("n", "<leader>bp", ":bp<CR>", opts)    -- change prev buffer
keymap("n", "<leader>bd", ":bd<CR>", opts)    -- delete buffer
-- Resize with arrows
-- delta: 2 lines
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-----------------
-- Insert Mode --
-----------------
