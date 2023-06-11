vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- prefered colorscheme
  use 'morhetz/gruvbox'
  -- file explorer
  use 'preservim/nerdtree'
  -- git icon in file explor
  use 'Xuyuanp/nerdtree-git-plugin'
  -- file status bar
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  -- fuzzy finder
  use {
    'junegunn/fzf.vim',
    requires = { 'junegunn/fzf', run = ':call fzf#install()' }
  }
  -- indent lines show
  use 'yggdroot/indentline'
  -- git gutter
  use 'airblade/vim-gitgutter'
  -- commenting with gc
  use 'numToStr/Comment.nvim'
  -- icons
  use 'ryanoasis/vim-devicons'

  -- auto completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  -- For vsnip users.
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  -- lsp server
  use 'neovim/nvim-lspconfig'
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  
  if packer_bootstrap then
    require('packer').sync()
  end
end)

