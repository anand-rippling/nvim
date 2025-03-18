return {
    "LunarVim/breadcrumbs.nvim",
    enabled = true,
    dependencies = { "SmiteshP/nvim-navic" },
    config = function()
        require("breadcrumbs").setup()
    end
}
