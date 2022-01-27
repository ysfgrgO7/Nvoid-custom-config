local present, telescope = pcall(require, "telescope")
if not present then
	return
end
local M = {}

M.project = function()
	telescope.load_extension("projects")
end

M.gh = function()
	telescope.load_extension("gh")
end

M.arecibo = function()
	telescope.setup({
		extensions = {
			arecibo = {
				["selected_engine"] = "google",
				["url_open_command"] = "xdg-open",
				["show_http_headers"] = false,
				["show_domain_icons"] = false,
			},
		},
	})
	telescope.load_extension("arecibo")
end

return M
