local opt = vim.opt 

-- line numbers
opt.relativenumber = false
opt.number = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings 
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = false

-- appearence
opt.termguicolors = true
opt.background = "dark"
-- opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- minus become part of the word
opt.iskeyword:append("-")