return require('packer').startup(function(use)
	-- Packer can manage itself
	use "wbthomason/packer.nvim"

	-- Formatter
	use "mhartington/formatter.nvim"

	use "michaelrommel/nvim-silicon"

	use "Exafunction/codeium.vim"

	-- Telescope
	use {
		"nvim-telescope/telescope.nvim",
		-- or ,branch = "0.1.x",
		requires = { "nvim-lua/plenary.nvim" }
	}
	-- Telescope File Browser
	use {
		"nvim-telescope/telescope-file-browser.nvim",
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	}

	use({
		"ziontee113/color-picker.nvim",
		config = function()
			require("color-picker")
		end,
	})
	--use ("rrethy/vim-hexokinase", {run = ":terminal make hexokinase<Enter>"})
	use "NvChad/nvim-colorizer.lua"

	-- Neon Theme
	use "rafamadriz/neon"

	-- Tokyo Night
	use "folke/tokyonight.nvim"
	-- Tree Sitter
	use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
	use "nvim-treesitter/playground"

	-- Harpoon
	use "theprimeagen/harpoon"

	-- Undo Tree
	use "mbbill/undotree"
	-- Git
	use "tpope/vim-fugitive"

	-- Lua Line, AirLine Replacement
	use {
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons" }
	}

	-- SQF Syntax?
	use "sqwishy/vim-sqf-syntax"

	-- LSP
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'L3MON4D3/LuaSnip' },
		}
	}
end)
