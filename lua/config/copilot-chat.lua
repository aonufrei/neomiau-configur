require("CopilotChat").setup({
  window = {
    layout = "vertical",
    width = 0.35,
  },
})

vim.keymap.set({ "n", "v" }, "<leader>cc", ":CopilotChatToggle<CR>", { desc = "Toggle Copilot Chat" })
vim.keymap.set({ "n", "v" }, "<leader>ce", ":CopilotChatExplain<CR>", { desc = "Copilot Chat Explain" })
vim.keymap.set({ "n", "v" }, "<leader>cr", ":CopilotChatReview<CR>", { desc = "Copilot Chat Review" })
