return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  init = function()
    vim.cmd.colorscheme 'tokyonight-day'
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  end,
}
