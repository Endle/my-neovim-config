



--vim.cmd[[colorscheme tokyonight-day]]
vim.opt.number = true


-- avoids source code shift while waiting for LSP to be loaded
vim.opt.signcolumn = "yes"

-- tab settings
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4




-- nnoremap <leader>t :TagbarToggle<CR>
vim.keymap.set('n', '<leader>t', ':TagbarToggle<CR>')


require("config.lazy")

require("config.save_buffer")
require("config.lsp_config")

