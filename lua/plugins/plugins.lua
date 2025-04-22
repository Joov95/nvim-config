return {
  {
    'theHamsta/nvim-dap-virtual-text'
  },

  {

    "rachartier/tiny-inline-diagnostic.nvim",

    event = "VeryLazy", -- Or `LspAttach`

    priority = 1000,    -- needs to be loaded in first

    config = function()
      require('tiny-inline-diagnostic').setup()

      vim.diagnostic.config({ virtual_text = false }) -- Only if needed in your configuration, if you already have native LSP diagnostics
    end


  },
  {

    'linux-cultist/venv-selector.nvim',

    dependencies = { 'neovim/nvim-lspconfig', 'nvim-telescope/telescope.nvim', 'mfussenegger/nvim-dap-python' },

    opts = {

      -- Your options go here

      -- name = "venv",

      -- auto_refresh = false

      stay_on_this_version = true
    },

    event = 'VeryLazy', -- Optional: needed only if you want to type `:VenvSelect` without a keymapping

    keys = {

      -- Keymap to open VenvSelector to pick a venv.

      { '<leader>vs', '<cmd>VenvSelect<cr>' },

      -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).

      { '<leader>vc', '<cmd>VenvSelectCached<cr>' },

    },

  },

  {
    "jeetsukumaran/vim-indentwise"
  },
  {
    "rhysd/conflict-marker.vim"
  },
  {

    "neovim/nvim-lspconfig",

    opts = {

      servers = { eslint = {} },

      setup = {

        eslint = function()
          require("lazyvim.util").lsp.on_attach(function(client)
            if client.name == "eslint" then
              client.server_capabilities.documentFormattingProvider = true
            elseif client.name == "tsserver" then
              client.server_capabilities.documentFormattingProvider = false
            end
          end)
        end,

      },

    },

  }
}
