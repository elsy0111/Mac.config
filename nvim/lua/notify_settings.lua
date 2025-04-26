vim.api.nvim_create_autocmd("BufWritePost", {
  callback = function()
    vim.notify("Saved!", vim.log.levels.INFO, { title = "File Saved" })
  end,
})

vim.api.nvim_create_autocmd("User", {
  pattern = "LspDiagnosticsChanged",
  callback = function()
    local errors = vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
    if #errors > 0 then
      vim.notify("There are errors in this file.", vim.log.levels.ERROR, { title = "LSP Error" })
    end
  end,
})
