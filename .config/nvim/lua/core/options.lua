local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true -- Great for vertical jumps

-- Tabs & Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- Search behavior
opt.ignorecase = true
opt.smartcase = true

-- System integration
opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.termguicolors = true      -- True color support

-- The 80-Cell Column Ruler
opt.colorcolumn = "80"
