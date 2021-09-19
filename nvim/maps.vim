" JCKs VIM MAPPINGS
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
nmap <C-a> gg<S-v>G
nnoremap dw vb"_d
nnoremap x "_x
vnoremap sc "*yy
nmap Y v$

let g:user_emmet_expandabbr_key='<Tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
augroup EmmetSettings
  autocmd! FileType html,scss,css,js imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
augroup END

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

