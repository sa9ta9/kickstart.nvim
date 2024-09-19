return {
  -- using lazy.nvim
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      vim.opt.termguicolors = true
      require('bufferline').setup {
        --  options = {
        --    indicator = {
        --      style = 'underline',
        --    },
        --    separator_style = 'slant',
        --    show_bufffers_icons = true,
        --  },
      }
    end,
  },

  {
    'kazhala/close-buffers.nvim',
    config = function()
      require('close_buffers').setup {
        preserve_window_layout = { 'this' },
        next_buffer_cmd = function(windows)
          require('bufferline').cycle(1)
          local bufnr = vim.api.nvim_get_current_buf()

          for _, window in ipairs(windows) do
            vim.api.nvim_win_set_buf(window, bufnr)
          end
        end,
      }
    end,
    vim.api.nvim_set_keymap('n', '<leader>th', [[<CMD>lua require('close_buffers').delete({type = 'hidden'})<CR>]], { noremap = true, silent = true }),
    vim.api.nvim_set_keymap('n', '<leader>tu', [[<CMD>lua require('close_buffers').delete({type = 'nameless'})<CR>]], { noremap = true, silent = true }),
    vim.api.nvim_set_keymap('n', '<leader>tc', [[<CMD>lua require('close_buffers').delete({type = 'this'})<CR>]], { noremap = true, silent = true }),
  },
}
