local cmd = vim.cmd
cmd([[
augroup LspFormatting
    autocmd! * <buffer>
    autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()
augroup END
]])
