-- https://www.reddit.com/r/neovim/comments/12yomtj/configuring_nvimufo_to_use_lsp_with_lazynvim/

local M = {
  'kevinhwang91/nvim-ufo',
  dependencies = { 'kevinhwang91/promise-async' },
  opts = {
    filetype_exclude = { 'help', 'alpha', 'dashboard', 'neo-tree', 'Trouble', 'lazy', 'mason' },
  },
  config = function(_, opts)
    vim.api.nvim_create_autocmd('FileType', {
      group = vim.api.nvim_create_augroup('local_detach_ufo', { clear = true }),
      pattern = opts.filetype_exclude,
      callback = function()
        require('ufo').detach()
      end,
    })

    vim.opt.foldlevelstart = 99
    vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
    vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
    require('ufo').setup(opts)
  end,
}

return M
