return {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
      on_attach = function(bufnr)
        local gitsigns = require 'gitsigns'

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        -- preview hunk
        map('n', '<leader>Gp', gitsigns.preview_hunk)

        -- Git blame
        map('n', '<leader>Gb', gitsigns.toggle_current_line_blame)

        -- diff per line?
        map('n', '<leader>Gd', gitsigns.diffthis)
      end,
    }

    local hl = vim.api.nvim_set_hl

    -- Gitsigns
    hl(0, 'GitGutterAdd', { fg = 'NONE', bg = 'NONE' })
    hl(0, 'GitGutterChange', { fg = 'NONE', bg = 'NONE' })
    hl(0, 'GitGutterDelete', { fg = 'NONE', bg = 'NONE' })
    hl(0, 'GitGutterChangeDelete', { fg = 'NONE', bg = 'NONE' })

    hl(0, 'GitSignsAdd', { fg = 'NONE', bg = 'NONE' })
    hl(0, 'GitSignsChange', { fg = 'NONE', bg = 'NONE' })
    hl(0, 'GitSignsDelete', { fg = 'NONE', bg = 'NONE' })
  end,
}
