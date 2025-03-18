-- with lazy.nvim
return {
  "LintaoAmons/bookmarks.nvim",
  -- pin the plugin at specific version for stability
  -- backup your bookmark sqlite db when there are breaking changes
  -- tag = "v2.3.0",
  lazy = false,
  dependencies = {
    {"kkharji/sqlite.lua"},
    {"nvim-telescope/telescope.nvim"},
    {"stevearc/dressing.nvim"} -- optional: better UI
  },
  config = function()
    vim.api.nvim_set_keymap('n', "<leader>ab", "<cmd>BookmarksMark<CR>", { desc = "Mark current line into active BookmarkList." })
    vim.api.nvim_set_keymap('n', "<leader>sb", "<cmd>BookmarksGoto<CR>", { desc = "Go to bookmark at current active BookmarkList" })
    vim.api.nvim_set_keymap('n', "ma", "<cmd>BookmarksCommands<CR>", { desc = "Find and trigger a bookmark command." })
    local opts = {} -- check the "./lua/bookmarks/default-config.lua" file for all the options
    require("bookmarks").setup(opts) -- you must call setup to init sqlite db
  end,
}

-- run :BookmarksInfo to see the running status of the plugin
