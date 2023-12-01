return function(local_vim)
  local_vim.opt.number = true
  local_vim.opt.mouse = ""
  local_vim.opt.ignorecase = true
  local_vim.opt.smartcase = true
  local_vim.opt.hlsearch = false
  local_vim.opt.wrap = true
  local_vim.opt.breakindent = true
  local_vim.opt.tabstop = 2
  local_vim.opt.shiftwidth = 2
  local_vim.opt.expandtab = false
  local_vim.opt.undofile = true
  local_vim.opt.undolevels = 1500 -- how many times the user can undo
  local_vim.opt.undoreload = 10000
  local_vim.opt.background = "dark"
  local_vim.opt.autoindent = true
  local_vim.opt.cindent = true
  local_vim.opt.cinoptions = "g0:0t0c2C1(0f0l1"
  local_vim.opt.signcolumn = "yes"
  local_vim.opt.termguicolors = true
  local_vim.opt.foldenable = false

  -- sets vim.g.mapleader
  local_vim.g.mapleader = " "
  -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
  local_vim.g.autoformat_enabled = true
  -- enable completion at start
  local_vim.g.cmp_enabled = true
  -- enable autopairs at start
  local_vim.g.autopairs_enabled = true
  -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
  local_vim.g.diagnostics_mode = 3

  -- Neovide specific setup
  local_vim.opt.guifont = "FantasqueSansM Nerd Font:h18:#e-subpixelantialias"
  local_vim.g.neovide_remember_window_size = true
  local_vim.g.neovide_theme = "auto"
  -- neovide_cursor_vfx_mode = "railgun"
  -- neovide_cursor_vfx_mode = "torpedo"
  local_vim.g.neovide_cursor_vfx_mode = "pixiedust"

  return local_vim
end
