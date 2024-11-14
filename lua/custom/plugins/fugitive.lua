
return {
  'tpope/vim-fugitive',
  priority = 1000,
  init = function()
    vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
  end,
}
