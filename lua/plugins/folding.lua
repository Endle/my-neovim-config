-- https://www.reddit.com/r/neovim/comments/12yomtj/configuring_nvimufo_to_use_lsp_with_lazynvim/

local M = {
	"chrisgrieser/nvim-origami",
	event = "BufReadPost", -- later or on keypress would prevent saving folds
	opts = {}, -- needed even when using default config
}

return M
