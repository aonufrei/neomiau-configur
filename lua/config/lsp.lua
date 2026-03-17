local servers = { "lua_ls", "ts_ls", "html", "elixirls", "omnisharp" }

require("mason-lspconfig").setup({
  ensure_installed = servers,
  automatic_enable = false,
})

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})

for _, server in ipairs(servers) do
  vim.lsp.enable(server)
end

vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Show line diagnostics" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local opts = { buffer = args.buf }

    local telescope_ok, builtin = pcall(require, "telescope.builtin")
    if telescope_ok then
      vim.keymap.set("n", "gd", builtin.lsp_definitions, opts)
      vim.keymap.set("n", "gr", builtin.lsp_references, opts)
      vim.keymap.set("n", "gI", builtin.lsp_implementations, opts)
      vim.keymap.set("n", "<leader>D", builtin.lsp_type_definitions, opts)
      vim.keymap.set("n", "<leader>ds", builtin.lsp_document_symbols, opts)
      vim.keymap.set("n", "<leader>ws", builtin.lsp_dynamic_workspace_symbols, opts)
    else
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
      vim.keymap.set("n", "gI", vim.lsp.buf.implementation, opts)
      vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
    end

    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set({ "n", "x" }, "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help, opts)
  end,
})
