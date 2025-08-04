


--require("vim_config.save_buffer")

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


-- require("cscope_maps").setup()

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
require("config.key_binding")
require("config.lazy")
require("config.lsp_config")
