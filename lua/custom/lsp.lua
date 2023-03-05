local status_ok, mason = pcall(require, "mason")
if not status_ok then
  return
end

local status_ok, masonlspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
  return
end

local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  return
end

mason.setup()

masonlspconfig.setup {
    ensure_installed = { "eslint", "html", "jsonls", "lua_ls", "tsserver", "yamlls" }
}

lspconfig.lua_ls.setup {}

local on_attach = function(_, _)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
    vim.keymap.set("n", "<leader>ac", vim.lsp.buf.code_action, {})

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
    vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
end

lspconfig.eslint.setup {
    on_attach = on_attach
}

lspconfig.html.setup {
    on_attach = on_attach
}

lspconfig.jsonls.setup {
    on_attach = on_attach
}

lspconfig.lua_ls.setup {
    on_attach = on_attach
}

lspconfig.tsserver.setup {
    on_attach = on_attach
}

lspconfig.yamlls.setup {
    on_attach = on_attach
}
