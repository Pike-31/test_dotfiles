local builtin = require('telescope.builtin')
require("telescope").load_extension("live_grep_args")
local status, telescope = pcall(require, "telescope")
if not status then
    return
end

local actions = require "telescope.actions"

telescope.setup {
    defaults = {
        prompt_prefix = "🔭 ",
        selection_caret = "➡️  ",
        path_display = { "smart" },

        mappings = {
            i = {
                ["<C-n>"] = actions.cycle_history_next,
                ["<C-p>"] = actions.cycle_history_prev,

                ["<C-c>"] = actions.close,

                ["<Down>"] = actions.move_selection_next,
                ["<Up>"] = actions.move_selection_previous,

                ["<CR>"] = actions.select_default,
                ["<C-x>"] = actions.select_horizontal,
                ["<C-v>"] = actions.select_vertical,
                ["<C-t>"] = actions.select_tab,

                ["<C-u>"] = actions.preview_scrolling_up,
                ["<C-d>"] = actions.preview_scrolling_down,

                ["<PageUp>"] = actions.results_scrolling_up,
                ["<PageDown>"] = actions.results_scrolling_down,

                ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
                ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
                ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
                ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                ["<C-l>"] = actions.complete_tag,
                ["<C-_>"] = actions.which_key, -- keys from pressing <C-/>

                ["<C-k>"] = actions.move_selection_next,
                ["<C-j>"] = actions.move_selection_previous,

            },

            n = {
                ["<esc>"] = actions.close,
                ["<CR>"] = actions.select_default,
                ["<C-x>"] = actions.select_horizontal,
                ["<C-v>"] = actions.select_vertical,
                ["<C-t>"] = actions.select_tab,

                ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
                ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
                ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
                ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

                ["<Down>"] = actions.move_selection_next,
                ["<Up>"] = actions.move_selection_previous,
                ["gg"] = actions.move_to_top,
                ["G"] = actions.move_to_bottom,

                ["<C-u>"] = actions.preview_scrolling_up,
                ["<C-d>"] = actions.preview_scrolling_down,

                ["<PageUp>"] = actions.results_scrolling_up,
                ["<PageDown>"] = actions.results_scrolling_down,

                ["?"] = actions.which_key,

                ["k"] = actions.move_selection_next,
                ["l"] = actions.move_selection_previous,
                ["j"] = actions.move_to_top,
                ["M"] = actions.move_to_middle,
                [";"] = actions.move_to_bottom,
            },
        },
    },

    pickers = {
        -- Default config for builtin pickers
    },

}

-- Find files kemap
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find files by name"})

-- look at previously opened files
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = "Find Old Files"})

-- find word cursor is on
vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = "Find Word under Cursor"})

-- search for string in all files
-- vim.keymap.set('n', '<leader>fs', "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", { desc = "Live Grep"})
vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})

-- Shows symbols or script operations
vim.keymap.set('n', '<leader>ss', builtin.lsp_document_symbols, { desc = "Shows Symbols"})

-- Shows file buffers open
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Find Buffers"})

