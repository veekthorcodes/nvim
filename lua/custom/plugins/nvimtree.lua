return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      update_focused_file = {
        enable = true, -- Enables the highlighting of the currently active file
        update_cwd = true, -- Updates the current working directory to match the active file
        ignore_list = {}, -- List of file types or file names to ignore
      },
      git = {
        ignore = false
      }
    }
  end,
}
