vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.listchars = "eol:$,tab:>-,trail:~,extends:>,precedes:<"

vim.keymap.set({ "n" }, "<F5>", function()
	vim.opt.list = true
end, { desc = "Show whitespaces" })

vim.keymap.set({ "n" }, "<F6>", function()
	vim.opt.list = false
end, { desc = "Hide whitespaces" })

require("config.lazy")

vim.cmd([[colorscheme tokyonight]])

require("config.mason")
require("config.telescope")
require("config.conform")
