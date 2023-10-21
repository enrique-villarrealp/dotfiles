config = function()
  local comment = require("mini.comment")

  comment.setup()
end

return {
  "echasnovski/mini.comment",
  version = "*",
  event = "VeryLazy",
  config = config
}
