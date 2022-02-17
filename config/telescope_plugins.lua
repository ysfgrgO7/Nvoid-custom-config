local present, telescope = pcall(require, "telescope")
if not present then
	return
end
local M = {}

-- Projects
M.project = function()
	telescope.load_extension("projects")
end

-- Packer
M.packer = function()
	telescope.load_extension("packer")
end

-- GH
M.gh = function()
	telescope.load_extension("gh")
end

return M
