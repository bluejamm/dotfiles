return {

	"nvim-lua/plenary.nvim",
	{
		"jiaoshijie/undotree",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			-- vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
			vim.keymap.set('n', '<leader>u', require('undotree').toggle, { noremap = true, silent = true, desc = "undotree"})

			require('undotree').setup()

		end,
		-- opts = {
		-- 	float_diff = true,  -- using float window previews diff, set this `true` will disable layout option layout = "left_bottom", -- "left_bottom", "left_left_bottom" ignore_filetype = { 'undotree', 'undotreeDiff', 'qf', 'TelescopePrompt', 'spectre_panel', 'tsplayground' },
		-- 	window = {
		-- 		winblend = 30,
		-- 	},
		-- 	keymaps = {
		-- 		['j'] = "move_next",
		-- 		['k'] = "move_prev",
		-- 		['J'] = "move_change_next",
		-- 		['K'] = "move_change_prev",
		-- 		['<cr>'] = "action_enter",
		-- 		['p'] = "enter_diffbuf",
		-- 		['q'] = "quit",
		-- 	},
		--
		-- },
	},
	-- comment
	{
		"numToStr/Comment.nvim",
		 config = function()
		 	require("Comment").setup()
		 end
	},
	-- flash
	{
	  "folke/flash.nvim",
	  event = "VeryLazy",
	  ---@type Flash.Config
	  opts = {
		modes = {
			search = {
				enabled = false,
			},
		},
	  },
	  -- stylua: ignore
	  keys = {
		{ "s", mode = { "n", "o", "x" }, function() require("flash").jump() end, desc = "Flash" },
		{ "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
		{ "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
		{ "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
		{ "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
	  },
	},
	-- telescope
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "find files"})
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "live grep"})
			vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "buffers"})
			vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "help tags"})
		end
    },
	{
	  "folke/which-key.nvim",
	  event = "VeryLazy",
	  init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	  end,
	}
}

