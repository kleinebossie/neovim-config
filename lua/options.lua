vim.keymap.set("i", "§", "<Esc>")
vim.keymap.set("n", "§", "<Esc>")
vim.keymap.set("v", "§", "<Esc>")
vim.keymap.set("x", "§", "<Esc>")
vim.keymap.set("t", "§", "<C-\\><C-n>")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>ch", function()
  vim.cmd('!open -a "Google Chrome" --args --incognito ' .. vim.fn.expand("%:p"))
end, { desc = "Open current file in Chrome" })

vim.keymap.set("n", "<leader>sl", function()
  vim.cmd("!cp ~/.stylelintrc.json .")
end, { desc = "Copy .stylelint.json to current directory" })

vim.keymap.set("n", "<leader>js", function()
  vim.cmd("!cp ~/jsconfig.json .")
end, { desc = "Copy jsconfig.json to current directory" })

vim.keymap.set("n", "<leader>ts", function()
  vim.cmd("!cp ~/tsconfig.json .")
end, { desc = "Copy tsconfig.json to current directory" })

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d')

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.relativenumber, vim.opt.number = true, true

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
})
