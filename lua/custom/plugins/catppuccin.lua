return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  dependencies = { 'folke/tokyonight.nvim' },
  config = function()
    local mocha_pallete = require('catppuccin.palettes').get_palette 'mocha'
    require('catppuccin').setup {
      flavour = 'mocha',
      color_overrides = {
        mocha = {
          base = require('tokyonight.util').darken(mocha_pallete.base, 0.54, '#000000'),
        },
      },
    }
    -- vim.cmd.colorscheme 'catppuccin'
  end,
}
