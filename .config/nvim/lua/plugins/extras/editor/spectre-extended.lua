return {
  {
    "nvim-pack/nvim-spectre",
    cmd = "Spectre",
    opts = {
      default = {
        find = {
          cmd = "rg",
        },
        replace = {
          cmd = "sd",
        },
      },
      use_trouble_qf = true,
    },
    -- stylua: ignore
    keys = {
      { "<leader>srg", function() require("spectre").toggle() end, desc = "Globally" },
      { "<leader>srG", mode = { "n" }, function() require("spectre").open_visual({ select_word = true }) end, desc = "Word Globally" },
      { "<leader>srG", mode = { "v" }, function() require("spectre").open_visual() end, desc = "Word Globally" },
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { "<leader>sr", group = "replace", icon = " " },
      },
    },
  },
}
