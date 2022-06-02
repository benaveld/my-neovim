
local ft = {}


function ft.ftplugin()
  -- LSP Configuration
  -- Requires Clangd installed
  require("lsp-config").setup("tsserver", {})
end

function ft.syntax()

end

return ft
