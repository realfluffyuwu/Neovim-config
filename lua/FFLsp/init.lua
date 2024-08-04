local lsp_zero = require('lsp-zero')


lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({ buffer = bufnr })
	lsp_zero.buffer_autoformat()
end)

-- to learn how to use mason.nvim with lsp-zero
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {},
	handlers = {
		lsp_zero.default_setup,
	},
})

require('lspconfig').gdscript.setup({
	flags = {
		debounce_text_changes = 100,
	},
	on_attach = function(client)
		-- Godot Thing
		local _notify = client.notify
		client.notify = function(method, params)
			if method == 'textDocument/didClose' then
				-- Godot doesn't implement didClose yet
				return
			end
			_notify(method, params)
		end
	end
})

require('lspconfig').efm.setup({
	on_attach = lsp_zero.on_attach,
	flags = {
		debounce_text_changes = 100,
	},

	init_options = {
		documentFormatting = true,
	},
	settings = {
		rootMarkers = { ".git/" },
		languages = {
			gdscript = {
				{ formatCommand = "gdformat -l 80 -", formatStdin = true }
			}
		},
	},
})

require('lspconfig').pyright.setup({
	on_attach = lsp_zero.on_attach,

})
require('lspconfig').rust_analyzer.setup({
	on_attach = lsp_zero.on_attach,
})

require('lspconfig').tsserver.setup({
	on_attach = lsp_zero.on_attach,
})

require('lspconfig').clangd.setup({
	on_attach = lsp_zero.on_attach,
})

require('lspconfig').lua_ls.setup({
	on_attach = lsp_zero.on_attach,
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = 'LuaJIT',
			},
			diagnostics = {
				globals = {
					'vim', -- for Vimscript	
					'expr' -- for GDScript completetion
				},
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file('', true),
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		},
	},
})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({

	snippets = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end
	},

	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},

	mapping = cmp.mapping.preset.insert({
		-- `Enter` key to confirm completion
		['<CR>'] = cmp.mapping.confirm({ select = false }),

		-- Ctrl+Space to trigger completion menu
		['<C-Space>'] = cmp.mapping.complete(),

		-- Navigate between snippet placeholder
		['<C-f>'] = cmp_action.luasnip_jump_forward(),
		['<C-b>'] = cmp_action.luasnip_jump_backward(),

		-- Scroll up and down in the completion documentation
		['<C-u>'] = cmp.mapping.scroll_docs(-4),
		['<C-d>'] = cmp.mapping.scroll_docs(4),
	}),

	-- adding Math Source to cmp
	sources = cmp.config.sources({
		{ name = 'rpncalc' },
		{ name = 'luasnip' },
	}),
})
