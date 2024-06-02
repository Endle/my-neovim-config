-- Fix no parser for 'lua' language
-- following https://www.reddit.com/r/neovim/comments/1avd98x/comment/ks9iaxb/

return
{
	{
	"nvim-treesitter/nvim-treesitter",
	 build = ":TSUpdate",
	 config = function()
			 require("nvim-treesitter.configs").setup {
			ensure_installed = { "c", "lua", "rust" },
			highlight = { enable = true, }
		      }
		    end

	}
}
