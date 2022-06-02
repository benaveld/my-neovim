-- automatically run :PackerCompile whenever plugins.lua is updatedautomatically run :PackerCompile whenever plugins.lua is updated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require( "packer" ).startup( function( use )
  use "wbthomason/packer.nvim"        -- | Plugin Manager

  -- Language Tools --------------------------------------------------
  use {
    "neovim/nvim-lspconfig",        -- | Default config for NeoVim lsp
    -- config =function ()
    --   require('lspconfig').sumneko_lua.setup({
    --     runtime = {
    --       -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
    --       version = 'LuaJIT',
    --     },
    --     diagnostics = {
    --       -- Get the language server to recognize the `vim` global
    --       globals = {'vim'},
    --     },
    --     workspace = {
    --       -- Make the server aware of Neovim runtime files
    --       library = vim.api.nvim_get_runtime_file("", true),
    --     },
    --     -- Do not send telemetry data containing a randomized but unique identifier
    --     telemetry = {
    --       enable = false,
    --     },
    --   })
    --
    --   require'lspconfig'.cmake.setup{}
    --   require'lspconfig'.dockerls.setup{}
    --   require'lspconfig'.eslint.setup{}
    --   vim.cmd([[autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll]])
    --
    --   require'lspconfig'.tsserver.setup{}
    --   require'lspconfig'.tailwindcss.setup{}
    -- end,
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    requires = {
      "p00f/nvim-ts-rainbow", -- Rainbow parentheses powered by tree-sitter
      "nvim-treesitter/nvim-treesitter-refactor", -- Highlight definitions, navigation and rename powered by nvim-treesitter.
      "nvim-treesitter/nvim-treesitter-textobjects", -- Textobjects defined by tree-sitter queries.
      'JoosepAlviste/nvim-ts-context-commentstring',
      'andymass/vim-matchup',
    },
    config = function() require('nvim-treesitter.configs').setup({
      ensure_installed = {"bash", "cmake", "cpp", "css", "dockerfile", "html", "javascript", "json","latex", "lua", "regex", "typescript","tsx"},

      highlight = {
        enable = true,
      },

      rainbow = {
        enable = true,
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
      },

      matchup = {
        enable = true,
      },

      refactor = {
        highlight_definitions = {
          enable = true,
          -- Set to false if you have an `updatetime` of ~100.
          clear_on_cursor_move = true,
        },
        highlight_current_scope = { enable = true },

        smart_rename = {
          enable = true,
          keymaps = {
            smart_rename = "grr",
          },
        },

        navigation = {
          enable = true,
          keymaps = {
            goto_definition = "gnd",
            list_definitions = "gnD",
            list_definitions_toc = "gO",
            goto_next_usage = "<a-*>",
            goto_previous_usage = "<a-#>",
          },
        },
      },

      textobjects = {
        select = {
          enable = true,

          -- Automatically jump forward to textobj, similar to targets.vim
          lookahead = true,

          keymaps = {
            -- You can use the capture groups defined in textobjects.scm
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
          },
        },

        swap = {
          enable = true,
          swap_next = {
            ["<leader>a"] = "@parameter.inner",
          },
          swap_previous = {
            ["<leader>A"] = "@parameter.inner",
          },
        },

        move = {
          enable = true,
          set_jumps = true, -- whether to set jumps in the jumplist
          goto_next_start = {
            ["]m"] = "@function.outer",
            ["]]"] = "@class.outer",
          },
          goto_next_end = {
            ["]M"] = "@function.outer",
            ["]["] = "@class.outer",
          },
          goto_previous_start = {
            ["[m"] = "@function.outer",
            ["[["] = "@class.outer",
          },
          goto_previous_end = {
            ["[M"] = "@function.outer",
            ["[]"] = "@class.outer",
          },
        },

        lsp_interop = {
          enable = true,
          border = 'none',
          peek_definition_code = {
            ["<leader>df"] = "@function.outer",
            ["<leader>dF"] = "@class.outer",
          },
        },
      },

      context_commentstring = {
        enable = true,
        enable_autocmd = false,
      }
    }) end,
  }

  use {-- Always show current function context.
    "nvim-treesitter/nvim-treesitter-context",
    requires = "nvim-treesitter/nvim-treesitter",
    config = function() require('treesitter-context').setup() end,
  }

  use {
    "https://github.com/windwp/nvim-ts-autotag", -- Auto-pair plugin
    requires = "nvim-treesitter/nvim-treesitter",
    config = function() require('nvim-ts-autotag').setup() end,
  }

  use {
    "SmiteshP/nvim-gps",
    requires = "nvim-treesitter/nvim-treesitter",
    config = function() require("nvim-gps").setup() end,
  }

  --use "theHamsta/nvim-dap-virtual-text" -- Displays values of variables at their definition as virtual text during debugging
  --use "mfussenegger/nvim-ts-hint-textobject" -- Textobject selection hint powered by treesitter.
  --use "andymass/vim-matchup" -- Provides language-specific % style pair and tuple matching, highlighting, and text-objects.

  -- Utilities
  use 'ap/vim-css-color'
  use {
    'lewis6991/spellsitter.nvim',
    requires = 'nvim-treesitter/nvim-treesitter',
    config = function()
      require('spellsitter').setup()
    end
  }

  -- Autocompletion
  use "nvim-lua/completion-nvim"
  use "hrsh7th/cmp-nvim-lsp"          -- | LSP source for nvim-cmp
  use "hrsh7th/cmp-buffer"            -- | In buffer completion
  use "hrsh7th/cmp-path"              -- | Path comp
  use "hrsh7th/cmp-cmdline"           -- | Command line comp
  use "hrsh7th/nvim-cmp"              -- | Autocompletion plugin

  use "L3MON4D3/LuaSnip"              -- | Snippets plugin
  use "saadparwaiz1/cmp_luasnip"      -- | Snippets source for nvim-cmp

  -- Interface & Colorschemes ----------------------------------------
  use {
    "nvim-lualine/lualine.nvim",     -- | Status line
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
    local gps = require("nvim-gps")

    require("lualine").setup({
      sections = {
          lualine_c = {
            { gps.get_location, cond = gps.is_available },
          },
      },
    })
    end,
  }

  use {
    'marko-cerovac/material.nvim',
    config = function() require('material').setup() end,
  }

	use "EdenEast/nightfox.nvim"

  -- Tools -----------------------------------------------------------
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'airblade/vim-gitgutter' -- Git
  --use 'preservim/nerdcommenter'
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup({
          pre_hook = function(ctx)
          local U = require 'Comment.utils'

          local location = nil
          if ctx.ctype == U.ctype.block then
            location = require('ts_context_commentstring.utils').get_cursor_location()
          elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
            location = require('ts_context_commentstring.utils').get_visual_start_location()
          end

          return require('ts_context_commentstring.internal').calculate_commentstring {
            key = ctx.ctype == U.ctype.line and '__default' or '__multiline',
            location = location,
          }
        end,
        })
    end
}
end )
