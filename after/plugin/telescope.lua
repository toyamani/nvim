if (vim.g.loaded_telescope == 0) then
  return
end

vim.api.nvim_set_keymap('n', ';f', '<cmd>Telescope find_files<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', 'r', '<cmd>Telescope live_grep<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '\\', '<cmd>Telescope buffers<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', ';;', '<cmd>Telescope help_tags<cr>', { noremap = true })

local actions = require('telescope.actions')
-- Global remappping
--------------------------
require('telescope').setup{
  defaults = {
    mappings = {
        n = {
          ["q"] = actions.close
      },
    },
  }
}
