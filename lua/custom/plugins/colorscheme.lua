return {
  'gbprod/nord.nvim',
  name = 'nord',
  priority = 1000,
  init = function()
    vim.cmd.colorscheme 'nord'
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  end,
}
