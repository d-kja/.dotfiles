-- NOTE: Mapping to go back to :Explorer
vim.keymap.set('n', '-', function()
  vim.api.nvim_command 'Ex'
end)

-- INFO:
-- another way to run Terminal commands:
-- Map("t", "<C-h>", "<cmd>wincmd h<CR>")

vim.opt.clipboard = 'unnamedplus'

return {}
