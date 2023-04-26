return {
  {
    "mfussenegger/nvim-jdtls",
    init = function() table.insert(astronvim.lsp.skip_setup, "jdtls") end,
    ft = { "java" },
  },
  "simrat39/rust-tools.nvim",
}
