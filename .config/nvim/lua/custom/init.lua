return {
  { 'LazyVim/LazyVim', import = 'lazyvim.plugins' },

  -- NOTE: Lazy extras
  { import = "lazyvim.plugins.extras.ui.alpha" },
  { import = "lazyvim.plugins.extras.lang.rust" },

  -- NOTE: Override
  { import = 'custom.keybinds' },
  { import = 'custom.plugins' },
}
