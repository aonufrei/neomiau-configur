require("neo-tree").setup({
  close_if_last_window = true,
  default_component_configs = {
    icon = {
      folder_closed = "",
      folder_open = "",
      folder_empty = "󰜌",
      default = "󰈔",
    },
  },
  filesystem = {
    filtered_items = {
      visible = true,
      hide_dotfiles = false,
      hide_gitignored = false,
      hide_hidden = false,
    },
  },
})

vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Toggle file explorer" })
