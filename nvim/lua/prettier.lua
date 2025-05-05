vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.ts", "*.tsx", "*.c" },
  callback = function()
    vim.cmd("CocCommand editor.action.formatDocument")
  end,
})
