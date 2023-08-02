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

-- return require('packer').startup(function(use)
--   use 'wbthomason/packer.nvim'

--   -- Atom colors scheme
--   use 'autoload/onedark.vim'
--   -- My plugins here
--   -- use 'foo1/bar1.nvim'
--   -- use 'foo2/bar2.nvim'

--   -- Automatically set up your configuration after cloning packer.nvim
--   -- Put this at the end after all plugins
--     if packer_bootstrap then
--         require('packer').sync()
--     end
-- end)

-- Autocommand that reloads neovim whenever you save this file
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

-- add list of plugins to install
return packer.startup(function(use)
  -- packer can manage itself
  use("wbthomason/packer.nvim")

  -- Atom colors scheme
  use 'navarasu/onedark.nvim'



  if packer_bootstrap then
    require("packer").sync()
  end
end)