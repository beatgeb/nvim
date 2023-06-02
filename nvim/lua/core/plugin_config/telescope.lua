require('telescope').setup({
  defaults = {
    prompt_prefix = " 🔍  ",
    file_ignore_patterns = {"node_modules"},
    color_devicons = true,
    set_env = {["COLORTERM"] = "truecolor"},
    mappings = {
      n = {["q"] = require("telescope.actions").close}
    }
  }
})
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fc', builtin.live_grep, {})


require('telescope').load_extension('fzf')
