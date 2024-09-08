return {
  {
    'github/copilot.vim',
    lazy = false,
    config = function()
      vim.g.copilot_no_tab_map = true
      vim.keymap.set('i', '<C-g>', 'copilot#Accept("<CR>")', { silent = true, expr = true, script = true, replace_keycodes = false })
      vim.keymap.set('i', '<C-j>', '<Plug>(copilot-next)')
      vim.keymap.set('i', '<C-k>', '<Plug>(copilot-previous)')
      vim.keymap.set('i', '<C-o>', '<Plug>(copilot-dismiss)')
      vim.keymap.set('i', '<C-s>', '<Plug>(copilot-suggest)')
    end,
  },

  {
    'CopilotC-Nvim/CopilotChat.nvim',
    branch = 'canary',
    dependencies = {
      { 'zbirenbaum/copilot.lua' }, -- or github/copilot.vim
      { 'nvim-lua/plenary.nvim' }, -- for curl, log wrapper
    },
    opts = {
      debug = true, -- Enable debugging
      -- See Configuration section for rest
    },
    -- See Commands section for default commands if you want to lazy load on them
  },
}
