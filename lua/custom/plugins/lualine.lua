return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'gruvbox',
        tabline = {
          lualine_a = {
            {
              'buffers',
              -- buffers_color = switch_color,
              symbols = { modified = '_󰷥', alternate_file = ' ', directory = ' ' },
            },
          },
          lualine_b = {},
          lualine_c = { 'filename' },
          lualine_x = {},
          lualine_y = {},
          lualine_z = {},
        },
      },
    }
  end,
}
