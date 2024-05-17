return {
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  },
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
    },
    opts = function()
      return {
        defaults = {
          vimgrep_arguments = {
            "rg",
            "-L",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
          },
          previewer = true,
          file_previewer = require("telescope.previewers").vim_buffer_cat.new,
          grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
          qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
        },
        extensions = {
          file_browser = {
            theme = "ivy",
            hijack_netrw = false,
          },
        },
        extensions_list = {
          "file_browser",
          "fzf",
          "lazygit",
        },
      }
    end,
    init = function()
      local builtin = require("telescope.builtin")
      local wk = require("which-key")
      wk.register({
        ["ff"] = { builtin.find_files, "Find File in cwd" },
        ["fb"] = { builtin.buffers, "Find in Buffer" },
        ["fg"] = { builtin.live_grep, "Find with Grep" },
        ["fh"] = { builtin.help_tags, "Find Help" },
        ["fs"] = { builtin.grep_string, "Find string" },
        ["fn"] = {
          ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
          "File Browser",
        },
      }, { prefix = "<leader>" })
    end,
    config = function(_, opts)
      local telescope = require("telescope")

      telescope.setup(opts)

      for _, ext in ipairs(opts.extensions_list) do
        telescope.load_extension(ext)
      end
    end,
  },
}
