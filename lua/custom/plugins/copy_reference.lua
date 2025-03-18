return {
    -- Add other plugins here if you have them

    'ranelpadon/python-copy-reference.vim',
    config = function()
        -- Set up your mappings
        vim.api.nvim_set_keymap('n', '<Leader>rd', ':PythonCopyReferenceDotted<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<Leader>rp', ':PythonCopyReferencePytest<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<Leader>cr', ':PythonCopyReferenceImport<CR>', { noremap = true, silent = true })

        -- Set up your configuration options
        vim.g.python_copy_reference = {
            remove_prefixes = {'apps', 'conf'}
        }
    end

}


-- autopairs
-- https://github.com/windwp/nvim-autopairs

-- return {
-- 'windwp/nvim-autopairs',
--   event = 'InsertEnter',
-- -- Optional dependency
-- dependencies = { 'hrsh7th/nvim-cmp' },
--   config = function()
--     require('nvim-autopairs').setup {}
--     -- If you want to automatically add `(` after selecting a function or method
--     local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
--     local cmp = require 'cmp'
-- cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
-- end,
-- }
