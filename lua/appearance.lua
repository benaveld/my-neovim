-- vim.cmd 'colorscheme material'
vim.cmd("colorscheme nightfox")

do local O=vim.opt
O.colorcolumn    = "0"
O.cursorline     = false
O.foldenable     = false
O.relativenumber = true
O.numberwidth    = 2
O.number         = true
O.ruler          = true
O.list           = true
O.listchars:append{
  tab      = "│ ", -- Used by Tab on expandtab=false
  trail    = "*",  -- Spaces at the end of line
  precedes = "«",  -- Ellipsis at the left of screen
  extends  = "»"   -- Ellipsis at the right ot screen
}

O.modelineexpr   = true
O.splitbelow     = true
O.splitright     = true
O.tabstop        = 4     -- columns used on tab (default=8)
O.timeoutlen     = 3000
O.wildmenu       = true
O.wrap           = false
O.termguicolors  = true
O.scrolloff      = 3

O.background     = "dark"
end

-- vim.g.material_style = "deep ocean"
