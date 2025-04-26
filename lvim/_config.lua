lvim.plugins = {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
  },
  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  },
  {
    "psliwka/vim-smoothie"
  },
  {
    "sphamba/smear-cursor.nvim",
    opts = {
      smear_between_buffers = true,
      smear_between_neighbor_lines = true,
      scroll_buffer_space = true,
      legacy_computing_symbols_support = false,
      smear_insert_mode = true,
    },
    config = function()
      require("smear_cursor").setup({
        stiffness=0.8,
        trailing_stiffness=0.5,
        distance_stop_animating=0.5
      })
    end,
  },
  {
    "whatyouhide/vim-gotham"
  }
}

-- copilot enable
lvim.copilot_enabled = true

-- settheme
lvim.colorscheme = "gotham"

