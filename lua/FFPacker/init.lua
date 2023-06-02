
return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Telescope
	use {
		"nvim-telescope/telescope.nvim", tag = "0.1.0",
		-- or ,branch = "0.1.x",
		requires = { {"nvim-lua/plenary.nvim"} }

	}

	--use ("rrethy/vim-hexokinase", {run = ":terminal make hexokinase<Enter>"})
	use 'NvChad/nvim-colorizer.lua'

	-- Neon Theme
	use "rafamadriz/neon"

	-- Tokyo Night
	use "folke/tokyonight.nvim"
	-- Tree Sitter
	use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})
	--use("nvim-treesitter/playground")

	-- Harpoon
	use "theprimeagen/harpoon"

	-- Undo Tree
	use "mbbill/undotree"
	-- Git
	use "tpope/vim-fugitive"

	-- Nerd Tree
	--use "preservim/nerdtree"
	--use "tiagofumo/vim-nerdtree-syntax-highlight"
	--use "Xuyuanp/nerdtree-git-plugin"
	--use "PhilRunninger/nerdtree-visual-selection"

	-- Airline
	--use "vim-airline/vim-airline"
	--use "vim-airline/vim-airline-themes"		

	-- Lua Line, AirLine Replacement
	use {
		"nvim-lualine/lualine.nvim",
		requires = {"nvim-tree/nvim-web-devicons"}
	}

	-- LSP
	use {
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",
}

end)
