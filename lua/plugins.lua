return {
  -- colorscheme
  {
    'blueshirts/darcula',
    config = function()
      vim.cmd([[colorscheme darcula]])
    end
  },
  'editorconfig/editorconfig-vim',
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('config/lualine')
    end
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('config/gitsigns')
    end
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('config/telescope')
    end
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require('config/comment')
    end
  },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('config/nvim-tree')
    end
  },
  -- LSP
  {
    'neovim/nvim-lspconfig'
  },
  {
    'williamboman/mason.nvim',
    build = ':MasonUpdate',
    config = function()
      require('config/mason')
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = { 'williamboman/mason.nvim' },
    event = 'VeryLazy',
    config = function()
      require('config/mason-lspconfig')
    end
  },
  {
    'hrsh7th/nvim-cmp',
    config = function()
      require('config/nvim-cmp')
    end
  },
  -- cmp (copy&paste from other)
  {'hrsh7th/cmp-nvim-lsp', event = 'InsertEnter'}, 
  {'hrsh7th/cmp-buffer', event = 'InsertEnter'},
  {'hrsh7th/cmp-path', event = 'InsertEnter'},
  {'hrsh7th/cmp-vsnip', event = 'InsertEnter'},
  {'hrsh7th/cmp-cmdline', event = 'ModeChanged'}, --これだけは'ModeChanged'でなければまともに動かなかった。
  {'hrsh7th/cmp-nvim-lsp-signature-help', event = 'InsertEnter'},
  {'hrsh7th/cmp-nvim-lsp-document-symbol', event = 'InsertEnter'},
  {'hrsh7th/cmp-calc', event = 'InsertEnter'},
  {'onsails/lspkind.nvim', event = 'InsertEnter'},
  {'hrsh7th/vim-vsnip', event = 'InsertEnter'},
  {'hrsh7th/vim-vsnip-integ', event = 'InsertEnter'},
  {'rafamadriz/friendly-snippets', event = 'InsertEnter'},
}
