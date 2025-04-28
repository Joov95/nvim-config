-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local wk = require("which-key")
wk.add({
  { "<leader>dc", function() require('dap').continue() end,                               desc = "Start/Continue Debugging" },
  { "<leader>dd", function() require('dap').step_over() end,                              desc = "Debug Step Over" },
  { "<leader>db", function() require('dap').toggle_breakpoint() end,                      desc = "Toggle Breakpoint" },
  { "<leader>dt", function() require('dap').disconnect({ terminateDebuggee = true }) end, desc = "Terminate Debugger" },
  { "<leader>t",  function() require('neogen').generate() end,                            desc = "Generate Docstring" }
})
