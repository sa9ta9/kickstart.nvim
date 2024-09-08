-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
      require('neo-tree').setup {
        open_on_setup = true,
        disable_netrw = true,
        hijack_netrw = true,
        auto_close = true,
        update_cwd = true,
        update_focused_file = {
          enable = true,
          update_cwd = true,
        },
        system_open = {
          cmd = nil,
          args = {},
        },
        filesystem = {
          filtered_items = {
            visible = false,
            hide_dotfiles = true,
            hide_gitignore = false,
            never_show = {
              'DS_Store',
              'thumbs.db',
            },
            always_show = {
              '.gitignored',
            },
          },
        },
      }
      -- Launch panel if nothing is typed after <leader>z
      vim.keymap.set('n', '<leader>z', '<cmd>Telekasten panel<CR>')

      -- Most used functions
      vim.keymap.set('n', '<leader>zf', '<cmd>Telekasten find_notes<CR>')
      vim.keymap.set('n', '<leader>zg', '<cmd>Telekasten search_notes<CR>')
      vim.keymap.set('n', '<leader>zd', '<cmd>Telekasten goto_today<CR>')
      vim.keymap.set('n', '<leader>zz', '<cmd>Telekasten follow_link<CR>')
      vim.keymap.set('n', '<leader>zn', '<cmd>Telekasten new_note<CR>')
      vim.keymap.set('n', '<leader>zc', '<cmd>Telekasten show_calendar<CR>')
      vim.keymap.set('n', '<leader>zb', '<cmd>Telekasten show_backlinks<CR>')
      vim.keymap.set('n', '<leader>zI', '<cmd>Telekasten insert_img_link<CR>')

      -- Call insert link automatically when we start typing a link
      vim.keymap.set('i', '[[', '<cmd>Telekasten insert_link<CR>')
    end,
  },
}
