vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.g.have_nerd_font = true

vim.opt.listchars = "eol:$,tab:>-,trail:~,extends:>,precedes:<"

vim.keymap.set({ "n" }, "<F5>", function()
    vim.opt.list = true
end, { desc = "Show whitespaces" })

vim.keymap.set({ "n" }, "<F6>", function()
    vim.opt.list = false
end, { desc = "Hide whitespaces" })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

require("config.lazy")

vim.cmd([[colorscheme tokyonight]])

require("config.mason")
require("config.web-devicons")
require("config.telescope")
require("config.conform")
require("config.neotree")
require("config.lsp")
require("config.copilot")
require("config.copilot-chat")
