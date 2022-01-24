local M = {}

M.project = function()
	require("telescope").load_extension("projects")
end

return M
