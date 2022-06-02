-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\nß\3\0\1\b\0\18\00006\1\0\0'\3\1\0B\1\2\2+\2\0\0009\3\2\0009\4\2\0019\4\3\4\5\3\4\0X\3\aÄ6\3\0\0'\5\4\0B\3\2\0029\3\5\3B\3\1\2\18\2\3\0X\3\16Ä9\3\6\0009\4\6\0019\4\a\4\4\3\4\0X\3\5Ä9\3\6\0009\4\6\0019\4\b\4\5\3\4\0X\3\6Ä6\3\0\0'\5\4\0B\3\2\0029\3\t\3B\3\1\2\18\2\3\0006\3\0\0'\5\n\0B\3\2\0029\3\v\0035\5\14\0009\6\2\0009\a\2\0019\a\f\a\5\6\a\0X\6\2Ä'\6\r\0X\a\1Ä'\6\15\0=\6\16\5=\2\17\5D\3\2\0\rlocation\bkey\16__multiline\1\0\0\14__default\tline\28calculate_commentstring&ts_context_commentstring.internal\30get_visual_start_location\6V\6v\fcmotion\24get_cursor_location#ts_context_commentstring.utils\nblock\nctype\18Comment.utils\frequireN\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\rpre_hook\1\0\0\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/completion-nvim",
    url = "https://github.com/nvim-lua/completion-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n±\1\0\0\b\0\f\0\0206\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\n\0005\4\b\0004\5\3\0005\6\6\0009\a\4\0>\a\1\0069\a\5\0=\a\a\6>\6\1\5=\5\t\4=\4\v\3B\1\2\1K\0\1\0\rsections\1\0\0\14lualine_c\1\0\0\tcond\1\0\0\17is_available\17get_location\nsetup\flualine\rnvim-gps\frequire\0" },
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["material.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rmaterial\frequire\0" },
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-gps"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rnvim-gps\frequire\0" },
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/nvim-gps",
    url = "https://github.com/SmiteshP/nvim-gps"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nÿ\n\0\0\6\0004\00096\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\r\0005\4\f\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0005\5\18\0=\5\19\4=\4\20\0035\4\21\0005\5\22\0=\5\19\4=\4\23\3=\3\24\0025\3\27\0005\4\25\0005\5\26\0=\5\19\4=\4\28\0035\4\29\0005\5\30\0=\5\31\0045\5 \0=\5!\4=\4\"\0035\4#\0005\5$\0=\5%\0045\5&\0=\5'\0045\5(\0=\5)\0045\5*\0=\5+\4=\4,\0035\4-\0005\5.\0=\5/\4=\0040\3=\0031\0025\0032\0=\0033\2B\0\2\1K\0\1\0\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\16textobjects\16lsp_interop\25peek_definition_code\1\0\2\15<leader>dF\17@class.outer\15<leader>df\20@function.outer\1\0\2\venable\2\vborder\tnone\tmove\22goto_previous_end\1\0\2\a[]\17@class.outer\a[M\20@function.outer\24goto_previous_start\1\0\2\a[m\20@function.outer\a[[\17@class.outer\18goto_next_end\1\0\2\a][\17@class.outer\a]M\20@function.outer\20goto_next_start\1\0\2\a]m\20@function.outer\a]]\17@class.outer\1\0\2\14set_jumps\2\venable\2\tswap\18swap_previous\1\0\1\14<leader>A\21@parameter.inner\14swap_next\1\0\1\14<leader>a\21@parameter.inner\1\0\1\venable\2\vselect\1\0\0\1\0\4\aaf\20@function.outer\aif\20@function.inner\aac\17@class.outer\aic\17@class.inner\1\0\2\14lookahead\2\venable\2\rrefactor\15navigation\1\0\5\20goto_definition\bgnd\24goto_previous_usage\n<a-#>\20goto_next_usage\n<a-*>\25list_definitions_toc\agO\21list_definitions\bgnD\1\0\1\venable\2\17smart_rename\fkeymaps\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\28highlight_current_scope\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\2\25clear_on_cursor_move\2\venable\2\fmatchup\1\0\1\venable\2\frainbow\1\0\2\venable\2\18extended_mode\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\14\0\0\tbash\ncmake\bcpp\bcss\15dockerfile\thtml\15javascript\tjson\nlatex\blua\nregex\15typescript\btsx\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23treesitter-context\frequire\0" },
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-refactor"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0" },
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["spellsitter.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16spellsitter\frequire\0" },
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/spellsitter.nvim",
    url = "https://github.com/lewis6991/spellsitter.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-css-color"] = {
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/vim-css-color",
    url = "https://github.com/ap/vim-css-color"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/srv/10e91524-ba58-4355-88cd-028717c03fe2/pool/Benjamin/.local/share/nvim/site/pack/packer/start/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nÿ\n\0\0\6\0004\00096\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\r\0005\4\f\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0005\5\18\0=\5\19\4=\4\20\0035\4\21\0005\5\22\0=\5\19\4=\4\23\3=\3\24\0025\3\27\0005\4\25\0005\5\26\0=\5\19\4=\4\28\0035\4\29\0005\5\30\0=\5\31\0045\5 \0=\5!\4=\4\"\0035\4#\0005\5$\0=\5%\0045\5&\0=\5'\0045\5(\0=\5)\0045\5*\0=\5+\4=\4,\0035\4-\0005\5.\0=\5/\4=\0040\3=\0031\0025\0032\0=\0033\2B\0\2\1K\0\1\0\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\16textobjects\16lsp_interop\25peek_definition_code\1\0\2\15<leader>dF\17@class.outer\15<leader>df\20@function.outer\1\0\2\venable\2\vborder\tnone\tmove\22goto_previous_end\1\0\2\a[]\17@class.outer\a[M\20@function.outer\24goto_previous_start\1\0\2\a[m\20@function.outer\a[[\17@class.outer\18goto_next_end\1\0\2\a][\17@class.outer\a]M\20@function.outer\20goto_next_start\1\0\2\a]m\20@function.outer\a]]\17@class.outer\1\0\2\14set_jumps\2\venable\2\tswap\18swap_previous\1\0\1\14<leader>A\21@parameter.inner\14swap_next\1\0\1\14<leader>a\21@parameter.inner\1\0\1\venable\2\vselect\1\0\0\1\0\4\aaf\20@function.outer\aif\20@function.inner\aac\17@class.outer\aic\17@class.inner\1\0\2\14lookahead\2\venable\2\rrefactor\15navigation\1\0\5\20goto_definition\bgnd\24goto_previous_usage\n<a-#>\20goto_next_usage\n<a-*>\25list_definitions_toc\agO\21list_definitions\bgnD\1\0\1\venable\2\17smart_rename\fkeymaps\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\28highlight_current_scope\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\2\25clear_on_cursor_move\2\venable\2\fmatchup\1\0\1\venable\2\frainbow\1\0\2\venable\2\18extended_mode\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\14\0\0\tbash\ncmake\bcpp\bcss\15dockerfile\thtml\15javascript\tjson\nlatex\blua\nregex\15typescript\btsx\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-gps
time([[Config for nvim-gps]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rnvim-gps\frequire\0", "config", "nvim-gps")
time([[Config for nvim-gps]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\nß\3\0\1\b\0\18\00006\1\0\0'\3\1\0B\1\2\2+\2\0\0009\3\2\0009\4\2\0019\4\3\4\5\3\4\0X\3\aÄ6\3\0\0'\5\4\0B\3\2\0029\3\5\3B\3\1\2\18\2\3\0X\3\16Ä9\3\6\0009\4\6\0019\4\a\4\4\3\4\0X\3\5Ä9\3\6\0009\4\6\0019\4\b\4\5\3\4\0X\3\6Ä6\3\0\0'\5\4\0B\3\2\0029\3\t\3B\3\1\2\18\2\3\0006\3\0\0'\5\n\0B\3\2\0029\3\v\0035\5\14\0009\6\2\0009\a\2\0019\a\f\a\5\6\a\0X\6\2Ä'\6\r\0X\a\1Ä'\6\15\0=\6\16\5=\2\17\5D\3\2\0\rlocation\bkey\16__multiline\1\0\0\14__default\tline\28calculate_commentstring&ts_context_commentstring.internal\30get_visual_start_location\6V\6v\fcmotion\24get_cursor_location#ts_context_commentstring.utils\nblock\nctype\18Comment.utils\frequireN\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\rpre_hook\1\0\0\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: spellsitter.nvim
time([[Config for spellsitter.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16spellsitter\frequire\0", "config", "spellsitter.nvim")
time([[Config for spellsitter.nvim]], false)
-- Config for: nvim-treesitter-context
time([[Config for nvim-treesitter-context]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23treesitter-context\frequire\0", "config", "nvim-treesitter-context")
time([[Config for nvim-treesitter-context]], false)
-- Config for: material.nvim
time([[Config for material.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rmaterial\frequire\0", "config", "material.nvim")
time([[Config for material.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n±\1\0\0\b\0\f\0\0206\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\n\0005\4\b\0004\5\3\0005\6\6\0009\a\4\0>\a\1\0069\a\5\0=\a\a\6>\6\1\5=\5\t\4=\4\v\3B\1\2\1K\0\1\0\rsections\1\0\0\14lualine_c\1\0\0\tcond\1\0\0\17is_available\17get_location\nsetup\flualine\rnvim-gps\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-ts-autotag
time([[Config for nvim-ts-autotag]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0", "config", "nvim-ts-autotag")
time([[Config for nvim-ts-autotag]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
