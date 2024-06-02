local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")



require("vim_config.save_buffer")

vim.cmd[[colorscheme tokyonight-day]]
vim.opt.number = true


-- avoids source code shift while waiting for LSP to be loaded
vim.opt.signcolumn = "yes"


