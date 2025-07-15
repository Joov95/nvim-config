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

vim.keymap.set('n', '<C-a>', 'ggVG', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'ys', '<Plug>(nvim-surround-normal)', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', 'S', '<Plug>(nvim-surround-visual)', { noremap = true, silent = true })
vim.api.nvim_set_keymap('o', 'S', '<Plug>(nvim-surround-operator)', { noremap = true, silent = true })
-- Excel column to comma delimited list
vim.api.nvim_set_keymap('n', '<C-d>', ':%s/\\r\\n/,<CR>$xyy', { noremap = true, silent = true })
-- Excel column to single quoted comma delimited list
vim.api.nvim_set_keymap('n', '<C-q>', ':%s/\\r\\n/\',\'<CR>$xx^i\'<Esc>yy', { noremap = true, silent = true })
-- Handy shortcut for bridge defects to delete existing line and paste
vim.api.nvim_set_keymap('n', '<C-p>', '\"3ddp<C-d>:%s/\\r\\n/,<CR>$xyy', { noremap = true, silent = true })

--Clipboard stuff
vim.opt.clipboard = "unnamedplus"
