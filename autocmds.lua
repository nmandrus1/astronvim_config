vim.api.nvim_create_autocmd("Filetype", {
  pattern = "java", -- autocmd to start jdtls
  callback = function()
    local opts = require("user.lsp.config.jdtls").jdtls()
    if opts.root_dir and opts.root_dir ~= "" then require("jdtls").start_or_attach(opts) end
  end,
})
