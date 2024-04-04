" NCFL3888:~/.vim/ftdetect/subs.vim derived from my earlier du2.vim from conf;
augroup subs_ft
  au!
  autocmd BufNewFile,BufRead *.sub,*.subs,*.CC set filetype=subs
augroup END
