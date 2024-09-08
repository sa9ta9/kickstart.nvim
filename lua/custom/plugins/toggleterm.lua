return {
  'akinsho/toggleterm.nvim',
  event = 'VeryLazy',
  config = function()
    require('toggleterm').setup {
      size = 20,
      open_mapping = [[<c-\>]],
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 1,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      -- direction = 'vertical' | 'horizontal' | 'tab' | 'float'
      direction = 'float',
    }
  end,
}
