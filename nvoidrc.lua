local M = {}

-- UI
M.ui = {
	theme = "catppuccin",
	transparency = false,
	statusline = "minimal",
}

-- Options
M.options = {
	clipboard = "unnamedplus",
	cmdheight = 1,
	mouse = "a",
	mapleader = " ",
	wrap = false,
	number = true,
	relative_number = false,
	number_width = 6,
	cursor_line = true,
	hidden = true,
	expand_tab = true,
	ignore_case = true,
	smart_case = true,
	smart_indent = true,
	swap_file = false,
	backup = false,
	show_mode = false,
	nvimtree_indent_markers = true,
}

-- Add lsp
M.lsp_add = {
	"bashls",
	"pyright",
}

-- Add treesitter language
M.ts_add = {
	"fish",
	"html",
}

-- Add Plugins
M.plugins_add = {

	-- ZenMode
	{
		"folke/zen-mode.nvim",
		config = function()
			require("custom.config.focus").zen()
		end,
	},

	-- Twilight
	{
		"folke/twilight.nvim",
		config = function()
			require("custom.config.focus").twilight()
		end,
	},

	-- Nvim projects
	{
		"ahmedkhalf/project.nvim",
		config = function()
			require("custom.config.projects")
		end,
	},

	-- Telescope projects
	{
		"nvim-telescope/telescope-project.nvim",
		config = function()
			require("custom.config.telescope_plugins").project()
		end,
	},

	-- Telescope GH
	{
		"nvim-telescope/telescope-github.nvim",
		config = function()
			require("custom.config.telescope_plugins").gh()
		end,
	},

	-- Telescope arecibo (websearch)
	{
		"nvim-telescope/telescope-arecibo.nvim",
		rocks = { "openssl", "lua-http-parser" },
		config = function()
			require("custom.config.telescope_plugins").arecibo()
		end,
	},

	-- Telescope packer
	{
		"nvim-telescope/telescope-packer.nvim",
		config = function()
			require("custom.config.telescope_plugins").packer()
		end,
	},

	-- Rnvimr (Ranger)
	{
		"kevinhwang91/rnvimr",
		config = function()
			require("custom.config.rnvimr")
		end,
	},
}

-- Add new whichkey bind
M.whichkey_add = {
	c = {
		name = "Config",
		p = { "<cmd>e ~/.config/nvim/lua/nvoid/plugins/init.lua<cr>", "Packer" },
		c = { "<cmd>e ~/.config/nvim/lua/nvoid/core/init.lua<cr>", "Core" },
		t = { "<cmd>e ~/.config/nvim/lua/nvoid/colors/init.lua<cr>", "Colors" },
	},
	z = {
		name = "Zen",
		z = { "<cmd>ZenMode<cr>", "ZenMode" },
		t = { "<cmd>Twilight<cr>", "Twilight" },
	},
	f = {
		name = "Find",
		p = { "<cmd>Telescope projects<cr>", "Projects" },
		P = { "<cmd>Telescope packer<cr>", "Packer" },
		W = { "<cmd>Telescope arecibo websearch<cr>", "Web" },
		l = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
	},
	["r"] = { "<cmd>:RnvimrToggle<cr>", "Ranger" },
}

return M
