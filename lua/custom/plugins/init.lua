-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.cmd [[
:augroup CursorLine
:    au!
:    au VimEnter * setlocal cursorlineopt=both
:    au WinEnter * setlocal cursorlineopt=both
:    au BufWinEnter * setlocal cursorlineopt=both
:    au WinLeave * setlocal cursorlineopt=number
:augroup END
]]

return {}
