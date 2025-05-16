local builtin = require('telescope.builtin')
local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup {
    extensions = {
        file_browser = {
            hijack_netrw = true,
            hidden = {file_browser = true, folder_browser = true},
            theme = "ivy",
        },
    },

    defaults = {
            mappings = {
                    n = {
                        ["<Tab>"] = actions.select_default,
                    },

                    i = {
                        ["<Tab>"] = actions.select_default,
                    },
            },
    },

    pickers = {
        find_files = {hidden = true, theme = "ivy"},
        git_files = {theme = "ivy"},
        buffers = {theme = "ivy"},
    },
}

vim.keymap.set("n", "<leader>ff", function() 
        telescope.extensions.file_browser.file_browser(
                {theme = "ivy", path = vim.fn.expand("%:p:h"), cwd = vim.fn.expand("%:p:h")}) 
end)

vim.keymap.set("n", "<leader>pf", builtin.git_files, {})

vim.keymap.set("n", "<leader>ps", function()
	local function is_git_repo()
		vim.fn.system("git rev-parse --is-inside-work-tree")

		return vim.v.shell_error == 0
	end

	local function get_git_root()
		local dot_git_path = vim.fn.finddir(".git", ".;")
		return vim.fn.fnamemodify(dot_git_path, ":h")
	end

	local opts = {}

	if is_git_repo() then
		opts = {
			cwd = get_git_root(),
		}
	end

	builtin.live_grep(opts)
end)

vim.keymap.set("n", "<leader>bb", builtin.buffers, {})

