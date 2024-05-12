return {
  "b0o/incline.nvim",
  lazy=false,
  config = function()

    require('incline').setup {
          window = {
          padding = 0,
          margin = { horizontal = 0, vertical = 0 },
      },

      render = function(props)

          local devicons = require('nvim-web-devicons')
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ':t')
          if filename == '' then
              filename = '[No Name]'
          end
          local ft_icon, ft_color = devicons.get_icon_color(filename)
          local modified = vim.bo[props.buf].modified


        -- First color: Active BG
        -- Second color: Inactive BG
        -- #8f8741
          local bgcol = props.focused and '#89B4FA' or '#1E1E2E'
          local res = {
              ft_icon and { ' ', ft_icon, ' ', guibg = ft_color, guifg = '#000000' } or '',
              ' ',
              { filename, gui = modified and 'bold,italic' or 'bold' },
              guibg = bgcol,
              guifg = props.focused and '#000000' or '#cdd6f4',
          }
          table.insert(res, ' ')
          return res
      end
  }
  end
}
