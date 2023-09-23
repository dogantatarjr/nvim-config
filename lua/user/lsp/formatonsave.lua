local status_ok, format_on_save = pcall(require, "format-on-save")
if not status_ok then
	return
end
local formatters_status_ok, formatters = pcall(require, "format-on-save.formatters")
if not formatters_status_ok then
	return
end

format_on_save.setup({
	auto_commands = false,
	exclude_path_patterns = {
		"/node_modules/",
		".local/share/nvim/lazy",
	},
	formatter_by_ft = {
		css = formatters.lsp,
		html = formatters.lsp,
		java = formatters.lsp,
		javascript = formatters.lsp,
		json = formatters.lsp,
		lua = formatters.stylua,
		markdown = formatters.prettierd,
		openscad = formatters.lsp,
		python = formatters.black,
		rust = formatters.lsp,
		scad = formatters.lsp,
		scss = formatters.lsp,
		sh = formatters.shell({
			cmd = { "shfmt", "-i 4", "%" },
		}),
		terraform = formatters.lsp,
		typescript = formatters.prettierd,
		typescriptreact = formatters.prettierd,
		yaml = formatters.lsp,

		-- Add your own shell formatters:
		cpp = formatters.shell({
			cmd = { "clang-format", '--style="{BasedOnStyle: google, IndentWidth: 4, TabWidth: 4}"', "%" },
		}),
		c = formatters.shell({
			cmd = { "clang-format", '--style="{BasedOnStyle: google, IndentWidth: 4, TabWidth: 4}"', "%" },
		}),

		-- Add custom formatter
		filetype1 = formatters.remove_trailing_whitespace,
		filetype2 = formatters.custom({
			format = function(lines)
				return vim.tbl_map(function(line)
					return line:gsub("true", "false")
				end, lines)
			end,
		}),

		-- Concatenate formatters

		-- Use a tempfile instead of stdin
		go = {
			formatters.shell({
				cmd = { "goimports-reviser", "-rm-unused", "-set-alias", "-format", "%" },
				tempfile = function()
					return vim.fn.expand("%") .. ".formatter-temp"
				end,
			}),
			formatters.shell({ cmd = { "gofmt" } }),
		},

		-- Add conditional formatter that only runs if a certain file exists
		-- in one of the parent directories.
	},

	-- Optional: fallback formatter to use when no formatters match the current filetype
	fallback_formatter = {
		formatters.remove_trailing_whitespace,
		formatters.remove_trailing_newlines,
		formatters.prettierd,
	},

	-- By default, all shell commands are prefixed with "sh -c" (see PR #3)
	-- To prevent that set `run_with_sh` to `false`.
	run_with_sh = false,
})
