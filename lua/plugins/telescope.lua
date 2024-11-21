return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "sf", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
      { "sF", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
      {
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,
        desc = "Find Plugin File",
      },
    },
    opts = {
      defaults = {
        respect_gitignore = false,
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
}
