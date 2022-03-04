if vim.fn.exists('*fugitive#statusline') == 0 then
  vim.opt.statusline=%F\ %m%r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}[L%l/%L,C%03v]
  vim.opt.statusline+=%=
  vim.opt.statusline+=%{fugitive#statusline()}
end
