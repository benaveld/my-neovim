require("init")
require("plugins")
require("keymap")
require("lsp-config")
require("appearance")

do local O=vim.opt

O.mouse		= "a"
O.title		= true
O.history	= 500
O.undofile	= true -- Persistent undo after close a file and re-open it
O.spell = true
O.spelllang = { "en" }

-- Search configuration
O.hlsearch   = true
O.ignorecase = true
O.incsearch  = true
O.smartcase  = true

-- Indentation
O.autoindent     = true
O.expandtab      = false
O.shiftwidth     = 4
O.smartindent    = true
O.softtabstop    = 4
end
