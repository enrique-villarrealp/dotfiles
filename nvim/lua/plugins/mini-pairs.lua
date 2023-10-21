config = function()
  local pairs = require("mini.pairs")

  pairs.setup()
end

return {
  "echasnovski/mini.pairs",
  version = "*",
  event = "VeryLazy",
  config = config
}
