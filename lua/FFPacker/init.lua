return require('packer').startup(function(use)
	-- Packer can manage itself
	use "wbthomason/packer.nvim"

	-- Formatter
	use "mhartington/formatter.nvim"

	-- Silicon
	use "michaelrommel/nvim-silicon"

	-- Codeium
	use "Exafunction/codeium.vim"

	-- Comment
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	use {
		'goolord/alpha-nvim',
		requires = {
			'nvim-tree/nvim-web-devicons',
			'nvim-lua/plenary.nvim'
		},
		config = function()
			require 'alpha'.setup(require 'alpha.themes.fluffy'.config)
		end
	}

	-- Surround
	use "tpope/vim-surround"

	-- Repeat
	use "tpope/vim-repeat"

	-- Notify
	use 'rcarriga/nvim-notify'

	-- Floaterm
	use {
		'voldikss/vim-floaterm',
		config = function()
			vim.g.floaterm_width = 0.8
			vim.g.floaterm_height = 0.8
		end
	}

	-- Which-key
	use {
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end

	}

	-- noice
	use {
		"folke/noice.nvim",
		requires = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	}

	-- vim godot
	use "habamax/vim-godot"

	-- Telescope
	use {
		"nvim-telescope/telescope.nvim",
		-- or ,branch = "0.1.x",
		requires = { "nvim-lua/plenary.nvim" }
	}

	-- Window Picker
	use {
		's1n7ax/nvim-window-picker',
		tag = 'v2.*',
		config = function()
			require 'window-picker'.setup()
		end,
	}

	-- Telescope File Browser
	use {
		"nvim-telescope/telescope-file-browser.nvim",
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	}

	-- NeoTree
	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			"jackielii/neo-tree-harpoon.nvim"
		}
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
	--use "rafamadriz/neon"

	-- Tokyo Night
	--use "folke/tokyonight.nvim"

	-- Moonfly Theme
	use "bluz71/vim-moonfly-colors"

	-- Tree Sitter
	use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
	use "nvim-treesitter/playground"

	-- Harpoon
	use {
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { "mike-jl/harpoonEx" }
	}

	-- Undo Tree
	use "mbbill/undotree"
	-- Git
	use "tpope/vim-fugitive"

	-- Lua Line, AirLine Replacement
	use {
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true }
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
