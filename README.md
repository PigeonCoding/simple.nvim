# simple.nvim 
 a simple yet powerful neovim config

 this config was made to be easy to modify and customize 
 it is also my first config

 # How to use
backup your current neovim config and clone the repo to your neovim config folder
### Linux/MacOS

```
mv ~/.config/nvim{,.bak}
git clone https://github.com/PigeonCoding/simple.nvim ~/.config/neovim
```
### Windows
```
move ~/AppData/Local/nvim ~/AppData/Local/nvim.bak
git clone https://github.com/PigeonCoding/simple.nvim ~/AppData/Local/nvim
```
launch neovim by running `nvim` and it should install and setup itself automatically

# What is in this config
this config has uses [lazy.nvim](https://github.com/folke/lazy.nvim) as a package manager and comes with these packages preconfigured

you currently need to install the lsp servers manually on your machine and add them to the lsp.lua file -- i am working on getting masson.nvim working but i ran into some weird bugs

- https://github.com/folke/which-key.nvim -- shows the key combinations as you use them handy when starting out --
- https://github.com/nvimdev/indentmini.nvim  -- a pretty gud indentline plugin --
- https://github.com/numToStr/Comment.nvim -- adds the ability to comment and uncomment a line of code -- NOTE: you currently can only comment and uncomment a single line at at time --
- https://github.com/L3MON4D3/LuaSnip -- a powerful snippet engine
- https://github.com/tanvirtin/monokai.nvim -- a pretty cool theme --
- https://github.com/hrsh7th/nvim-cmp -- an autocompletion engine --
- https://github.com/hrsh7th/cmp-buffer -- an addon to use words present in open files in autocompletion --
- https://github.com/hrsh7th/cmp-nvim-lsp -- an addon to use lsp in autocompletion --
- https://github.com/saadparwaiz1/cmp_luasnip -- an addon to use luasnip in autocompletion --
- https://github.com/neovim/nvim-lspconfig -- neovim's lsp configuration --
- https://github.com/NvChad/nvim-colorizer.lua -- adds a color preview when typing a color or a hex value like 'red' or '#294859' --
- https://github.com/karb94/neoscroll.nvim -- not working currently -- adds smooth scrolling -- just use neovide it's just better for this--
- https://github.com/HiPhish/rainbow-delimiters.nvim -- you need to install the TreeSitter language support -- adds rainbow colors to parentheses and brackets and such --
- https://github.com/ggandor/lightspeed.nvim -- adds a very fast way to navigate a file that's currently on your screen --
- https://github.com/windwp/nvim-autopairs -- auto pairs parentheses and brackets and quotes etc --
- https://github.com/nvim-tree/nvim-tree.lua -- file browsing and more --
- https://github.com/nvim-tree/nvim-web-devicons -- adds cool icons to nvim-tree --
- https://github.com/sudormrfbin/cheatsheet.nvim -- adds a cheatsheet that can be searched using telescope and gives the corresponding key combination to use -- 
- https://github.com/nvim-telescope/telescope.nvim -- a fuzzy finder for searching files, folders, and word in files --
- https://github.com/debugloop/telescope-undo.nvim -- adds a undo page to telescope --
- https://github.com/nvim-lua/popup.nvim -- adds a popup to neovim --
- https://github.com/nvim-lua/plenary.nvim -- a plugin for asynchronous execution and programming --
- https://github.com/MunifTanjim/nui.nvim -- UI component library for neovim --
- https://github.com/rcarriga/nvim-notify -- adds notifications to be used by other plugins -- 
- https://github.com/CRAG666/code_runner.nvim -- run your code directly -- only supports python|rust|java for the moment --
- https://github.com/saecki/crates.nvim -- a handy crate version indicator for rust crates --
- https://github.com/okuuva/auto-save.nvim -- auto saves every time a change occurs to make sure you don't lose your work :) --
