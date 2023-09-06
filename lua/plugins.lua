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

require("lazy").setup({
	{
		"folke/which-key.nvim",
	  	event = "VeryLazy",
	  	init = function()
	    		vim.o.timeout = true
	    		vim.o.timeoutlen = 300
  		end
	},

	{
		'nvimdev/indentmini.nvim',
	    	event = 'BufEnter',
	    	--config = function()
	        --	require('indentmini').setup()
	    	--end,
		config = function()
			require("indentmini").setup({
				char = "|",
	        		exclude = {
	            			"erlang",
			        	"markdown",
				}
			})
			-- use comment color
			vim.cmd.highlight("default link IndentLine Comment")
		end
	},
	{
		"numToStr/Comment.nvim",
  		opts = {},
  		lazy = false
	},
	{
		"L3MON4D3/LuaSnip",
		version = "2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		build = "make install_jsregexp",
		dependencies = {
			"rafamadriz/friendly-snippets",
			"molleweide/LuaSnip-snippets.nvim"
		},
		lazy=false
	},

	"tanvirtin/monokai.nvim",

	{
		'hrsh7th/nvim-cmp',
		dependencies = {"hrsh7th/cmp-buffer"}
	},

	"saadparwaiz1/cmp_luasnip",

	"hrsh7th/cmp-nvim-lsp",

	"neovim/nvim-lspconfig",

	"NvChad/nvim-colorizer.lua",

	"karb94/neoscroll.nvim",

	"HiPhish/rainbow-delimiters.nvim",

	"ggandor/lightspeed.nvim",

	"simrat39/rust-tools.nvim",

	--[[ "williamboman/mason.nvim", ]]

	--[[ "williamboman/mason-lspconfig.nvim", ]]

	{
		'windwp/nvim-autopairs',
    		event = "InsertEnter",
	},

	{
		"windwp/nvim-ts-autotag",
		dependencies = {"nvim-treesitter/nvim-treesitter"}
	},

	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup {}
		end,
	},

	{
		"sudormrfbin/cheatsheet.nvim",
		dependencies = {
			'nvim-telescope/telescope.nvim',
			'nvim-lua/popup.nvim',
			'nvim-lua/plenary.nvim',
			'debugloop/telescope-undo.nvim'
		}
	},

	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		}
	},

	{
		"CRAG666/code_runner.nvim", config = true
	},

	{
		"saecki/crates.nvim",
		dependencies = { "nvim-lua/plenary.nvim" }
	},

	{
		"okuuva/auto-save.nvim",
		cmd = "ASToggle", -- optional for lazy loading on command
		event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
	}

})

--[[ require("mason").setup() ]]
--[[ require("mason-lspconfig").setup({ ]]
	--[[ automatic_installation = false ]]
	-- automatic_installation = exclude = { "rust_analyzer", "solargraph" } 
--[[ }) ]]
require("nvim-autopairs").setup()
require('neoscroll').setup()
require("crates").setup()
require("Comment").setup()
require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip").snippets = require("luasnip_snippets").load_snippets()
require('colorizer').setup()
require('nvim-ts-autotag').setup()
require("telescope").load_extension("undo")
require("auto-save").setup {
	execution_message = {enabled = false}
}

require("noice").setup({
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
  },
  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = false, --default:true -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = false, -- add a border to hover docs and signature help
  },
})

vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
        underline = true,
        virtual_text = {
            spacing = 5,
            severity_limit = 'Warning',
        },
        update_in_insert = true,
    }
)
local rainbow_delimiters = require 'rainbow-delimiters'

vim.g.rainbow_delimiters = {
    strategy = {
        [''] = rainbow_delimiters.strategy['global'],
        vim = rainbow_delimiters.strategy['local'],
    },
    query = {
        [''] = 'rainbow-delimiters',
        lua = 'rainbow-blocks',
    },
    highlight = {
        'RainbowDelimiterRed',
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
    },
}
