return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = { "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
    },
  },
  config = function()
    require "telescope".setup {
      defaults = require "telescope.themes".get_ivy {
        layout_config = { height = { 0.4, max = 100, min = 15 } },
      },
      extensions = {
        fzf = {},
      },
    }
    local map = function(keys, func, desc)
      vim.keymap.set("n", keys, func, { desc = desc })
    end
    map("<space>sf", require "telescope.builtin".find_files, "[s]earch [f]iles")
    map("<space>sr", require "telescope.builtin".oldfiles, "[s]earch [r]ecent files")
    map("<space>s.", require "telescope.builtin".resume, "[s]earch resume (\".\" for \"repeat\") ")
    map("<space>sh", require "telescope.builtin".help_tags, "[s]earch [h]elp")
    map("<space>en", function()
          local opts = require "telescope.themes".get_dropdown {
            cwd = vim.fn.stdpath "config",
          }
          require "telescope.builtin".find_files(opts)
        end,
        "[e]dit [n]eovim configs"
    )
  end,
}
