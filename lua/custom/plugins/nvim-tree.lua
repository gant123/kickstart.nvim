return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('nvim-tree').setup {
      view = {
        width = 30,
        side = 'left',
      },
      renderer = {
        highlight_opened_files = 'all',
        icons = {
          glyphs = {
            default = '',
            folder = {
              arrow_closed = '',
              arrow_open = '',
            },
          },
        },
      },
    }
    vim.keymap.set('n', '<leader>pf', ':NvimTreeToggle<CR>', { desc = 'Toggle file explorer' })
    vim.keymap.set('n', '<leader>e', ':NvimTreeFocus<CR>', { desc = 'Focus nvim-tree' })
  end,
}
