return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts  ={},
  -- Key mappings for fzf-lua
  config = function()
    local fzf_lua = require("fzf-lua")

    vim.keymap.set("n", "<leader>ff", fzf_lua.files, { desc = "FZF Files" })
    vim.keymap.set("n", "<leader>fr", fzf_lua.resume, { desc = "FZF Resume" })
    -- Note: Adjusted to avoid conflicts
    vim.keymap.set("n", "<leader>fk", fzf_lua.keymaps, { desc = "Keymaps" })
    vim.keymap.set("n", "<leader><leader>", fzf_lua.buffers, { desc = "FZF Buffers" })
    vim.keymap.set("n", "<leader>fh", fzf_lua.helptags, { desc = "Help Tags" })
    vim.keymap.set("n", "<leader>gc", fzf_lua.git_bcommits, { desc = "Browse File Commits" })
    vim.keymap.set("n", "<leader>gs", fzf_lua.git_status, { desc = "Git Status" })
    vim.keymap.set("n", "<leader>cj", fzf_lua.lsp_definitions, { desc = "Jump to Definition" })
    vim.keymap.set(
      "n",
      "<leader>ss",
      ":lua require'fzf-lua'.lsp_document_symbols({winopts = {preview={wrap='wrap'}}})<cr>",
      { desc = "Document Symbols" }
    )
    vim.keymap.set("n", "<leader>cr", fzf_lua.lsp_references, { desc = "LSP References" })
    vim.keymap.set(
      "n",
      "<leader>fd",
      ":lua require'fzf-lua'.diagnostics_document({fzf_opts = { ['--wrap'] = true }})<cr>",
      { desc = "Document Diagnostics" }
    )
    vim.keymap.set(
      "n",
      "<leader>ca",
      ":lua require'fzf-lua'.lsp_code_actions({ winopts = {relative='cursor',row=1.01, col=0, height=0.2, width=0.4} })<cr>",
      { desc = "Code Actions" }
    )
  end,
}

