-- Formats code
vim.keymap.set('n', "<leader>cfa", function()
  vim.lsp.buf.format()
end)

-- Moves to the left/right
vim.keymap.set('n', '<leader>ga', '0', { desc = 'Go to the start of the line' })
vim.keymap.set('n', '<leader>c<Left>', '0', { desc = 'Go to the start of the line' })
vim.keymap.set('n', '<leader>gd', '$', { desc = 'Go to the end of the line' })
vim.keymap.set('n', '<leader>c<Right>', '$', { desc = 'Go to the end of the line' })

return {}
