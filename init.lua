-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Font stuff
vim.opt.guifont = "CaskaydiaCove Nerd Font Mono:h11"
vim.opt.encoding = "utf-8"

--Debugger stuff
require("dap-python").setup("~/.virtualenvs/main_venv/bin/python")
require("nvim-dap-virtual-text").setup()
require("config.breakpoint-style")
require('neogen').setup {
  enabled = true,
  languages = {
    python = {
      template = {
        annotation_convention = "numpydoc"
      }
    },
  }
}
