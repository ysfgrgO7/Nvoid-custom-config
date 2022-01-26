local M = {}

-- UI
M.ui = {
	theme = "catppuccin",
	transparency = false,
	statusline = "nvoid",
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
}

-- Add lsp
M.lsp_add = {
	"bashls",
}

-- Add treesitter language
M.ts_add = {
	"fish",
}

-- Add Plugins
M.plugins_add = {
	{
		"folke/zen-mode.nvim",
		config = function()
			require("custom.config.zen")
		end,
	},
	{
		"folke/twilight.nvim",
		config = function()
			require("custom.config.twilight")
		end,
	},
	{
		"ahmedkhalf/project.nvim",
		config = function()
			require("custom.config.projects")
		end,
	},
	{
		"nvim-telescope/telescope-project.nvim",
		config = function()
			require("custom.config.telescope").project()
		end,
	},
	{ "nvim-telescope/telescope-packer.nvim" },
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
	t = {
		name = "Terminal",
		v = { "<cmd>:ToggleTerm size=13 direction=horizontal<cr>", "Horizontal" },
		t = { "<cmd>:ToggleTerm direction=tab<cr>", "New tab" },
	},
	["P"] = { "<cmd>Telescope projects<cr>", "Projects" },
}

return M
