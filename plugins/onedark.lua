return {
  "navarasu/onedark.nvim",
  name = "onedark",
  config = function()
    require("onedark").setup {
      style = "cool",
    }
    require("onedark").load()
  end,
}
