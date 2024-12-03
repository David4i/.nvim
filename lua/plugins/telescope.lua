return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "sf",
        function()
          local builtin = require("telescope.builtin")
          builtin.find_files({
            no_ignore = false,
            hidden = true,
          })
        end,
      },
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
        wrap_results = true,
        layout_strategy = "horizontal",
        sorting_strategy = "ascending",
        winblend = 0,
        file_ignore_patterns = {
          "node_modules",
          ".git",
          "dist",
          "build",
        },
      },
    },
  },
}
