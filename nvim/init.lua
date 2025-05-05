require("plugins")
require("base")
require("options")
require("keymaps")
require("colorscheme")
require("notify_settings")
require("prettier")

-- require("mason_")

-- require("noice_")

vim.cmd [[source ~/.config/nvim/tab-comp.vim]]

-- require("clangd_")
-- require("nvim-cmp_")

vim.notify = require("notify")
