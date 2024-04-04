" Vim syntax file
" Language          : lrc input file (usually ~/.lrc which gener8s ~/.lsrc, a dircolors(1) input file);
" PrevPrevMaintainer: Nikolai Weibull <now@bitwi.se>
" PreviousMaintainer:     Jan Larres  <jan@majutsushi.net>
" L8--est_Revision#?: 2018-02-19      (by PreviousMaintainer)
" Present_Maintainer:     Pip Stuart  <Pip@CPAN.Org>
" L8--est_Revision#0: 2024-03-17      (by Present_Maintainer)
"   $d8VS='O3HM2LRC';
if exists("b:current_syntax")
  finish
endif
let s:cpo_save = &cpo
set               cpo&vim
syntax keyword lrcTodo    FIXME TODO XXX NOTE contained
syntax region  lrcComment start='#' end='$' contains=lrcTodo,@Spell
syntax keyword lrcKeyword TERM LEFT LEFTCODE RIGHT RIGHTCODE END ENDCODE
syntax keyword lrcKeyword NORMAL NORM FILE RESET DIR LNK LINK SYMLINK
                              \ MULTIHARDLINK FIFO SOCK DOOR BLK CHR ORPHAN
                              \ MISSING PIPE BLOCK CHR EXEC SETUID SETGID
                              \ CAPABILITY STICKY_OTHER_WRITABLE
                              \ OTHER_WRITABLE STICKY
" some options are Slackware only, && are ignored by GNU LS_COLORS etc.
syntax keyword lrcKeyword COLOR OPTIONS EIGHTBIT
syntax match lrcExtension '^\s*\zs[.*]\S\+'
syntax match lrcEscape '\\[abefnrtv?_\\^#]'
syntax match lrcEscape '\\[0-9]\{3}'
syntax match lrcEscape '\\x[0-9a-f]\{3}'
if !has('gui_running') && &t_Co == ''
  syntax match lrcNumber '\<\d\+\>'
  highlight default link lrcNumber Number
endif
highlight default link lrcTodo      Todo
highlight default link lrcComment   Comment
highlight default link lrcKeyword   Keyword
highlight default link lrcExtension Identifier
highlight default link lrcEscape    Special
function! s:set_guicolors() abort
  let s:termguicolors = {}
  let s:termguicolors[ 0] = "Black"
  let s:termguicolors[ 1] = "DarkRed"
  let s:termguicolors[ 2] = "DarkGreen"
  let s:termguicolors[ 3] = "DarkYellow"
  let s:termguicolors[ 4] = "DarkBlue"
  let s:termguicolors[ 5] = "DarkMagenta"
  let s:termguicolors[ 6] = "DarkCyan"
  let s:termguicolors[ 7] = "Gray"
  let s:termguicolors[ 8] = "DarkGray"
  let s:termguicolors[ 9] = "Red"
  let s:termguicolors[10] = "Green"
  let s:termguicolors[11] = "Yellow"
  let s:termguicolors[12] = "Blue"
  let s:termguicolors[13] = "Magenta"
  let s:termguicolors[14] = "Cyan"
  let s:termguicolors[15] = "White"
  let xterm_palette = ["00", "5f", "87", "af", "d7", "ff"]
  let cur_col = 16
  for r in xterm_palette
    for g in xterm_palette
      for b in xterm_palette
        let s:termguicolors[cur_col] = '#' . r . g . b
        let cur_col += 1
      endfor
    endfor
  endfor
  for i in range(24)
    let g = i * 0xa + 8
    let s:termguicolors[i + 232] = '#' . g . g . g
  endfor
endfunction
function! s:get_hi_str(color, place) abort
  if a:color >= 0 && a:color <= 255
    if has('gui_running')
      return ' gui' . a:place . '=' . s:termguicolors[a:color]
    elseif a:color <= 7 || &t_Co == 256 || &t_Co == 88
      return ' cterm' . a:place . '=' . a:color
    endif
  endif
  return ''
endfunction
function! s:get_256color(colors) abort
  if len(a:colors) >= 2 " May be fewer while editing
    let [_five, color] = remove(a:colors, 0, 1)
    if _five != '5' || color == ''
      return -1
    else
      return str2nr(color)
    endif
  else
    return   -1
  endif
endfunction
function! s:preview_color(linenr) abort
  let line = getline(a:linenr)
  let defline = matchlist(line, '^\v([A-Z_]+|[*.]\S+)\s+([0-9;]+)')
  if empty(defline)
    return
  endif
  let colordef = defline[2]
  let colors = split(colordef, ';')
  let hi_str = ''
  let hi_attrs = []
  while len(colors) > 0
    let item = str2nr(remove(colors, 0))
    if item == 1
      call add(hi_attrs, 'bold')
    elseif item == 3
      call add(hi_attrs, 'italic')
    elseif item == 4
      call add(hi_attrs, 'underline')
    elseif item == 7
      call add(hi_attrs, 'inverse')
    elseif item >= 30 && item <= 37
      " ANSI SGR foreground color
      let hi_str .= s:get_hi_str(item - 30, 'fg')
    elseif item >= 40 && item <= 47
      " ANSI SGR background color
      let hi_str .= s:get_hi_str(item - 40, 'bg')
    elseif item >= 90 && item <= 97
      " ANSI SGR+8 foreground color (xterm 16-color support)
      let hi_str .= s:get_hi_str(item - 82, 'fg')
    elseif item >= 100 && item <= 107
      " ANSI SGR+8 background color (xterm 16-color support)
      let hi_str .= s:get_hi_str(item - 92, 'bg')
    elseif item == 38
      " Foreground for terminals with 88/256 color support
      let color = s:get_256color(colors)
      if color == -1
        break
      endif
      let hi_str .= s:get_hi_str(color, 'fg')
    elseif item == 48
      " Background for terminals with 88/256 color support
      let color = s:get_256color(colors)
      if color == -1
        break
      endif
      let hi_str .= s:get_hi_str(color, 'bg')
    endif
  endwhile
  if hi_str == '' && empty(hi_attrs)
    return
  endif
  " Check whether we have already defined this color
  redir => s:currentmatch
  silent! execute 'syntax list'
  redir END
  if s:currentmatch !~# '\/\\_s\\zs' . colordef . '\\ze\\_s\/'
    " Append the buffer number to avoid problems with other lrc buffers interfering
    let bufnr = bufnr('%')
    execute 'syntax match lrcColor' . b:dc_next_index . '_' . bufnr .
          \ ' "\_s\zs' . colordef . '\ze\_s"'
    let hi_attrs_str = ''
    if !empty(hi_attrs)
      if has('gui_running')
        let hi_attrs_str = ' gui=' . join(hi_attrs, ',')
      else
        let hi_attrs_str = ' cterm=' . join(hi_attrs, ',')
      endif
    endif
    execute 'highlight default lrcColor' . b:dc_next_index . '_' .
          \ bufnr . hi_str . hi_attrs_str
    let b:dc_next_index += 1
  endif
endfunction
" Avoid accumulating too many definitions while editing
function! s:reset_colors() abort
  if b:dc_next_index > 0
    let bufnr = bufnr('%')
    for i in range(b:dc_next_index)
      execute 'syntax clear lrcColor' . i . '_' . bufnr
      execute 'highlight clear lrcColor' . i . '_' . bufnr
    endfor
    let b:dc_next_index = 0
  endif
  for linenr in range(1, line('$'))
    call s:preview_color(linenr)
  endfor
endfunction
let b:dc_next_index = 0
if has('gui_running')
  call s:set_guicolors()
endif
if has('gui_running') || &t_Co != ''
  call s:reset_colors()
  autocmd CursorMoved,CursorMovedI <buffer> call s:preview_color('.')
  autocmd CursorHold,CursorHoldI   <buffer> call s:reset_colors()
endif
let   b:current_syntax = "lrc"
let   &cpo = s:cpo_save
unlet        s:cpo_save
