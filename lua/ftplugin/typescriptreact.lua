
local ft = {}


function ft.ftplugin()
  -- LSP Configuration
  -- Requires typescript, typescript-language-server & vscode-langservers-extracted installed.
  -- All can be found in npm
  require("lsp-config").setup("tsserver", {})
  require("lsp-config").setup("eslint", {})
end

function ft.syntax()

end

return ft
