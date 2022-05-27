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
  use "neovim/nvim-lspconfig"         -- | Default config for NeoVim lsp

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    requires = {
      "p00f/nvim-ts-rainbow", -- Rainbow parentheses powered by tree-sitter
      "nvim-treesitter/nvim-treesitter-refactor", -- Highlight definitions, navigation and rename powered by nvim-treesitter.
      "nvim-treesitter/nvim-treesitter-textobjects", -- Textobjects defined by tree-sitter queries.

    },
    config = function() require('nvim-treesitter.configs').setup({
      ensure_installed = {"bash", "cmake", "cpp", "css", "dockerfile", "html", "javascript", "json","latex", "lua", "regex"},

      highlight = {
        enable = true,
      },

      rainbow = {
        enable = true,
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
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
    }) end,
  }

  --use "nvim-treesitter/playground" -- View treesitter information directly in Neovim.
  use {-- Always show current function context.
    "nvim-treesitter/nvim-treesitter-context",
    config = function() require('treesitter-context').setup() end,
  }
  --use "theHamsta/nvim-treesitter-pairs" -- Define your pairs for % with tree-sitter
  --use "https://github.com/folke/twilight.nvim" -- dims inactive portions of the code you're editing.
  use {
    "https://github.com/windwp/nvim-ts-autotag", -- Auto-pair plugin
    config = function() require('nvim-ts-autotag').setup() end,
  }
  --use "https://github.com/milisims/tree-sitter-org" -- parser for orgmode format.

  --use "theHamsta/nvim-dap-virtual-text" -- Displays values of variables at their definition as virtual text during debugging
  --use "JoosepAlviste/nvim-ts-context-commentstring" -- Sets the commentstring based on tree-sitter queries
  --use "mfussenegger/nvim-ts-hint-textobject" -- Textobject selection hint powered by treesitter.
  --use "SmiteshP/nvim-gps" -- Statusline component which shows context, using custom queries for each language
  --use "andymass/vim-matchup" -- Provides language-specific % style pair and tuple matching, highlighting, and text-objects.
  --use "lewis6991/spellsitter.nvim" -- Built in spellchecker support.

  -- Utilities
  use 'ap/vim-css-color'

  -- Autocompletion
  use "hrsh7th/cmp-nvim-lsp"          -- | LSP source for nvim-cmp
  use "hrsh7th/cmp-buffer"            -- | In buffer completion
  use "hrsh7th/cmp-path"              -- | Path comp
  use "hrsh7th/cmp-cmdline"           -- | Command line comp
  use "hrsh7th/nvim-cmp"              -- | Autocompletion plugin

  use "L3MON4D3/LuaSnip"              -- | Snippets plugin
  use "saadparwaiz1/cmp_luasnip"      -- | Snippets source for nvim-cmp

  --use "arkt8/nim.vim"                   -- | Syntax highlight for Nim
  --use "jakwings/vim-terra"            -- | Support for terralang

  -- Interface & Colorschemes ----------------------------------------
  use "nvim-lualine/lualine.nvim"     -- | Status line
  use 'marko-cerovac/material.nvim'
  use 'ryanoasis/vim-devicons'

  -- Tools -----------------------------------------------------------
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'airblade/vim-gitgutter' -- Git
  use 'preservim/nerdcommenter'
end )
