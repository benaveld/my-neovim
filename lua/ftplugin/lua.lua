local ft = {}


function ft.ftplugin()
  vim.bo.expandtab = true
  vim.bo.shiftwidth = 2
  vim.bo.softtabstop = 2
  vim.bo.tabstop = 2

  -- LSP Configuration
  -- Requires Lua Language Server]
  -- (https://github.com/sumneko/lua-language-server)
  local runtime_path = vim.split(package.path, ';')
  table.insert(runtime_path, "lua/?.lua")
  table.insert(runtime_path, "lua/?/init.lua")
  require("lsp-config").setup("sumneko_lua", {
    settings = {
      Lua = {
        runtime = {
          version = 'LuaJIT',
        },
        diagnostics = {
            enable  = true,
            globals = {"vim"},
        },
        workspace = {
          library = vim.api.nvim_get_runtime_file("", true),
        },
        telemetry = {
          enable = false
        }
      }
    }
  })
end

function ft.syntax()

end

return ft
