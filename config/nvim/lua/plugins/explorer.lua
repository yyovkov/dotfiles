return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      picker = {
        sources = {
          explorer = {
            win = {
              input = {
                keys = {
                  ["<Esc>"] = { "", mode = "n" },
                },
              },
              list = {
                keys = {
                  ["<Esc>"] = { "", mode = "n" },
                },
              },
            },
          },
        },
      },
    },
  },
}
