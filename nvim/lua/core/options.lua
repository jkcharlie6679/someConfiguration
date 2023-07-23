local opt = vim.opt -- for conciseness
-- line numbers
opt.relativenumber = true
opt.number = true

opt.conceallevel = 0
-- tabs& indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = true

-- search setting
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.relativenumber = true
opt.cursorline = true

-- apperance
opt.background = 'dark'

-- backsapce
opt.backspace = 'indent,eol,start'

-- clipboard
opt.clipboard:append('unnamedplus')

-- split window
opt.splitright = true
opt.splitbelow = true

-- set foldmethod
opt.foldmethod = 'manual'

 -- set updatetime
opt.updatetime = 100

-- set list
opt.list = true
opt.listchars = {tab = '>-', space = '·', eol = '$'}

-- set end of line
opt.fixendofline = false

-- config indentLine
vim.g.indentLine_char = '¦'

-- config airline theme
vim.g.AirlineTheme = 'deus'

