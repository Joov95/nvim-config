return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" },                       -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken",                          -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
    },
    -- See Commands section for default commands if you want to lazy load on them
    build = "make tiktoken", -- Only on MacOS or Linux

    opts = {

      -- See Configuration section for options

    },

    -- See Commands section for default commands if you want to lazy load on them

  },
  {
    "danymat/neogen",

    config = true,

    -- Uncomment next line if you want to follow only stable versions

    -- version = "*"
  },
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

  },

  {

    "kylechui/nvim-surround",

    version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features

    event = "VeryLazy",

    config = function()
      require("nvim-surround").setup({

        -- Configuration here, or leave empty to use defaults

      })

      vim.api.nvim_set_keymap('n', '<Leader>ys', '<Plug>(nvim-surround-normal)', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('x', 'S', '<Plug>(nvim-surround-visual)', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('o', 'S', '<Plug>(nvim-surround-operator)', { noremap = true, silent = true })
    end,
    after = 'flash.nvim',
  }
}
