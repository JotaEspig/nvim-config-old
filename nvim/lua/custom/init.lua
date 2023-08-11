local set = vim.opt

set.colorcolumn = "80"
set.tabstop = 4
set.shiftwidth = 4
vim.cmd("autocmd BufWritePost *.go silent !gofmt -s -w .")
