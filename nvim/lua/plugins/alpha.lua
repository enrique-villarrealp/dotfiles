return {
  "goolord/alpha-nvim",
  lazy=false,
  config = function ()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      local logo = [[
    ███████╗███╗   ██╗██████╗ ██╗   ██╗██╗███╗   ███╗
    ██╔════╝████╗  ██║██╔══██╗██║   ██║██║████╗ ████║
    █████╗  ██╔██╗ ██║██████╔╝██║   ██║██║██╔████╔██║
    ██╔══╝  ██║╚██╗██║██╔══██╗╚██╗ ██╔╝██║██║╚██╔╝██║
    ███████╗██║ ╚████║██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║
    ╚══════╝╚═╝  ╚═══╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝

Do the hard work, especially when you don't feel like it
                      Heat Culture
      ]]

      dashboard.section.header.val =  vim.split(logo, "\n")
      alpha.setup(dashboard.opts)
      
  end

   
}
