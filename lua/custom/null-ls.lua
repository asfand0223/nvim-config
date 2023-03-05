local status_ok, null_ls = pcall(require, "null_ls")
if not status_ok then
    return
end

local formatting = null_ls.builtins.formatting

local sources = {
    formatting.eslint,
    formatting.stylua,
    formatting.prettier
}

null_ls.setup {
    sources = sources,
}
