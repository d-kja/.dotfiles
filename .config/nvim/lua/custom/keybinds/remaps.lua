local opts = { noremap = true, silent = true }

-- WARN: Replace capital actions with normal ones (I keep using capital I/U by mistake...)
vim.keymap.set('n', 'I', 'i', opts)
vim.keymap.set('n', 'U', 'u', opts)

return {}
