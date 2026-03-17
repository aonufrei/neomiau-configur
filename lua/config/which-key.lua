local wk = require("which-key")

wk.setup({
  win = {
    row = math.huge,
    col = 0,
    border = "rounded",
  },
  layout = {
    align = "center",
  },
})

vim.keymap.set("n", "<leader>?", function()
  wk.show({ global = false })
end, { desc = "Buffer local keymaps" })
