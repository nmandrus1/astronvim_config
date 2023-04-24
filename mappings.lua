local utils = require "user.utils"
local astro_utils = require "astronvim.utils"
local mappings = {
  n = {
    -- better buffer navigation
    ["]b"] = false,
    ["[b"] = false,
    ["<S-l>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<S-h>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    -- better search
    n = { utils.better_search "n", desc = "Next search" },
    N = { utils.better_search "N", desc = "Previous search" },
    -- better increment/decrement
    ["-"] = { "<c-x>", desc = "Descrement number" },
    ["+"] = { "<c-a>", desc = "Increment number" },
    -- telescope plugin mappings
    ["<leader>fe"] = { "<cmd>Telescope file_browser<cr>", desc = "File explorer" },
    -- compiler
    ["<leader>;"] = { desc = "󰧑 AI Assistant" },
    ["<leader>;;"] = {
      function()
        vim.cmd.Codeium(vim.g.codeium_enabled == 0 and "Enable" or "Disable")
        astro_utils.notify("Codeium " .. (vim.g.codeium_enabled == 0 and "Disabled" or "Enabled"))
      end,
      desc = "Toggle Global",
    },
    ["<leader>;b"] = {
      function()
        vim.cmd.Codeium(vim.b.codeium_enabled == 0 and "EnableBuffer" or "DisableBuffer")
        astro_utils.notify("Codeium (buffer) " .. (vim.b.codeium_enabled == 0 and "Disabled" or "Enabled"))
      end,
      desc = "Toggle Buffer",
    },
  },
  i = {
    -- type template string
    ["<S-Tab>"] = { "<C-V><Tab>", desc = "Tab character" },
  },
  -- terminal mappings
  t = {
    ["<C-BS>"] = { "<C-\\><C-n>", desc = "Terminal normal mode" },
    ["<esc><esc>"] = { "<C-\\><C-n>:q<cr>", desc = "Terminal quit" },
  },
  x = {
    -- better increment/decrement
    ["+"] = { "g<C-a>", desc = "Increment number" },
    ["-"] = { "g<C-x>", desc = "Descrement number" },
    -- line text-objects
  },
}

return mappings
