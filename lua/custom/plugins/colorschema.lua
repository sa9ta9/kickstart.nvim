return {
  'morhetz/gruvbox',
  priority = 1000,
  config = function()
    vim.cmd [[
        syntax enable
        set background=dark
        colorscheme gruvbox
        ]]
  end,
}
