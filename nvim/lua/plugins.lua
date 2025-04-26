-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

vim.cmd.packadd "packer.nvim"

-- Install your plugins here
return packer.startup(function(use)
	use({ "wbthomason/packer.nvim" })

	use({ "folke/noice.nvim", 
		requires = { "MunifTanjim/nui.nvim" },
		config = function()
			require("noice").setup({
				lsp = {
					hover = {
						enabled = false,
					},
					signature = {
						enabled = false,
					},
				},
			})
		end,
	})
	use {
		"rcarriga/nvim-notify",
		config = function()
			local notify = require("notify")
			notify.setup({
				stages = "fade_in_slide_out",
				background_colour = "#1e1e2e",
				timeout = 1000,
				render = "wrapped-compact",
			})
			vim.notify = notify
		end,
	}

	-- Colorschemes
	-- use({ "theJian/vim-fethoi" })
	-- use({ "machakann/vim-colorscheme-imas" })
	-- use({ "ayu-theme/ayu-vim" })
	-- use({ "shaunsingh/nord.nvim" })
	-- use({ "Abstract-IDE/Abstract-cs" })
	-- use({ "whatyouhide/vim-gotham" })
	use({ "catppuccin/nvim", as = "catppuccin" })
	require("catppuccin").setup({
			flavour = "mocha",
			color_overrides = {
					mocha = {
							base = "#12121a",
							mantle = "#12121a",
							crust = "#12121a",
					},
			},
			transparent_background = true,
	})
	vim.cmd.colorscheme("catppuccin-mocha")
	vim.cmd("highlight TelescopeSelection cterm=bold gui=bold guifg=#a6e3a1 guibg=#181825")

	-- cmp plugins
	use({ 
		"hrsh7th/nvim-cmp", 	
		requires = {
			"neovim/nvim-lspconfig",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline"
		}
	})
	use({ "neoclide/coc.nvim" })

	-- LSP
	-- use({ "neovim/nvim-lspconfig" }) 
	-- use({ "williamboman/nvim-lsp-installer" }) 
	-- use({ "jose-elias-alvarez/null-ls.nvim" })
	-- use({ "glepnir/lspsaga.nvim" })

	-- Treesitter
	use({ "nvim-treesitter/nvim-treesitter" })

	-- Comment 
	use({ "tpope/vim-commentary" })
	use({ "Yggdroot/indentLine" })

	-- Lualine
	use({ 
		"nvim-lualine/lualine.nvim", 
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})
	require("lualine").setup({
		options = {
			theme = "catppuccin",
			section_separators = "",
			component_separators = "",
		},
	})

	-- File
	use({ "preservim/nerdtree" })
	use({ "ryanoasis/vim-devicons" })
	use({ "nvim-tree/nvim-web-devicons" })

	-- Copilot
	use({ "github/copilot.vim" })

	-- Smooth scrolling and cursor
  use {"psliwka/vim-smoothie"}
	use {
		"sphamba/smear-cursor.nvim",
		config = function()
			require("smear_cursor").setup()
			require('smear_cursor').enabled = true
		end,
	}

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)

