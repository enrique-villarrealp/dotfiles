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
      dashboard.section.buttons.val = {
        dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
        dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
        dashboard.button("g", " " .. " Find text", ":Telescope live_grep <CR>"),
        dashboard.button("c", " " .. " Config", ":e ~/.config/nvim/ <CR>"),
        dashboard.button("l", "󰒲 " .. " Lazy", ":Lazy<CR>"),
        dashboard.button("q", " " .. " Quit", ":qa<CR>"),
      }

      alpha.setup(dashboard.opts)
      
  end

   
}
