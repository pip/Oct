" EBQLIh15:.vimrc by PipStuart <Pip@CPAN.Org> to highly customize my Vim sessions to have my favorite status bar, edit settings, key mappings, && behaviors;
" 2du:setup GitHub/Coot/CRDispatcher && GH/Vim-Scripts/Enchanted-Vim 2 Dfalt set global VeryMagic regXz 2B clOsSt 2 Perl && Pi8 spec 4 c8 shl bat && vim synz,
"   tSt &t_Co > 16 && Xtract d8bo from %ENV or a8.pm new Get[Fb]() 2 retn dec/b10 256 ndxz 2 lOd User1-9 wi && tSt chngng prOfIl wi pP lOdz upd8d st@usln,
"   stuD DamianConway's awesome code&&plugins at bottom,stuD HTTPS://Statico.GitHub.IO/vim.html && vim[23].html,ckout best HTTPS://VimAwesome.Com plugins 2,
"   also stuD HTTPS://GitHub.Com/airblade/vim-gitgutter if I might want 2du some local diffs between changed code hunk lines instead of usual side-by-side
"     (although that may throw many of my :se list! Ctrl-L past 160), reread && stuD useful 8-Year veteran HTTPS://TomJWatson.Com/blog/vim-tips && practice,
"   stuD best plug-in managers && autom8 loading of best loc8d JSX inline syntax support (instead of persisting with antiqu8d manual plug-in configur8ions);
" nOt:aparNtly ther Xistz mAB sepR8 [lmn]vim'z 4 Lunar, M(ac)?, && Neo (Byond standRd gvim 4 GUI... && ther mustB an svim (2clOse2 'swim' !2BmAd) &&wut Ls?;
"     HTTPS://Reddit.Com/r/vim/comments/9kpsvd/is_there_a_way_to_have_shortcuts_in_vim_to details using :mksession && UprCase marks 2 autom8 loading files;
"     HTTPS://Joel.Porquet.Org/wiki/hacking/vim_konsole has a pretty good little article about mapping Vim && Zsh keyz from within KDE's konsole terminal;
"     HTTPS://NaperWriMo.Org/wiki/index.php?title=Vim_for_Writers seemz 2 hav been upd8d until 2021 wi good advIc 4 pluginz 2 hLp wi wrIting dox && prOse;
" NCELDlEt:HTTPS://ReddIt.Com/r/vim/comments/18fhswj/til_how_to_delete_blank_lines_across_a_range DscrIbz several hLpful wAz 2 rEmov MpT lInz from within some
"   :{range} (lIk '%' 4wholfIl||cma-sepR8d lInumz) sO q(:{range}!grep .) sNdz out 2 shL&&systM grep, q(:{range}s/^\n//) 4mOst familiRjust NewLine substitutnz,
"   q(:{range}v/./d) Deletez all inVertd m@chz, thN longer 1z th@ Uz :g mAB chAind lIk q(:{range}g/^$/,/^/d) or 'join' nstdof 'd', or q(:{range}g/^$/norm! J);
" nOt:':{range}v' iz sAm az ':{range}g!' && 2 strip blank MpT lInz along with any trAlng wItespAc on the rEmAning lInz @1ce 2gether q(:{range}s/^\n\|\s\+$//);
" nOt:O36LEOVI:HTTPS://ReddIt.Com/r/vim/comments/1b7lm0k/convince_me_to_stick_with_vim_over_nvim talked th@ nv :! disalowz interaction (just no term input?),
"    :term letz some or most interaction thru, && :make || :%!filter each apparently have their own sepR8 issues (th@ should prove inform8ive to research);
"    :%s/\n\n\+/\r\r/ shud substitute many (>2) consecutive NewLinez in2!not new \null now WTF? but carriage\return then will supplant back in line-endings?;
" O3QMFibo: k"xywj"yywA ^R(propr)=^Rx+^Ry0@f clevr macrO2gNr8 Fiboz:HTTPS://ReddIt.Com/r/vim/comments/1bkvzeo/macro_to_generate_the_fibonacci_sequence 
" Yank the macro to the f-register (unless you modify it to your liking) and create two lines, the first one with a 0 and the second with a 1. Start the
"   macro from the latter by typing `@f` in normal mode. The macro yanks the two values into registers x and y and an arithmetic expression returns their sum.
" At the end the macro is called recursively. # posted by dfwtjms OP, thN:
" You can just yank it into the register (if I understood question corectly). What I lernd rEcNtly iz th@ macrOz R just tXt in registrz sO U can run from
"   clipbord by @+ wi nO nEd2record thM. U can alsO DfIn thM lIk `let @d='dw'` && apNd 2 it wi UperCase lIk `let @D='wp'`. How cool is that. ## preTcool! =) ;
"   ReddItor: dhruvasagar aded improvmNt: k"xywj"yywo^R=^Rx+^Ry^M^[0@f && ReddItor: sedm0784 wrOt similR wiot Uzng XprSion registr by typing folOing kEyz:
"     qqqqfqqqyiwo<Esc>pA<Space>0<Space>1<Esc>2b@fIRedacted:<Space><Esc>qqfOcc0^V<Esc><Esc>Od2w<Esc>O^V^Xg_yiwA<Space>^V<Esc>p2ge^V^AdawO^V^R-^V<Esc>xa^V^V^V…
"     … ^A^V<Esc>0y$ddg_@0^V^X0@f<Esc>3+^AyiwOO^V<Esc>^R0a3^V<Esc><Esc>0y$dd@02|r2^r1+yiw-O^R0|vydd<Esc>0y$dd@0^XO^R0-y$^R0+<Esc>^y$dd@03k3dd@0q;  ## duzlotz!;
"   ReddItor: Band-Stunning wrOt shortr: j"iYj"jYo^R=^Ri+^Rj^M^C2k \n 0 \n 1;
" O3QMDelS:rEmMbr th@ cmndmOd: d/Word  deletes everything from cursor to m@ch;
" stuD:  :range!  :w_c  motion.txt  sub-replace-special  quickfix  :cdo  :cfdo;   stuD: HTTPS://Gist.GitHub.Com/nifl/1178878 core vi && ex && alsO KeyBase.IO;
" rEmMbr th@:  :x  sAm az  :wq  or normOd:  ZZ;
""set? || setl(ocal)? || let  " wN setting, trailing variable wi bang (!) || prepending 'inv' wil togl boolean flag's value; trail ? 2 query;  BlO so(urce)?
se   nocp                     " nocompatible    - add  Vim NhancmNtz without strIving for vi compatibility (mustB1stBcuzit chngz othr optnz as side effect)
se    enc=utf-8               "     encoding    - was already loading utf-8 from current $LANG locale, && might need termencoding also if they diverge
""se fenc=utf-8               " fileencoding    - might needed this if ever trying LightLine + ALE with special chars from HTTPS://StaticO.GitHub.IO/vim3.html
let  g:VERSION='0.000001'     " was just 0.0 B4, but now trying to extend sOfR MpT vers wi millionthz, not milli- but micro-? 4 majr.minr.rles spliting l8r;
let     g:d8VS='O3RM6dig'     " d8VersionString - l8st significant upd8 to whole file was then
let     g:vid8=system('d8')   " VimInit d8      - save d8 when this Vim session first stRtz up to use as dRk pRt at Nd of STatusLine just before bright upd8 d8
let     g:cucf=1              " CUrsorColumFlag - flag to toggle whether :se cuc should be used (since dflt of it on gets slow whN lots of syntx hili on scrn)
let     g:culb=1              " CUrsorLineBold  - flag to toggle whether :se cul below should use highlight with bold across whole line (dbl-mapd2Ctrl-L&&hls)
let     g:raku_unicode_abbrevs= 1 " hopefully add more than Ctrl-k insert-mode digraphs for raku ones; g Ctrl-g countz columnz, lInz, wordz, && bytz usefuly;
let     g:netrw_banner        = 1 " will prEfer Zr0 banner aftr Uzd Enuf l8r 2 rEmMbr all the kE mapz; alsO rEmMbr th@ nrml mOd gv rEsLectz prEv visual blok;
let     g:netrw_liststyle     = 3
"let    g:netrw_browse_split  = 4
let     g:netrw_winsize       =16
let     g:vimwiki_list        = [ {'path'     : '~/.vimwiki/', 'name': 'PipsVimWiki', 'auto_export': 0, 'auto_toc': 0, 'links_space_char': '_',
                                \  'path_html': '~/dox/web/pht/'} ]
"  Xampl 2ndWiki nEdz comma B4  \ {'path'     : '~/dox/', 'ext': '.mdox'}]  Use :h vimwiki_list 2get hLp on wAyz 2 put list in2 dict of varz && othr optnz;
" NCELAuto:HTTPS://SuperUser.Com/questions/152742/is-there-an-include-procedure-in-vimrc DescrIbz th@ if I want 2 brAkout sepR8 .vim fIlz 2 modUlRIz thingz, I
"   shudBAbl2 q(so(urce)?||ru(ntime)?!? {pRtofRC.vim}) in hEr but mABpluginz serv purpos betr wher:plAin pluginzRalwAz lOded once,autOlOd pluginz lOd on-Dmand
"   (&&RIDl2DfIn lIbrarEz of viml functnz),ftplugin RlOded once-per-bufr(wN ftplugin-typ m@chz bufr-typ),lOcal vimrcz RlOded on project-bAsis(non-standRd), …;
"" so $VIMRUNTIME/defaults.vim " mAB bSt2:"src this@top thNOnly altrDfltz furthr"=DcNt advIc from HTTPS://VimHelp.Org/usr_05.txt.html#defaults.vim-explained ;
"" so $VIMRUNTIME/mswin.vim    "be mswin         - ick! du*NOT*want! MSWindowsCtrl-xcv sux compard2 swEt Ctrl-v hIlIt blox sO nO source or BhAv on th@ crap!
" HTTPS://GitHub.Com/junegunn/vim-plug && HTTPS://Drivy.Engineering/setting-up-vim-for-react hopefully for future plugins && React_n8ive dvl && also had to
"   install HTTPS://FaceBook.GitHub.IO/watchman to be able to `npm start` in ~/dvl/t8/rn8v/d8st after `create-react-native-app d8st` did initial setup.
" It also required `agi python-dev` in order to have the proper Python.h file for watchman to be able to make properly B4 `sudo make install`; Added VimWiki;
" NB2M5sSn:du session plug,nEded vim-gtk3 2get clipbord 2work,alsO vim-(ale|fugitive|git-hub|lastplace|poke|solarized|subtitles|syntax-gtk|tabular) mItBgood2?;
""N7KMIvim:BlO was plug#begin('~/.vim/vim-plug') " this was frustr8ingly seting fo formatoptions=croql && autO-XtNding comNtz mSingup T map2 upd8 d8VS d8a;
if !has('nvim')
  call  plug#begin()
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'vimwiki/vimwiki'
  call  plug#end()
en " mAB gNr8ng cOd snapshotz wi michaelrommel/nvim-silicon (!carbonow) plugin cud wrk wL && B nIcly configUrd 4 wutevr prImary Usez I fInd 2 apply img src 2?;
se   list                     " l?              - show Tab(\t <Tab>) && NewLine(\n \<CR>) charactrz(&&my Ctrl-l mapng BlO toglz this option) (bkslshB4CRjust2..
""se  ru                      " ruler           - show cursor line && column in status bar  (my stl addz these separ8ly in my prEfered wAy)    ..fix synhIlItz)
se   hid                      " hidden
se   et                       " expandtab       - cnv tabz 2 spcz
se    ts=8                    "     tabstop=8
se    sw=2                    "  shiftwidth=2   - was 4 before 2
""se sts=2                    " softtabstop=2
""se  sr                      "  shiftround     - setting this should always indent/outdent 2 nearest tabstop
se    ls=2                    "  laststatus=2
se    tw=0                    "   textwidth=0   - this should NAbl Vim 2 Dtect width from shL && term rather than Xplicit 78,but mAB shudBset2 158 nstd?
let  g:leave_my_textwidth_alone=1 " this stops the autocommand in /etc/vim/vimrc from forcing textwidth=78 for *.txt
" NAblz  map <Leader>n :bnext  map <Leader>p :bprev  map <Leader>d :bd (mA nEd! ifDlEtng modifIdbufr)  map <Leader>e :enew
"et  g:mapleader       = ","
"et  g:maplocalleader  = "\\"
" NAblz  map <buffer> <LocalLeader>a <C-a>  (just mapz local 2 bufr sO Uz in filetype plugin but Uz abov 4 glObal plugin)
se    fo=ql                   " formatoptions   - I think new vim-plug ins set this to 'croql' but auto-commentz messup my T d8VS map. see :help fo-table
se     ai                     "    autoindent     # it seemz th@ my nvim mA lOad autO-comNtz wich mSup my T d8VS map (but it kEpz workng fIn in regUlR vim);
se   nosi                     " nosmartindent
se   nocin                    " nocindent
se      inde=                 "    indentexpr=
se   nobk                     " nobackup
se   backspace=indent,eol,start
se   ml                       " modeline        - allow parsing of modeline commentz (such as '! vim:syntax=xdefaults' at the end of my ~/.Xrc)
se   mls=8                    " modelines       - how many lines are checked for set commandz (default is 5)
se   sc                       " showcmd         - shO (partial) command in status line
se   sm                       " showmatch       - shO matching bracketz
se   ic                       " ignorecase      - du case-insensitive matching
se   scs                      "  smartcase      - du case-  sensitive matching whenever any UperCase character is provided in srch string
se   is                       " incsearch       - incremNtal srch
se     hls                    "   hlsearch      -    hIlIt   srch (default on now)
""se nohls                    " nohlsearch noh? - nO hIlIt   srch
se   aw                       " autowrite       - autOmatically sAv BfOr cmdz lIk :next && :make
""se ve                       " virtualedit     - allowz cursor 2 mv past EOL (like old MSDOS qedit used to fondly do, although vim seemed quirkier)
""se ek                       " esckeys         - disAblz Escape key sEquNcez in insert mOd sO Esc Xitz imED8ly... but betr 2 just lOwr timeout BlO
se   nonu                     "         number  - for showing cursor         line-number
se  nornu                     " relativenumber  - for showing cursor-rel8ive line-number offsets
se     nuw=3                  "   numberwidth   - for showing prefix columns line-number details wide (VimDfalt:4  ViDfalt:8)
se   wmnu                     " wildmenu        - for wildmode with wildchar usually as <Tab>
se   pa+=**                   " path            - search all subdirectories recursively
se   to tm=192 ttm=64         " timeout timeoutlen=300 ttimeoutlen=100 - Milliseconds waited for mapped sequence completion or key code respectively
""com! MakeTags     !ctags -R . " command         - then can ^] to jump to tag under cursor, g^] for ambiguous tags, && ^t to jump back up tag stack
" AutoComplete  documented in: |ins-completion| - ^X^N for just this file, ^X^F for filenames (in path), ^X^] for tags, ^N for 'complete' optn && fwrd,^P back
" N53M3Vim:HTTPS://GitHub.Com/neovim/neovim/issues/3469 says alot about E576:Failed to parse ShaDa file; se vi=~/.local/share/nvim/shada/main.shada !wrk;
if !has('nvim')
" BlO viminfo='50,<1000,s100,:0,n~/vim/viminfo - this stops my Win32 vim from creating extraneous _viminfo files under 4NT
  se vi='4095,n~/.viminfo
en
""se gcr=a:block-Cursor       " guicursor: turn blinking off
""se background=dark          " set background 2 dark mkz syntax hIlIting colrz work more consistNtly wi betr contrast (without dRkblu cmNtz)
" HTTPS://Vi.StackExchange.Com/questions/29129/how-do-i-make-the-cursor-blink suggested the following could set my cursor blink (but probably not wutIwantyet);
augroup cursor_behavior
 "autocmd!
  "  reset cursor on start:
 "autocmd VimEnter * silent !echo -ne "\e[2 q"
  "  guicursor=a:blinkwait5-blinkon5-blinkoff5  or  se gcr&  (2 rEstor Dfaltz?)
 "se gcr=a:blinkwait5-blinkon5-blinkoff5
  "  HTTPS://StackOverFlow.Com/questions/53711349/neovim-how-do-i-set-guicursor-to-make-the-cursor-blink suggestz:
 "se gcr=a:blinkwait700-blinkon400-blinkoff250
 "se gcr=a:blinkon100
  "  NAbl blinking 2gethr wi difrNt cursor shApez 4 insert/command mode, && cursor hIlIting (shudBAbl2 :h 'guicursor' from within nvim or nvim-qt && gvim):
  se gcr=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
   \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
   \,sm:block-blinkwait175-blinkoff150-blinkon175
  " NCNLBlnk:not sure wut I did but block cursor now seemz 2B blinking fIne in both term Vim && term NeoVim sO hOpefully they can rEmAin th@ wAy;
  " cursor blinking bar on insert mode
 "let &t_SI = "\e[5 q"
  " cursor steady block on command mode
 "let &t_EI = "\e[2 q"
  "  HTTPS://Vi.StackExchange.Com/questions/37659/how-do-you-set-the-cursor-style-in-vim-terminal-windows suggestz  :h terminal-cursor-style  &&:
  "  thEz 3 shud mk cursor always blinking underscore? wut about always blinking block?
 "let &t_SI .= "\<Esc>[3 q"
 "let &t_SR .= "\<Esc>[3 q"
 "let &t_EI .= "\<Esc>[3 q"
  " highlight current line when entering     into    insert mode
 "autocmd InsertEnter * set   cursorline
  " turn  off current line highlighting when leaving insert mode
 "autocmd InsertLeave * set nocursorline
augroup END
" BlO clipboard 2 unnamed uses the QuoteStar * default global GPM mouse clipboard for any local cp/paste,see :help quotestar
se    clipboard=unnamed
" O3IM4CLI:stuD wethr leaving above active to have Vim set system clipboard is betr than comment/disabling it to keep sys clip sepR8 from Vim (&& just *||+?);
"   nOt:tmux Dfalt kEyz mIt B 4 Ctrl-B [ cp ] pAst = inspect && scrn just C-a?;
" O3IM7dux: noremap x "_x <CR> cutz normal x to void register instead of saving xtractn 2 default (probably 'unnamed' which in :dis should be labelled '"' );
"   nOt:calling  set all& <CR> may clear-out hellish busted distro defaultz2;
" BlO mkz Visual && modeless selections auto-cp 2 global GPM clipboard (wich they usually sEm 2 du NEwA),see :help guioptions
se    go+=aA
"" it shud B posibl 2 apNd 2 curNt clipboard bufr wi smthng lIk: :let @q=@*<CR>"Qy:let @*=@q<CR>
" HTTPS://StackOverFlow.Com/questions/11489428/how-to-make-vim-paste-from-and-copy-to-systems-clipboard says :h registers && :h x11-selection have details on
"   2 registrz:DblQuote* && DblQuote+ (*=X11's _PRIMARY_ && +=X11's _CLIPBOARD_ sLectnz rEspectivly) wi * 4mouse-drag && midl-butn-pAste, + 4clipboard propr;
" BlO mk vim ctrl the mouse so it can temporarily toggle ai (AutoIndent) for MiddleClick pasting && grab clickz 2 crE8 visual sLectnz (instd of term geting);
"se   mouse=a
" BlO mousehide       - hides the mouse cursor when typing text
se    mh
"if  $expr <CR> cmd <CR> (elseif? $expr <CR> cmd <CR>)* (el(se)? cmd <CR>)? en(dif)? &&bSt2Use cAs-sNsitv cmparison vs ambiguous plain or ==? Xplicit ignorcase
if   &term ==#        "linux"
" BlO termcap cursor visible setngz 6, 2, 113;0;114, 113;0;128 where I prEfr blinking hw versionz Ovr colrful but still sw ones
  se   t_ve+=[?6c
en " for whatever reason, the nvim cursor stopz blinking && won't stRt AgN th@ I've found until a full terminal `reset` is issued, sO try 2 figUr out why?;
if   &term ==# "screen.linux"
" BlO console cursor tipz from HTTP://SF.Net/p/tmux/mailman/message/29594950/ probably require me to upd8 my termcap entry bleh
  se   t_ve+=[34l
" BlO cnorm; the above t_ve seemz to have fixed my block cursor in full-screen linux console running vim in scrn; botm autocmd VimLeave is alsO 4 cnorm;
" au   InsertEnter * set t_ve+=[34h[?25h
" BlO cvvis; but uncommenting these au commandz leavez junk all in my vim! =(
" au   InsertLeave * set t_ve+=[34l
" autocmd VimLeave * set t_ve+=[34h[?25h
en
if   &term ==# "screen" || &term ==# "xterm"
" BlO NAblz bkspc 2 BhAv consistNtly thru CygWin (wud B betr 2 ck &OSTYPE or smthng instd of just &term abov)
  se   t_kb=
" BlO not sure if mAB some Chun's console ssh 2 Aku mulTplXing scrn term 2 share vim edit sSion ruins blok cursor somehow? mIt nEd literal Ctrl-v or <C-v> BlO?
" se   t_kD=^v<Delete>
" BlO since Taki's old CygWin Vim bkspc mkz ^? thru xterm ssh connection, fixdel switches t_kb && t_kD from ^? && ^H to <Del> but I want <BS> =(
" fix
en
" if literal <C-m> at the end below gets filtered out, might need to `v .bak/.vimrc-D8JMEEjh .vimrc` to yank line 45 there && restore here   orApNd C-v <CR>;
" BlO setz the cursor to be included in visual selections even if it can't be invis && here's a \n <CR> <C-m> char for when literal needed: 
se   t_cv=
se   t_ci=
" BlO set these variables to empty to stop vim from restoring the screen after exit to the way it was before invok8ion (but usually I do want rEstor at Xit)
"se  t_ti= t_te=
" BlO set isfname, isident, iskeyword (vi-dflt-just:"@,48-57,_"), && isprint  ... or betr 2du insIde syn fIlz :sy(ntax)? iskeyword @,48-57,.,_,192-255,$,-,+
"se   isf="@,48-57,/,.,-,_,+,,,#,$,%,~,="
"se   isi="@,48-57,_,192-255"
"se   isk="@,48-57,_,192-255,^:"
"se   isp="@,161-255"
" BlO set display flags 2 Either lastline or truncate && .=",uhex" 2 shO unprintabl charz hex as <xx> nstd of Using ^C && ~C (!sure wich I shud lIk betr yet?);
"se    dy="truncate"  " set fcs fillchars l8r in SetStatusLineStyle() to chng what char (dflt:'@') is displayed by lastline or trunc8;
" BlO use locl English SpelCkr4ASCII,Latin1,UTF-8 encodingz, try :help spell 4detailz; setup SpelCkr lang then turn off by default;
if   has('spell')
  setl    spell spelllang=en
  setl  nospell
en
"(([clisnoxv](un)?|un)m|map) cmdln,[ci],insrt-only,sele,norm,oper-pendng,visual,[sv] modes wi <(C|S|[AM])- for Ctrl,Shft,&&(Alt==Meta)    map  == all([nov])map
" preceding mapped key wi <silent> tells Vim not to print msg when running cmd    exception sm==smagic (substitution) so use smap         map! == all( [ci])map
" 2du:fix C-f 24m@ AgN BlO && stuD wich othr Ctrl cmdz(||regUlRz lIk'E')mItBcurNtly lEstUzd,nXt bSt 1z 2 rEmap wNnEded,try<Alt-*>kEz,add $ENV{'COLUMNS'}2<C-f>,
"   lern about g:mapleader && <Leader> (Dflt \ <Bslash>) 4mor mOdez 2 map && tSt all the Ctrl-Shft-V Ctrl-v stuf2Ntr literal kEcOdz in plAcz&&how2C-a in`scrn`,
"   alsO stuD <LocalLeader> && <SID> special keyz 2 mk custom mapz just within bufrz of pRtiQlR fIltypz or insId of scriptz th@ wud bNefit from tRgetd mapingz;
" nOt:cannot put dblquOt comNtz aftr mapz Bcuz itz considrd pRt of {lhs} or {rhs} but canUz q(|<DblquOt>) sinc pIp|bR stRtz new MpT cmnd th@ canBjustAcmNt thN;
"nmap   <Leader>n     :se nu!<CR>:se rnu!<CR>
" HTTPS://GitHub.Com/SDaschner/dotfiles/.vimrc had the following:
let    mapleader      = "\<Space>"
" my Shift-Enter duzn't work! =(
nmap     <S-Enter>  O<Esc>
nmap     <CR>       o<Esc>
"inoremap <Up>        <C-y>
"inoremap <Down>      <C-e>
"inoremap <Left>      <Nop>
"inoremap <Right>     <Nop>
" noremap <Up>        <C-y>
" noremap <Down>      <C-e>
" presentation mode ; it Cmz lIk thEz arOw mapz probly mSdup my C-k U2b URL pAstng sO tryng 2 fix... ;
" noremap <Left>     :sil bp<CR>:redraw!<CR>
" noremap <Right>    :sil bn<CR>:redraw!<CR>
nmap     <F2>       :call DisplayPresentationBoundaries()<CR>
nmap     <F3>       :call FindExecuteCommand()<CR>
nmap     <F5>       :se  rnu! nu! showmode! showcmd! hidden! ruler!<CR>
nn       <Esc>      :se  rnu! nu! showmode! showcmd! hidden! ruler!<CR><Esc>
" O1LLKYZF:whN editng ~/lib/Octology/f8/pal8/* or run f8p or lspal8 to see or run `v $Hpal` SpeCally, thN mk vim syntax fIl && map mAB F8 2 :w<CR>:!%<CR>
nmap     <F8>       :w<CR>:!%<CR>
"   but mAB abov can B betr done by just seting whatevr XeQtable compIler Util in Vim or whatever to run self % instead of x on % && Uz Dfalt mapz 4 th@?;
" jump to slides
nmap     <F9>       :call Jump2FirstBufr()<CR>:redraw!<CR>
nmap     <F10>      :call Jump22LastBufr()<CR>:redraw!<CR>
nmap     <F11>      :call JumpToLastBufr()<CR>:redraw!<CR>
" move lines with Ctrl + (Shift) +J/K ; my ~/dox/2du/know.ls rElyz on normal-mode Ctrl-k for pAstng U2b URLz && insert-mode C-k inputz my UTF-8 digraphz 4 now;
" 2du:what were all thEz Ctrl-j BhAviorz B4? maybe just mapping Ctrl-j to another Esc is a good idea (esp. if Esc far on non-HHKB) && map CapsLock 2gudUsetoo!;
nnoremap <C-j>      :m   +1<CR>
"nnoremap <C-k>      :m   -2<CR>
inoremap <C-j> <Esc>:m   +1<CR>gi
"inoremap <C-k> <Esc>:m   -2<CR>gi
vnoremap <C-j>      :m '>+1<CR>gvgv
vnoremap <C-k>      :m '<-2<CR>gvgv
" opens a new empty buffer
nmap     <Leader>t  :enew<CR>
" moves to the next buffer
nmap     <Leader>l  :bnext<CR>
" moves to the previous buffer
nmap     <Leader>h  :bprev<CR>
" closes the current buffer, moves to the previous one
nmap     <Leader>bd :bd<CR>
" forces buffer close
nmap     <Leader>BD :bd!<CR>
" shows all open buffers and their status
nmap     <Leader>bl :ls<CR>
" " toggles the paste mode
" nmap     <C-p>      :set paste!<CR>
" " toggles word wrap
" nmap     <C-w>      :set wrap! linebreak<CR>
" " toggles spell checking
" nmap     <C-]>      :set spell! spelllang=en_us<CR>
" " opens the last buffer
" nnoremap <Leader><Leader> <C-^>
" " adds a line of <
" nmap     <Leader>a  :normal 20i<<CR>
" " makes Ascii art font
" nmap     <Leader>F  :.!toilet -w 200 -f standard<CR>
" nmap     <Leader>f  :.!toilet -w 200 -f small<CR>
" " makes Ascii border
" nmap     <Leader>1  :.!toilet -w 200 -f term -F border<CR>
" " capitalize titles
" nmap     <Leader>c  :.!capitalize-title -<CR>
" vnoremap <Leader>c  :.!capitalize-title -<CR>
" cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <Bar> edit!
" " system clipboard
" vmap     <Leader>y  "+y
" vmap     <Leader>d  "+d
" nmap     <Leader>y  "+yy
" nmap     <Leader>p  "+p
" nmap     <Leader>P  "+P
" vmap     <Leader>p  "+p
" vmap     <Leader>P  "+P
" nmap     <Leader>d  <C-d>
" nmap     <Leader>u  <C-u>
" vmap     <Leader>d  <C-d>
" vmap     <Leader>u  <C-u>
" " file operations
" nmap     <C-s>      :w<CR>
" nmap     <C-q>      :q<CR>
" let &t_ti.="\e[1 q"
" let &t_SI.="\e[5 q"
" let &t_EI.="\e[1 q"
" let &t_te.="\e[0 q"
" " search highlighting color
" highlight Search  ctermfg=grey ctermbg=red
" highlight Macro   ctermfg=cyan
" highlight Special ctermfg=red
" " removes search highlighting
" nnoremap <silent> <C-l>  :nohl<CR><C-l>
" " execute command
" nmap     <Leader><Enter> !!zsh<CR>
" " AsciiDoc preview
" nmap     <Leader>v       :w !asciidoc-view -<CR><CR>
fu! Jump2FirstBufr()
  exe "buffer 1"
endf
fu! Jump22LastBufr()
  exe "buffer " . (len(Bufz()) - 1)
endf
fu! JumpToLastBufr()
  exe "buffer " .  len(Bufz())
endf
fu!                    Bufz()
  let  l:bufz = filter(range(1, bufnr('$')), 'bufexists(v:val)')
  retu l:bufz
endf " nEd return 4 syn hIlIt (just retu !Enuf?)
" Dflt Vim: ^a incremNtz && ^x decremNtz nXt numbr on lIn,&& ^b Backprevpgup is tmux lEdr kE wIl ^a izDflt lEdr kE 4 scrn&&I'd lIk2BAbl2UzbOth&&Zellij if gud2;
""map     F  !G perl -MText::Autoformat -e'$t=join(q(),<STDIN>);$t=autoformat($t,{squeeze=>0 origBlO152});print $t'<CR>  " keep F finding char on line backward
" was hRdcOded 158 co(lumnz) but tryd 2du math on &co or winwidth('%') thN join bak in2 T::AF cmnd... but just tryng2 rEad %ENV Cmz 2 work fIn nstd;
nmap   <C-f> !G perl -MText::Autoformat -E'$c=$ENV{q(COLUMNS)}//160;$c-=2;$t=join(q(),<STDIN>);$t=autoformat($t,{squeeze=>0,right=>$c});print $t'<CR>
"         gqq  is probably lIk AF abov on blank-lIn sepR8d paragraphz, g0 g$ gj gk navig8 long lInz, gu gU g~ 2 lc UC ToglCase, gf OpNz fIl undr cursor ^ bak?;
"         gv   rEsLectz Visually chOsN tXt, gJ Joinz lInz wiot spAcez, g& rErunz prEv :s/pattern/rplcmnt/  cmnd on whol doQmNt (lIk if rErun :%s/... ),  :h g ;
"         gf   opNz-file-undr-cursor, gx opNz-URL-undr-cursor? duzn't Cm 2 work; O3IMAPNO:X cutz B4 (lFtof) cursor wi <Del> && x cutng rIt undr cursor no clip?
 nn       X  "_X
"nn       x  "_x  " I stil want my old mor familiR singl x cut to yank into default unnamed buffer since x p is ingrained but ^H <Del> can not yank instead;
 nn    <Del> "_x
" 2du:mAB mk B && U tSt 1st if bufr modifId B4 SetngSt8usLnStyl, wrItng, bakng, && upd8ng ... so just du regUlR B && U BhAviorz wN unmodifId wud problyB betr?;
"  :if getbufinfo('%')[0].changed<CR>ec 'Modified'<CR>el<CR>ec 'NotMod'<CR>en<CR>  ... see :h getbufinfo wich alwayz retnz list of dictz && wuz suggestd on:
"    HTTPS://Vi.StackExchange.Com/questions/25746/vimscript-how-to-check-if-a-buffer-is-modified aftr getbufvar(bufndxnr, '&mod') wich mA nEd <amatch> !'%' ?;
"" Normal-mode Noremap C-b ('Back' PgUp) to original B Back word (as opposite of W)   " HTTP://Vim.Wikia.Com/wiki/Mapping_fast_keycodes_in_terminal_Vim 4C-S-b?
"nn    <C-b> B
""        B sAvz && Bakzup curNt EditFile    " above mapz fmt over Ctrl-Forward FullPageDown since I use C-d && C-u HalfPage mainly && want F to find backward
 nn       B  :sil if getbufinfo('%')[0].changed<CR>call SetStatusLineStyle()<CR>w!<CR>!bak '%'<CR>en<CR>B
""        U bakz && Upd8s  curNt EditFile in2 local ~/(lib|bin)/       " map ovrIdz Undo all changez to line since cursor moved into it (wich I don't use much)
 nn       U  :sil if getbufinfo('%')[0].changed<CR>call SetStatusLineStyle()<CR>w!<CR>!bak '%'<CR>en<CR>:!upd8 '%'<CR>
"nn       U  :call SetStatusLineStyle()<CR>:w!<CR>:!bak '%'<CR><CR>:!upd8 '%'<CR>   # set shellcmdflag to '-ic' 4 interactive shell using aliasez;
" mA try :sil(ent)[!] !bak '%' 2!nEd dbl<CR> but mA nEd Ctrl-L or :redraw! 2B upd8d aftr output from silent command;
" NCBLENDS:rEplAcd abov old just 'map' 4 B && U wi 'nn' 4 just NormNoremap sinc I want 'vU' 2 Visualmode Uppercase, !upd8... && mAB 'vB' can VselectBackword2?;
" AmiChai_MantinBand's 'Vim ShortCuts Keep Getting Crazier' on U2b V-selectd sevral lInz,thN did ':norm fhvU<CR>' 2fInd lOwrKse h on Ech lIn&&vU(prKs) thM all;
" 2du:rErEd all :h map AgN Bcuz therz gud infO on getng Alt/Meta kEyz 2@lEst !sNd justSKp in XTerm&&RXVT (but mABcan't hLpGnomTerm)sO mor cOdz canBDtectd&&Uzd;
" many Vim hackers map just 'jj' && 'kk' as quick convenient Escapes out of Insert mode && auto-write. Also Ctrl-[ && Alt-h or Alt-l (4jmpz2 scrn line H && L):
 inoremap <C-l>    <Esc>:se list!<CR><C-l>
 inoremap    ZZ    <Esc>:w<CR>
""noremap    JJ    <Esc>   " since insert-mode mappings delay uses of initial key && Jjk; are common enough to annoy when slowed,mine writes on rare ZZ instead
" Ctrl-i Indent <Tab> && hopefully Shft-Tab 2 cycle my color schemez, but would probably make a gr8 <Leader> key for all sortz of othr stuf I mIt want2add l8r;
"nmap     <C-I>    :call Rot8ColorScBkWd()<CR>  # I can't get Shift-Tab or Ctrl-Shft-I to work yet, but mAB regUlR Tab Ctrl-i alreD cyclz fIl jumpz wi Ctrl-o?;
"nmap     <C-i>    :call Rot8ColorScheme()<CR>  # Yeah, Tab is 4wRd in jump-list && Ctrl-o gOez Older; BlO dbl-mapd Shift-E && Ctrl-e 2du normal oper8nz&&cycl;
 nn       <C-e>    :call Rot8ColorScBkWd()<CR><C-e>
 nn       E        :call Rot8ColorScheme()<CR>E
""map     E  JJj   " old map to quickly single-space dbl-spcd linez    ; If you f<char> then ; && , will repeat the find (or Til) fwd && bak on the currentline
""map     E  A:<Esc>JJj                                                " was briefly used to join up many distinct transl8ion descriptions with their quot8ions
""        t insertz  `d8`  curNt date-time stamp (used 2 B PipTime)    " T below was orig like f<char> (find4wrd on curline) but srchng T<char> (unTil bakwrdz)
 map      t  :call SetStatusLineStyle()<CR>i<CR><Esc>k:r!d8<CR>k$:j!<CR>gJ
"         T  upd8s   `d8`  in 1st d8VS='EBQLN3PS' lIn (shud B sAvng ai && ic,seting thM,rEplAcing d8,thN rEstOring thM) migr8d to a function now defined below
"map      T  :call SetStatusLineStyle()                      <CR>:0<CR>/d8VS=<CR>6lcw<CR><Esc>k:r!d8<CR>k$:j!<CR>Jx8h
"map      T  :call SetStatusLineStyle()<CR>:se noai<CR>:se ic<CR>:0<CR>/d8VS=<CR>6lcw<CR><Esc>k:r!d8<CR>k$:j!<CR>Jx8h:se ai<CR>
"map      T  :call SetStatusLineStyle()<CR>:if &ai<CR>let g:vcai=1<CR>el<CR>let g:vcai=0<CR>en<CR><CR>:se noai<CR>:if &ic<CR>let g:vcic=1<CR>el<CR>let g:vcic=0<CR>en<CR><CR>:se ic<CR>:if getline('.') !~ 'd8VS'<CR>kt<CR>en<CR><CR>:call setpos('.',[0,1,1,0])<CR>/d8VS=<CR>6lcw<CR><Esc>k:r!d8<CR>k$:j!<CR>Jx8h:if g:vcai<CR>se ai<CR>el<CR>se noai<CR>en<CR><CR>:if getline('.') !~ 'd8VS'<CR>echo \"'t"<CR>en<CR><CR>:if g:vcic<CR>se ic<CR>el<CR>se noic<CR>en<CR><CR>
 map      T  :keepj     call Upd8VerS()<CR>
" above command mode kt should set the mark similar to normal mode mt && ':ma(rk)? t' would also work with the space between
"       gqvKV#*\= might be unbounds (but goto, q?, visual, K?, Visual, comment #, *?, \?, =?)
"       C-ACKOVWX might be unbounds (but screen A, break C, spellchecK below, O does some awesome back thru files jumping, Visual, W has some submenu, X?);
"       C-t key inserts `d8g` into both XOrg Primary && Clipboard buffers (EvN thO d8g already wrapz xclip 2 set Primary selection buffer itself)
""map  <C-t> :call SetStatusLineStyle()<CR>:       r!d8g    <CR>"+YVD
"       C-n should detect multi-window && du next C-w window like in vimdiff instead of just separ8 full bufferz (IDly cycl thru all wndwz of Ech bufr nXt lup)
nmap   <C-n> :call SetStatusLineStyle()<CR>:bn       <CR>
""          should proly ck winnr('$') but &stl doesn't sEm Abl2shO mor than 1    " Buffer Next above, Prev below
nmap   <C-p> :call SetStatusLineStyle()<CR>:bp       <CR>
"       C-p && C-n in insert-mode bringz up && navig8z opposite directionz in match menu for pRtially typed wordz;
"       C-i Dfalt Indent<Tab> was togl IgnoreCase but sAmazTab,C-h DfaltBackSpace<BS> rathr togl HighLightSearch,C-l Dfalt refresh screen still done after togl
""map  <C-i>                               :se    ic!<CR> " C-i && C-m indistnct frm Tab&&CR but C-h&&BkSpc work sepR8ly in Normal mode (but not Insert)
" I6PM7Cw8:temporarily sidelined Ctrl-H HiLightSearch togl wi curs bold for descriptive YouTu.be U2b URL squirter (mAB mvd below); nOt: not!sAm az <BS>!;
 nn    <C-h>                               :se   hls!<CR><C-h>
 nn    <C-l> :call ToglCursorLineBold()<CR>:se  list!<CR><C-l>
""imap <C-k>                         <Esc>u:se spell!<CR> " origmapd insrtmOd Ctrl-k was autOundo4unintNded nrml insrt&&togl spLck butbetr consistNt now
""imap <C-k>  " hopefully unmap to gain access to vim digraphs for Unicode composition; 4 BlO shud B Abl 2 <C-r><C-p>+ or * from Insrt mOd if dblquOt duz!work;
nmap   <C-k> :r!d8<CR>A:HTTPS://YouTu.be/ "" # O3P:0Fs0 of ;<Esc>19<Left>"+pf"a
" I71M6Ck8:just realized need Ctrl-w to jump Windows when doing vimdiff, so reapproprE8d C-k for spell-checKer toggle above && remapped to U2b with loop here;
" I72M7Ck8:add Insert-mode map of 2nd Ctrl-k to undo back out (16<L>31x) of an unpopul8d Normal-mode inserting of U2b templ8, also toggling spell-checK flag;
""let g:U2bL='HTTPS://YouTu.be/ \"" # d8:18m;' " hopefully try to just insert U2b URL templ8 variable string below instead of leaving literal, not sure how2?
""nmap <C-k> :i g:U2bL<CR>12<Left>i            " not yet sure how to colon command insert a particular global variable at cursor before adjusting auto-insert
" I88M4Ck8:initial glances through Google suggest Ctrl-k is mainly an Emacs or Gnome shortcut for deleting from cursor to end-of-line, like vim 'D' probably;
" I88M4PIE:initial glances through Go─hhogle && interestingly disabling imap C-k above && trying in insert-mode gives dark '?' then hjkl? seemed to do lines.
"   study && carefully experiment with originally available C-k behaviors && contempl8 best places to reloc8 spell-checK && U2b desKription Komponent KrE8or.
"   Also may want to remember to explore ASCII x0B for probably name && Ctrl-k mapping && maybe some other sequences, or maybe concealed somewhat deliber8ly;
" I88M6crm:ftst had 2 old notes of C-k being Vertical-Tab so apparently a somewhat weird, inconsistent, usually remappable, possibly potent, etc. capability;
"map   <C-m>                               :if &mouse != 'a'<CR>se mouse=a<CR>el<CR>se mouse= <CR>en<CR><CR>
" above toglz List (show \t&&\n,keep stndRd scrn redraw wi nnoremap),checK spelling,C-m Dfalt <CR> tried togl mouse but probz ensue when shelling out
""map <S-F12> :call SetStatusLineStyle()<CR>:if &mouse != 'a'<CR>se mouse=a<CR>el<CR>se mouse= <CR>en<CR><CR> " MyUbuntu trapz S-F12 4 VolumeUp B4 vim getzit
"map   <F12>                               :se paste!<CR>
""mapng MiddleMouse only works if mouse=a so that vim's mapping is applied instead of wichever of XOrg,FluxBox,or GPM; can just C-S-v in nrml mOd 4 "+p
""map  <MiddleMouse>                       :se paste <CR>"*p:se nopaste<CR>
" nOt: mA stil want 2 map other mouse=a butnz 2 BhAv more similRly 2 mouse= ; BlO pt == pastetoggle;
 se pt=<F12>
"map   <F12> :call InvertPasteAndMouse()<CR>
"(snor(emap)?|[cio]?no(remap)?|[lnxv]n(oremap)?|no(remap)?!) $LftHndSide $RitHndSide disallows mapping of $RHS to avoid nested && recursive maps or redef a cmd
" Visual mode p to replace selected text with unnamed "" register containing text of l8st yank or delete. gv reselects previous Visual area, d deletes it,
"   then i enters insert mode. The vnoremap <C-r> inserts named register contents (instead of Redo). Following '=' is expression register for List result.
""vn  p <Esc>:let current_reg = @"<CR>gvdi<C-r>=current_reg<CR><Esc>
"[clisnoxv]?ab(brev)? || [clisnoxv]?una(bbrev)? $abrv, :abc for all ab clear
""cab p perldo  " BlO should Format Wider from cmnd-mode after some Vis-mode selection chose lines (like Ctrl-f map on non-Vis-mode cursor paragraph above)
cab fw !fmt -w159
""  '" jumps to last open position in file  ... This was in my .zshrc e() before moving into Pip::Utl::e().
"   '. jumps to last edit position in file
" BlO add detection of my custom .Xresources file extension (instd of appending modeline '! vim:syntax=xdefaults')
au   BufNewFile,BufRead *.Xrc setf xdefaults
"sy(n(tax)?)? (on|off|sync fromstart)
if !has('nvim')
" BlO automatically turns basic `filet on` for type detection (N7KMNVts:but wanting to use tree-sitter 4 nvim instead of regular);
  sy   on
  sy   sync fromstart
" BlO colorscheme list output from normal-mode by typing ':colo Ctrl-d' like `ls /usr/share/vim/vim*/colors|grp .vim`   # blue darkblue default delek desert …
""colo default    " … elflord evening habamax industry inkpot koehler lunaperche morning murphy pablo peachpuff quiet ron shine slate solarized torte zellner;
" above 'colo default' would need to be followed by 'se bg=dark' since the default.vim file resets background presumably to light
"   HTTPS://LinuxHandBook.Com/vim-color-schemes has HTTPS://GitHub.Com/ChrisKempson/base16-vim && HTTPS://VimColorSchemes.Com for additional ColorSchemes
  colo df
en
se   bg=dark            " commented out setting of background above so this one can follow any potential colorscheme setting
" [c]?term={attr-list} can be comma-sepR8d:bold underline undercurl strikethrough reverse italic standout nocombine NONE;
"`grep -c cterm /usr/share/vim/vim81/colors/*.vim` sorted by count output:
"   41     slate.vim;   34      blue.vim;   33     delek.vim;   31   morning.vim;   13   elflord.vim;   10  industry.vim;
"   37  darkblue.vim;   34 peachpuff.vim;   32   koehler.vim;   25    murphy.vim;   13   zellner.vim;    2       ron.vim;
"   36    desert.vim;   34     shine.vim;   31   evening.vim;   14     torte.vim;   12     pablo.vim;    0   default.vim;
"":so /usr/share/vim/vim81/syntax/hitest.vim " opened the following colored by group:
" Highlighting groups for various occasions:
"   SpecialKey        ModeMsg           Title             DiffChange        SpellRare         TabLineSel
"   NonText           LineNr            Visual            DiffDelete        SpellLocal        TabLineFill
"   Directory         CursorLineNr      WarningMsg        DiffText          Pmenu             CursorColumn
"   ErrorMsg          Question          WildMenu          SignColumn        PmenuSel          CursorLine
"   IncSearch         StatusLine        Folded            Conceal           PmenuSbar         ColorColumn
"   Search            StatusLineNC      FoldColumn        SpellBad          PmenuThumb        StatusLineTerm
"   MoreMsg           VertSplit         DiffAdd           SpellCap          TabLine           StatusLineTermNC
" Syntax highlighting groups:
"   MatchParen        Constant          PreProc           Error             User3             User7              GTF_LOOKAHEAD
"   ToolbarLine       Special           Type              Todo              User4             User8              GTF_NEW
"   ToolbarButton     Identifier        Underlined        User1             User5             User9              GTF_CURSOR
"   Comment           Statement         Ignore            User2             User6             GTF_CANCELLED
fu!        Rot8ColorScheme()
  if exists("g:colors_name")
    if       g:colors_name ==# 'df'  " my default (hRdly anythng set ByondDflt)
      colo                      dk
    elsei    g:colors_name ==# 'dk'  " my dark (almOst sAm az df but colrzRset)
      colo                      dc
    elsei    g:colors_name ==# 'dc'  " my deep Custom Colrz
      colo                      dd
    elsei    g:colors_name ==# 'dd'  " my different dark definitionz
      colo                      inkpot
      let    g:inkpot_black_background = 1
    elsei    g:colors_name ==# 'inkpot'  " 2du:mAB furthr rEordr all folOing colr skEmz 4 gruping similR intNsiTz, contrastz,&& colr-stylz 2gethr thN rvrs BlO;
      colo                      solarized
    elsei    g:colors_name ==# 'solarized'
      colo                      darkblue
    elsei    g:colors_name ==# 'darkblue'
      colo                      desert
    elsei    g:colors_name ==# 'desert'
      colo                      elflord
    elsei    g:colors_name ==# 'elflord'
      colo                      evening
    elsei    g:colors_name ==# 'evening'
      colo                      habamax
    elsei    g:colors_name ==# 'habamax'
      colo                      industry
    elsei    g:colors_name ==# 'industry'
      colo                      koehler
    elsei    g:colors_name ==# 'koehler'
      colo                      lunaperche
    elsei    g:colors_name ==# 'lunaperche'
      colo                      murphy
    elsei    g:colors_name ==# 'murphy'
      colo                      pablo
    elsei    g:colors_name ==# 'pablo'
      colo                      quiet
    elsei    g:colors_name ==# 'quiet'
      colo                      ron
    elsei    g:colors_name ==# 'ron'
      colo                      slate
    elsei    g:colors_name ==# 'slate'
      colo                      torte
"   elsei    g:colors_name ==# 'torte'
"     colo                      blue
"   elsei    g:colors_name ==# 'blue'     # blue bkgrnd is too brIte (but duzn't break);  shine && zellner break lIk delek && othr lIt thEmz gatherd @botm;
"     colo                      default
"                               default.vim unlets g:colors_name to no longer exist so I just let it to default so I can rely on testing it
"     se       bg=dark
"     let    g:colors_name =   'default'
"   elsei    g:colors_name ==# 'default'
"     colo                      delek
"   elsei    g:colors_name ==# 'delek'    # delek, morning, && peachpuff R brOkN probly Bcuz they're lIght thEmz && setng bg=dark aftr unsetz colors_name?;
"     colo                      morning
"   elsei    g:colors_name ==# 'morning'
"     colo                      peachpuff
"   elsei    g:colors_name ==# 'peachpuff'
"     colo                      shine
"   elsei    g:colors_name ==# 'shine'
"     colo                      zellner
    el
      colo                      df
    en
  el
    colo                        df
  en
  se           bg=dark
  call SetStatusLineStyle() | redraw | ec 'colo ' g:colors_name
endf
fu!        Rot8ColorScBkWd() " mAB wud B betr 2 put all colr skEmz I want 2 rOt8 thru in2 an @array-list && index thM wi pRamz 4wRdz||bakwRdz nstdof by nAm?
  if exists("g:colors_name") " Bcuz thEz funcz nEd 2 B kept in sync 4 wutevr rOt8ionz I DcId 2 kEp in, wich iz hassle;
    if       g:colors_name ==# 'df'
      colo                      darkblue
    elsei    g:colors_name ==# 'darkblue'
      colo                      solarized
    elsei    g:colors_name ==# 'solarized'
      colo                      inkpot
      let    g:inkpot_black_background = 1
    elsei    g:colors_name ==# 'inkpot'
      colo                      dd
    elsei    g:colors_name ==# 'dd'
      colo                      dc
    elsei    g:colors_name ==# 'dc'
      colo                      dk
    elsei    g:colors_name ==# 'dk'
"     colo                      zellner
"   el
      colo                      df
    en
  el
    colo                        df
  en
  se           bg=dark
  call SetStatusLineStyle() | redraw | ec 'colo ' g:colors_name
endf
" insert-mode Ctrl-k composes tons of Unicode from digraphs, and more added here from HTTPS://VimHelp.Org/ft_raku.txt.html
"  :dig!  showz curNtly DfInd dIgrafz wi hedrz 4 EZer fInding of spSific char, thN  :exe 'dig += ' .. 0x2A72  shud let hX;
"  B ­ 173 xAD soft-hyphN?  B <BS> B 4m didn't work 4 brOkN-pIp '|' char (166) or a <BS> '>' 4 'a'+circumflex (226);
"  ¦â  C-k 4mz work; nO <BS> 4m as 2 anoying; 2du:c@alog all Dfalt && Xtra dIgrafz as pRt of doQmNting utf8 gr8ly && mapng
"    old ASCII NcOdingz && latin1 ISO-8859-1 in2 Unicode can hLp DscrIb how old 256 .f0nt can fill .psfu d8a smRtly combIn-gNr8 pix-mapz; :h digraphs-default
exec     'digraph \\ '  ..  char2nr('∖')
exec     'digraph \< '  ..  char2nr('≼')
exec     'digraph \> '  ..  char2nr('≽')
exec     'digraph (L '  ..  char2nr('⊈')
exec     'digraph )L '  ..  char2nr('⊉')
exec     'digraph (/ '  ..  char2nr('⊄')
exec     'digraph )/ '  ..  char2nr('⊅')
exec     'digraph )/ '  ..  char2nr('⊅')
exec     'digraph U+ '  ..  char2nr('⊎')
exec     'digraph 0- '  ..  char2nr('⊖')
" Euler's constant (N8ural-logarithm-E):
exec     'digraph ne '  ..  char2nr('𝑒')
"  Raku's atomic oper8ions-marker:
exec     'digraph @@ '  ..  char2nr('⚛')
" Altern8ively, you can write Insert mode abbreV8ions that convert ASCII-based oper8ors into their single-character UniCode equivalent. Extended annoying ones:
iabbrev  <buffer> !(<)               ⊄
iabbrev  <buffer> !(<=)              ⊈
iabbrev  <buffer> !(>)               ⊅
iabbrev  <buffer> !(>=)              ⊉
iabbrev  <buffer> !(cont)            ∌
iabbrev  <buffer> !(elem)            ∉
"iabbrev <buffer> !=                 ≠
iabbrev  <buffer> !=/                ≠
iabbrev  <buffer> (&)                ∩
iabbrev  <buffer> (+)                ⊎
iabbrev  <buffer> (-)                ∖
iabbrev  <buffer> (.)                ⊍
iabbrev  <buffer> (<)                ⊂
iabbrev  <buffer> (<+)               ≼
iabbrev  <buffer> (<=)               ⊆
iabbrev  <buffer> (>)                ⊃
iabbrev  <buffer> (>+)               ≽
iabbrev  <buffer> (>=)               ⊇
iabbrev  <buffer> (\|)               ∪
iabbrev  <buffer> (^)                ⊖
iabbrev  <buffer> (atomic)           ⚛
iabbrev  <buffer> (cont)             ∋
iabbrev  <buffer> (elem)             ∈
"iabbrev <buffer> *                  ×
"iabbrev <buffer> **0                ⁰
"iabbrev <buffer> **1                ¹
"iabbrev <buffer> **2                ²
"iabbrev <buffer> **3                ³
"iabbrev <buffer> **4                ⁴
"iabbrev <buffer> **5                ⁵
"iabbrev <buffer> **6                ⁶
"iabbrev <buffer> **7                ⁷
"iabbrev <buffer> **8                ⁸
"iabbrev <buffer> **9                ⁹
iabbrev  <buffer> *x*                ×
iabbrev  <buffer> ***0               ⁰
iabbrev  <buffer> ***1               ¹
iabbrev  <buffer> ***2               ²
iabbrev  <buffer> ***3               ³
iabbrev  <buffer> ***4               ⁴
iabbrev  <buffer> ***5               ⁵
iabbrev  <buffer> ***6               ⁶
iabbrev  <buffer> ***7               ⁷
iabbrev  <buffer> ***8               ⁸
iabbrev  <buffer> ***9               ⁹
"iabbrev <buffer> ...                …
iabbrev  <buffer> ....               …
iabbrev  <buffer> %/%                ÷
"iabbrev <buffer>  /                 ÷
"iabbrev <buffer> <<                 «
iabbrev  <buffer> <<<                «
iabbrev  <buffer> <<[=]<<           «=«
iabbrev  <buffer> <<[=]>>           «=»
iabbrev  <buffer> >>>                »
"iabbrev <buffer> >>                 »
"iabbrev <buffer> <=                 ≤
iabbrev  <buffer> =<=                ≤
iabbrev  <buffer> =~=                ≅
iabbrev  <buffer> =>=                ≥
"iabbrev <buffer> >=                 ≥
iabbrev  <buffer> >>[=]<<           »=«
iabbrev  <buffer> >>[=]>>           »=»
iabbrev  <buffer> Inf                ∞
"iabbrev <buffer> atomic-fetch       ⚛
"iabbrev <buffer> atomic-assign      ⚛=
"iabbrev <buffer> atomic-add-fetch   ⚛+=
"iabbrev <buffer> atomic-sub-fetch   ⚛−=
"iabbrev <buffer> atomic-fetch-inc   ⚛++
"iabbrev <buffer> atomic-fetch-dec   ⚛--
"iabbrev <buffer> atomic-inc-fetch ++⚛
"iabbrev <buffer> atomic-dec-fetch --⚛
iabbrev  <buffer> atmfet             ⚛
iabbrev  <buffer> atmasn             ⚛=
iabbrev  <buffer> atmaddfet          ⚛+=
iabbrev  <buffer> atmsubfet          ⚛−=
iabbrev  <buffer> atmfetinc          ⚛++
iabbrev  <buffer> atmfetdec          ⚛--
iabbrev  <buffer> atmincfet        ++⚛
iabbrev  <buffer> atmdecfet        --⚛
iabbrev  <buffer> o0o                ∘
"iabbrev <buffer> o                  ∘
"iabbrev <buffer> e                  𝑒
iabbrev  <buffer> eul                𝑒
iabbrev  <buffer> pi                 π
iabbrev  <buffer> set()              ∅
iabbrev  <buffer> tau                τ
fu! NrBufz() " from HTTP://SuperUser.Com/questions/345520/vim-number-of-total-buffers countz just listed ':ls' bufrz with wh(ile) && endw(hile)
  let     i  = bufnr(  '$')
  let     j  = 0
  wh      i >= 1
    if         buflisted(i)
      let j += 1
    en
    let   i -= 1
  endw
  retu    j
endf
if   has('autocmd')
 "filet(ype)? (plugin)? on    " plugin on autO-NAblz both regUlR filet Dtection && plugin lOding
  filet plugin off            " on is probably Useful as I had it B4 but it activ8s some indNting rulz wich messup T map && I dOn't knO how2tmp disAbl yet
  filet indent off            " indent on was recomNded by `emerge fluxbox-syntax` on gN2 Ryu long ago but T in .zshrc doesn't work4 plugin on,indent off =(
" se   grepprg=grep\ -nH\ $*  " uncomNt this lIn 2 Use latexSuite plugin
  if   !exists("autocmdz_loaded")
   "au   ... " from :h au(tocmd)<CR>:Itza good idea2hv 'au!' 2undef allB4NEautocmdzRDfynd in .vimrc || Uz this _loaded flag2avoid dupd defz wen srcd multitymz
    let         autocmdz_loaded=1
  en
en
se cul  " cursorline          " setz hIlIting on the whole cursor line(row) && column BlO but I vaguely recall having 2 ck lIk if has('color') smthng B4?
se cuc  " cursorcolumn        " mAB thEz optz used to slO editing down too much, but they no longer seem so bad && just the bg blue is generally gentle
hi        CursorLine             cterm=bold        ctermbg=DarkBlue
hi        CursorColumn           cterm=bold,italic ctermbg=Black
hi        MatchParen             cterm=bold        ctermbg=DarkCyan ctermfg=White
if    has('statusline')       " custom statusline display detail: (tweakd colrz 2 look betr without rEverse); 2du:stuD vim 256colr spex for hopfuly boldng all
" if !has('nvim')
    se    fcs=stlnc:~  ",vert:\|,diff:-,eob:~,lastline:@
" en
  " set fillchars 4difrNt mOdz (nEd bkslshSKp4 stl:\ ,vert:\| &&assuming4 \> but!4 diff:-,eob:~ && +@?);
            " stl       ' '  statusline of     current window     \" fold      '-'  filling            'foldtext'
            " stlnc     ' '  statusline of non-current windows    \" foldopen  '-'  mark beginning of a fold      \" 4: stl,stlnc,foldopen,foldclose,&&foldsep
            " diff      '-'  deleted  lines of  'diff' option     \" foldclose '+'  show       a closed fold      \"  singl&&multi-byte chars are supported...
            " vert      '|'  vertical sepR8ors :vsplit            \" foldsep   '|'  open                fold middle char \" ...(but not double-width chars)! ;
            " eob       '~'  empty    lines below end of buffer   \" lastline  '@'  'display' contains lastline/truncate
  " %f                                                 file path
  " %y                                                 file type between braces (if defined)
  " %([%R%M]%)                                         read-only, modified and modifiable flags between braces
  " %{'!'[&ff==#'default_file_format']}                shows a '!' if the file format is not the platform default
  " %{'$'[!&list]}                                     shows a '$' if in list mode
  " %{'~'[&pm==#'']}                                   shows a '~' if in patchmode
  " (%{synIDattr(synID(line('.'),col('.'),0),'name')}) only for debug : display the current syntax item name
  " %=                                                 right-align following items
  " #%n (/ %?)                                         buffer number (over total buffers open)
  " %l/%L,%c%V                                         line number, total number of lines, and column number
  fu!  SetStatusLineStyle() " should this not want fu! to silently force overwrite any existing for this too, 4 some reason? whN wil that EvN pOtNtially occur?
    hi    StatusLine             cterm=NONE          ctermbg=DarkBlue ctermfg=White
    hi    StatusLineNC           cterm=NONE          ctermbg=Black    ctermfg=DarkGrey
    hi    CursorLine             cterm=bold          ctermbg=DarkBlue
    hi    CursorColumn           cterm=bold,italic   ctermbg=DarkBlue
    hi    MatchParen             cterm=reverse       ctermbg=DarkRed  ctermfg=White
    if &t_Co > 16 " .zshrc:pacz()
      " BlO setz the terminal SKp cOdz 4 Assigning Foreground && Background colrz from: HTTPS://GitHub.Com/CiaranM/inkpot/issues/11 wich mA fix Bold on dRkz?
      se   t_AF=[38;5;%dm
      se   t_AB=[48;5;%dm
" k:22;30   0;  r:22;31   1;  O:22;33   3;  y:22;33 184;  g:22;32   2;  c:22;36   6;  B:01;34  12;  m:22;35 164;  P:22;35   5;  w:22;37   7;
" K:01;30   8;  R:01;31   9;  o:22;33 172;  Y:01;33  11;  G:01;32  10;  C:01;36  14;  B:01;34  12;  M:01;35  13;  p:22;35  92;  W:01;37  15; alsO Ddup 01;01; ;
" TODO: alsO tSt if $ENV{'pP'} is set && run something like pacz in baktix 2 get d8bo + r for 1-9 BlO; got2 lOd a8.pm @d8cS[0..7] && just get last 0*(\d+)m $1
      hi  User1                  cterm=bold          ctermbg=DarkBlue ctermfg=9
      hi  User2                  cterm=bold          ctermbg=DarkBlue ctermfg=172
      hi  User3                  cterm=bold          ctermbg=DarkBlue ctermfg=11
      hi  User4                  cterm=italic                         ctermfg=10
      hi  User5                  cterm=bold          ctermbg=Black    ctermfg=14
      hi  User6                  cterm=bold          ctermbg=Black    ctermfg=12
      hi  User7                  cterm=bold          ctermbg=DarkBlue ctermfg=13
      hi  User8                  cterm=bold          ctermbg=DarkBlue ctermfg=92
      hi  User9                  cterm=underline                      ctermfg=1
      so  ~/.vim/syntax/user.vim
    el
  " I don't think0 workz4 %* or %0* in stl.BlO allHad ct=NONE ctbg=drkBlu B4;
"     hi  User0                  cterm=underline     ctermbg=DarkRed  ctermfg=Grey
      hi  User1                  cterm=bold          ctermbg=DarkBlue ctermfg=Red
      hi  User2                  cterm=italic        ctermbg=DarkBlue ctermfg=DarkYellow
      hi  User3                  cterm=bold          ctermbg=DarkBlue ctermfg=Yellow
      hi  User4                  cterm=italic        ctermbg=Black    ctermfg=Green
      hi  User5                  cterm=bold          ctermbg=DarkBlue ctermfg=Cyan
      hi  User6                  cterm=bold          ctermbg=DarkBlue ctermfg=Blue
      hi  User7                  cterm=bold          ctermbg=DarkBlue ctermfg=Magenta
      hi  User8                  cterm=italic        ctermbg=Black    ctermfg=DarkMagenta
      hi  User9                  cterm=italic        ctermbg=Black    ctermfg=DarkRed
    en
   "let  &stl="%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P"                    " this emulates the standard statusline with 'ruler' set
   "let  &stl="%<%f%=\ [%1*%M%*%n%R%H]\ %-19(%3l,%02c%03V%)%O'%02b'" " displays byte count and byte value, modified flag in red
   ":hi  User1 term=inverse,bold cterm=inverse,bold ctermfg=red
   ":so  $VIMRUNTIME/syntax/hitest.vim " will open new window containing all highlight group names, displayed in their own color
   "let  &stl="%f %y%([%R%M]%)%{'!'[&ff==#'".&ff."']}%{'$'[!&list]} (%{synIDattr(synID(line('.'),col('.'),0),'name')})%=#%n %l/%L,%c%V " " VimzDbugStatusLine
   "let  &stl="%f %y%([%R%M]%)%{'!'[&ff==#'".&ff."']}%{'$'[!&list]}%{'~'[&pm==#'']}%=kmap:%k mouse:%1(%{&mouse}%) paste:%{&paste} ord:%03b/x%2B #%n %4l/%-4L(%P),%3c%V %7{system('pt')} " " this one is cooler because it updates the `pt` in the stl all the time but it creates junk in the text && slows down too much
   "let  &stl="%f %1*%y%2*%([%R%M]%)%3*%{'!'[&ff==#'".&ff."']}%4*%{'$'[!&list]}%5*%{'~'[&pm==#'']}%=%6*m%1(%{&mouse}%)%7*p%{&paste} %1*%03b%*/%2*x%02B %*#%3*%n %4*%4l%*/%5*%-4L%*(%6*%P%*),%5(%7*%3c%1*%2(%V%)%) " . system('pt -v')
    let  vcd8=system('d8 -v') " VimCurD8        - save (Vim-colrd) d8 when status-line was set
   "let  &stl="%f %1*%y%2*%([%R%M]%)%3*%{'!'[&ff==#'".&ff."']}%4*%{'$'[!&list]}%5*%{'~'[&pm==#'']}%*%< %3*%F%* %4*%o%*/%5*b?%*(%6*%p%%%*) %t %1*%h%2*%k%* %7*".&term."%4*%w%5*%a%*%=%4*%{'i'[!&g:ai]}%5*%{'p'[!&paste]}%-2(%6*%{'m'[&mouse!='']}%7*%{'c'[!&ic]}%)%1*%03b%*/%2*x%02B%*#%3*%-2.2n%4*%4.7l%*/%5*%-4.7L%*(%6*%P%*),%6(%7*%3.5c%8*%-4.5(%V%)%)%9*".g:vid8.":".vcd8
   " D8JMESCu: had 2 pull out %* White colr on byte-offset '/' 2 have room 4 nw colr in d8 (flagz: a g:ai || p paste, m mouse, i ic, h hls)
   "let  &stl="%f %1*%y%2*%([%R%M]%)%3*%{'!'[&ff==#'".&ff."']}%4*%{'$'[!&list]}%5*%{'~'[&pm==#'']}%*%< %3*%F%* %4*%o/%5*b?%*(%6*%p%%%*) %t %1*%h%2*%k%* %7*".&term."%4*%w%5*%a%*%=%4*%{'i'[!&g:ai]}%5*%{'p'[!&paste]}%-2(%6*%{'m'[&mouse!='']}%7*%{'c'[!&ic]}%)%1*%03b%*/%2*x%02B%*#%3*%-2.2n%4*%4.7l%*/%5*%-4.7L%*(%6*%P%*),%6(%7*%3.5c%8*%-4.5(%V%)%)%9*".g:vid8.":".vcd8
   "let  &stl="%f %1*%y%2*%([%R%M]%)%3*%{'!'[&ff==#'".&ff."']}%4*%{'$'[!&list]}%5*%{'~'[&pm==#'']}%*%< %3*%F%* %4*%o/%5*b?%*(%6*%p%%%*) %t %1*%h%2*%k%* %7*".&term."%4*%w%5*%a%=%4*%{'a'[!&g:ai]}%{'p'[!&paste]}%5*%{'m'[&mouse!='']}%-2(%6*%{'i'[!&ic]}%7*%{'h'[!&hls]}%)%1*%03b%*/%2*x%02B%*#%3*%-2.2n%4*%4.7l%*/%5*%-4.7L%*(%6*%P%*),%6(%7*%3.5c%8*%-4.5(%V%)%)%9*".g:vid8.":".vcd8 " EC6LA5Ga:goodB4NrBufz  but "/".winnr('$'). shud upd8 wndw cntz similRly but sEmz 2 stA 1
    let  &stl="%f %1*%y%2*%([%R%M]%)%3*%{'!'[&ff==#'".&ff."']}%4*%{'$'[!&list]}%5*%{'~'[&pm==#'']}%*%< %3*%F%* %4*%o/%5*b?%*(%6*%p%%%*) %t %1*%h%2*%k%* %7*".&term."%4*%w%5*%a%=%4*%{'a'[!&g:ai]}%{'p'[!&paste]}%5*%{'m'[&mouse==#'']}%-2(%6*%{'i'[!&ic]}%7*%{'h'[!&hls]}%)%1*%3b%*/%2*x%02B%*#%3*%n/".bufnr('$')."%4*%4.7l%*/%5*%-4.7L%*(%6*%P%*),%6(%7*%3.5c%8*%-4.5(%V%)%)%9*".g:vid8.":".vcd8
   "try2Uz reltime() && the keyz read-ahed bufr 2ck if!2busy duing edt opz2upd8 &stl wi system(b64z&&curd8z),mayb loadng &stl 1st wi all opz Dlimd4 1sys()...
   "  ||port b8(),d8(),etc.2vim! ;) "also need2add %[-0]?($min(\.$max)?)?[fFtmMrRhHwWyYknbBoO0-9lLcvVpPa\{\}\(\)TX\<=#*] && set %< smartly2limit &stl len
   "  &&mayb hv mapd togl ky2swich btwn80col old-norml-stndrd-dflt mod&&160wydPipHiDef fanC nw slik ASCIIker mod! ;)  Adding .vcd8. abov iz2many%\d*z long!
  endf " need some way to count tix && mk sure SetSLS() does not get called too quickly or it barfs on the term
  call SetStatusLineStyle()
  if   has('title') " Window title
    se      titlestring=%t%(\ [%R%M]%)
  en
en
"se  diffexpr=MyDiff()
"fu(nction)?!? $NAME (retu(rn) $expr)? endf(unction)? delf(unction)? where the optional trailing bang (!) will silently force overwriting any existing fu def
"fu  MyDiff() "$NAME has to start with a capital letter
" let  opt = ''
" if   &diffopt =~ 'icase'  | let opt = opt . '-i ' | en
" if   &diffopt =~ 'iwhite' | let opt = opt . '-b ' | en
 "sil(ent!?)? exe(cute)? $expr  " sil skips StdOut && .= ! also skips StdErr
" sil  exe '!C:\Vim\vim62\diff -a ' . opt . '"' . v:fname_in . '" "' . v:fname_new . '" > "' . v:fname_out . '"'
"endf
fu!  InvertPasteAndMouse() " toggle paste / mouse mode
  if     &mouse ==# ''
    se    mouse=a
    se  nopaste
    ec   "mouse mode ON , paste mode off"
  el
    se    mouse=
    se    paste
    ec   "mouse mode off, paste mode ON "
  en
endf
fu!  ToglCursorLineBold()  " toggle whether CursorLine 'cul' highlighting has cterm all bold && also toggle slower Column highlighting on every 4th bold togl
  if      g:culb           " maybe should not use g: globalz for these but per window or something instead?
    let   g:culb=0
    hi    CursorLine   term=bold cterm=NONE ctermbg=DarkBlue
    hi    CursorColumn term=bold cterm=NONE ctermbg=DarkBlue
  el
    let   g:culb=1
    hi    CursorLine   term=bold cterm=bold ctermbg=DarkBlue
    hi    CursorColumn term=bold cterm=bold ctermbg=DarkBlue
    if    g:cucf           " like I'm going to remember every 4 of Ctrl-H or L will also toggle CursorColumn highlighting being on && mAB 'se cuc!' is EZ Enuf
      let g:cucf=0
    el
      let g:cucf=1
      se    cuc!
"     hi  CursorLine   term=bold cterm=bold ctermbg=DarkRed " mAB try this again aftr rgc are made pretty dark in *.pal8 && still consider sepR8ing
"     hi  CursorColumn term=bold cterm=bold ctermbg=DarkRed
    en
  en
endf
fu!  Upd8VerS()
  call SetStatusLineStyle()
  if &ai " no longer need to also let g:vcic since \c in regexes makes local explicit ignorecase
    let   g:vcai=1
  el
    let   g:vcai=0
  en
  se      noai
  if  getline('.') !~ "\\cd8VS=['\"]"
    kt
  en
  call setpos('.',[0,1,1,0])
  try " also available are :th(row)? && :fina(lly) sectionz beyond just cat(ch)? && it seems that just try&&cat preserves original srch in register:\"/ alreD
    exe "normal       /\\cd8VS=['\"]\<CR>"
    exe "normal 6lcw\<CR>\<Esc>k"
    r!d8
    norm                       k$
    j!
    norm        Jx8h
  cat      /^Vim\%((\a\+)\)\=:E486/
    " can't use system eScape codes to color echo message line below, needs :echohl (help)?(Boolean|Character|ColorColumn|Comment|Conceal|Conditional|Constant|
    " CursorColumn|CursorLine(Nr)?|Debug|Define|Delimiter|DiffAdd|DiffChange|DiffDelete|DiffText|Directory|Error(Msg)?|Exception|Float|FoldColumn|Folded|
    " Function|GTF_CANCELLED|GTF_CURSOR|GTF_LOOKAHEAD|GTF_NEW|Identifier|Ignore|IncSearch|Include|Keyword|Label|LineNr|Macro|MatchParen|ModeMsg|MoreMsg|
    " NonText|Normal|Number|Operator|Pmenu|PmenuSbar|PmenuSel|PmenuThumb|PreCondit|PreProc|Question|Repeat|Search|SignColumn|Special(Char|Comment|Key)?|
    " Spell(Bad|Cap|Local|Rare)|Statement|StatusLine(NC)?|StorageClass|String|Structure|TabLine(Fill|Sel)?|Tag|Title|Todo|Type(def)?|Underlined|User[1-9]|
    " VertSplit|Visual(NOS)?|WarningMsg|WildMenu|helpBacktick|helpBar|helpCommand|helpExample|helpGraphic|helpHead(er|line)|helpHyperText(Entry|Jump)|
    " helpLeadBlank|helpNotVi|helpNote|helpOption|helpSectionDelim|helpStar|helpURL|helpVim|none|pythonAsync|pythonAttribute|pythonBuiltin|pythonComment|
    " pythonDecorator|pythonDoctest(Value)?|...)
   "ec system('S R') . '!*Warn*!' . system('S O') . ' Exception' . system('S W') . ':' . system('S Y') . v:exception
    echoh           Exception
    ec    '!*Warn*! Exception:' v:exception
    echoh    none
    norm        't
  endtry " just try=>catching E486 where the search failz; Also figure out why I can't just do "se ai!" below instead of keeping around global to toggle?
  if g:vcai
    se   ai
  en
endf
fu!    IsHexColorLight(colr) abort " returns true if colr'z hX valU is lIt (from sample code.vim on HTTPS://VimColorSchemes.Com/dark/old );
  let  l:rawc = trim(a:colr, '#')  " raw_color without octothorpe pound hash tic-tac-toe splat, then get RR GG BB channelz 2 compUt rL8iv brightness...
  let  l:redd = str2nr(substitute(l:rawc, '(.{2}).{4}'      , '1', 'g'), 16)
  let  l:gren = str2nr(substitute(l:rawc,  '.{2}(.{2}).{2}' , '1', 'g'), 16)
  let  l:blue = str2nr(substitute(l:rawc,       '.{4}(.{2})', '1', 'g'), 16)
  let  l:brtn = ((l:redd * 299) +(l:gren * 587) + (l:blue * 114)) / 1000
  retu l:brtn > 155 " tSt calQl8d brItnS
endf
" below vimclippy just edits the clipboard without needing any files:
" Rich Cheng's HTTPS://NormalMo.de/posts/vimclippy `vim +'silent pu!+' +'$d' +'1' +'set nomodified' +'au BufWriteCmd vimclippy %y+ | set nomodified' vimclippy`
" Damian Conway's PerlToolsForVim inserted below, from talk HTTPS://YouTube.Com/watch?v=9u6O0dLuqhI && description at HTTP://YAPCNA.Org/yn2016/talk/6833
autocmd BufNewFile,BufRead *.t setfiletype perl " .t files are perl
"highlight Comment term=bold ctermfg=white      " Comments are important
function! AskQuit (msg, options, quit_option)   " magically build interim directories, if necessary
  if confirm(a:msg, a:options) ==# a:quit_option
    exit
  endif
endfunction
function! EnsureDirExists()
  let required_dir = expand("%:h")
  if !isdirectory(required_dir)
    call   AskQuit("Parent directory '" . required_dir . "' doesn't exist.",
        \          "&Create it\nor &Quit?"      , 2)
    try
      call mkdir( required_dir, 'p' )
    catch
      call AskQuit("Can't create '"     . required_dir . "'",
        \          "&Quit\nor &Continue anyway?", 1)
    endtry
  endif
endfunction
augroup AutoMkdir
  autocmd!
  autocmd  BufNewFile  *  :call EnsureDirExists()
augroup END
"====[ Make arrow keys move visual blocks around ]====
vmap <Up>    <Plug>SchleppUp
vmap <Down>  <Plug>SchleppDown
vmap <Left>  <Plug>SchleppLeft
vmap <Right> <Plug>SchleppRight
vmap    D    <Plug>SchleppDupLeft
"map <C-d>   <Plug>SchleppDupLeft  " don't map this if you still want to be able to HalfPageDown in Visual mode
"====[ Configure % key (via matchit plugin) for Perl 6 as well ]====
" Match angle brackets...
se matchpairs+=<:>,«:»
"====[ Perl programming support ]====
" Adjust buffer-local isk(eyword)? characters to match Perlish identifiers... but should be done locally to syntax/perl.vim or addendum included;
se  isk+=$
se  isk+=%
se  isk+=@-@
"se isk+=:
se  isk-=:
se  isk-=;
se  isk-=,
" Insert ABbrev8ionz for common Perl code structures which deserve study...
iab udd use Data::Dump 'ddx';<CR>ddx;<Left>
iab udv use Dumpvalue       ;<CR>Dumpvalue->new->dumpValues();<Esc>hi
iab uds use Data::Show      ;<CR>show
iab ubm use Benchmark qw( cmpthese );<CR><CR>cmpthese -10, {<CR>};<Esc>O
iab usc use Smart::Comments ;<CR>###
iab uts use Test::Simple 'no_plan';
iab utm use Test::More   'no_plan';
iab dbs $DB::single = 1;<Esc>
"====[ Run a Perl module's test suite ]====
let g:PerlTests_program       = 'perltests'   " ...What to call?
let g:PerlTests_search_height =   5           " ...How far up to search?
let g:PerlTests_test_dir      = '/t'          " ...Where to look for tests?
augroup Perl_Tests
  autocmd!
  autocmd BufEnter *.p[lm]  nmap <buffer> ;t :call RunPerlTests()<CR>
  autocmd BufEnter *.t      nmap <buffer> ;t :call RunPerlTests()<CR>
augroup END
function! RunPerlTests ()
  " Start in the current directory...
  let dir = expand('%:h')
  " Walk up through parent directories, looking for a test directory...
  for n in range(g:PerlTests_search_height)
    " When found...
    if isdirectory(dir . g:PerlTests_test_dir)
      " Go there...
      silent exec 'cd ' . dir
      " Run the tests...
      exec ':!' . g:PerlTests_program
      " Return to the previous directory...
      silent cd -
      return
    endif
    " Otherwise, keep looking up the directory tree...
    let dir = dir . '/..'
  endfor
  " If not found, report the failure...
  echohl WarningMsg
  echomsg "Couldn't find a suitable" g:PerlTests_test_dir '(tried' g:PerlTests_search_height 'levels up)'
  echohl None
endfunction
"====[ Auto-setup for Perl scripts and modules and test files ]====  I don't think Conway's package included this needed perl_file_templ8 or I set it up wrong?
"augroup Perl_Setup
"  autocmd!
"  autocmd BufNewFile   *.p[lm65],*.t   0r !perl_file_template <afile>
"  autocmd BufNewFile   *.p[lm65],*.t   /^[ \t]*[#].*implementation[ \t]\+here/
"augroup END
"====[ Proper syntax highlighting for Rakudo files ]====  these would probably be just 'raku' on line(1) now instead of full old 'rakudo'?
autocmd BufNewFile,BufRead  *   :call CheckForPerl6()
function! CheckForPerl6 ()
  if getline(1) =~ 'rakudo'
    setfiletype perl6
  endif
  if expand('<afile>:e') ==# 'pod6'
    highlight Pod6Block_Heading1 cterm=underline,bold
    highlight Pod6FC_Important   cterm=underline
    setfiletype               pod6
    syntax enable
  endif
endfunction
"====[ Smart completion via <Tab> and <S-Tab> ]====
"runtime plugin/smartcom.vim
" Add extra completions (mainly for Perl programming)...
let ANYTHING = ""
let NOTHING  = ""
let EOL      = '\s*$'
                " Left     Right      Insert                             Reset cursor
                " =====    =====      ===============================    ============
"call SmartcomAdd( '<<',    ANYTHING,  '>>',                              {'restore':1} )
"call SmartcomAdd( '<<',    '>>',      "\<CR>\<Esc>O\<Tab>"                             )
"call SmartcomAdd( '?',     ANYTHING,  '?',                               {'restore':1} )
"call SmartcomAdd( '?',     '?',       "\<CR>\<Esc>O\<Tab>"                             )
"call SmartcomAdd( '{{',    ANYTHING,  '}}',                              {'restore':1} )
"call SmartcomAdd( '{{',    '}}',      NOTHING,                                         )
"call SmartcomAdd( 'qr{',   ANYTHING,  '}xms',                            {'restore':1} )
"call SmartcomAdd( 'qr{',   '}xms',    "\<CR>\<C-D>\<Esc>O\<C-D>\<Tab>"                 )
"call SmartcomAdd( 'm{',    ANYTHING,  '}xms',                            {'restore':1} )
"call SmartcomAdd( 'm{',    '}xms',    "\<CR>\<C-D>\<Esc>O\<C-D>\<Tab>",                )
"call SmartcomAdd( 's{',    ANYTHING,  '}{}xms',                          {'restore':1} )
"call SmartcomAdd( 's{',    '}{}xms',  "\<CR>\<C-D>\<Esc>O\<C-D>\<Tab>",                )
"call SmartcomAdd( '\*\*',  ANYTHING,  '**',                              {'restore':1} )
"call SmartcomAdd( '\*\*',  '\*\*',    NOTHING,                                         )
" Handle single : correctly...
"call SmartcomAdd( '^:\|[^:]:',  EOL,  "\<Tab>" )
"After an alignable, align...
function! AlignOnPat (pat)
  return "\<Esc>:call EQAS_Align('nmap',{'pattern':'" . a:pat . "'})\<CR>A"
endfunction
                " Left         Right        Insert
                " ==========   =====        =============================
"call SmartcomAdd( '=',         ANYTHING,    "\<Esc>:call EQAS_Align('nmap')\<CR>A")
"call SmartcomAdd( '=>',        ANYTHING,    AlignOnPat('=>') )
"call SmartcomAdd( '\s#',       ANYTHING,    AlignOnPat('\%(\S\s*\)\@<= #') )
"call SmartcomAdd( '[''"]\s*:', ANYTHING,    AlignOnPat(':'),                   {'filetype':'vim'} )
"call SmartcomAdd( ':',         ANYTHING,    "\<Tab>",                          {'filetype':'vim'} )
" Perl keywords...
                " Left         Right   Insert                                  Where
                " ==========   =====   =============================           ===================
"                        was inserting " my $___ (___){\n___\n}\n___" originally, but trying to compact for me
"call SmartcomAdd( '^\s*for',   EOL,    " my $___ (___){___}\n___",             {'filetype':'perl'} )
"call SmartcomAdd( '^\s*if',    EOL,             "(___){___}\n___",             {'filetype':'perl'} )
"call SmartcomAdd( '^\s*while', EOL,             "(___){___}\n___",             {'filetype':'perl'} )
"call SmartcomAdd( '^\s*given', EOL,             "(___){___}\n___",             {'filetype':'perl'} )
"call SmartcomAdd( '^\s*when',  EOL,             "(___){___}\n___",             {'filetype':'perl'} )
"====[ Correct common mistypings in-the-fly ]====  I almOst nevr typ thEz thO!
iab        ,,  =>
iab    retrun  return
iab     pritn  print
iab       teh  the
iab      liek  like
iab  liekwise  likewise
iab      Pelr  Perl
iab      pelr  perl
"ab        ;t  't       " K6PM8Yuk:Do not want! Suckz for xe `xte`-wrapr 4m@ 4 StRING tYPEZ tHAt SHOULDN't tRY BULLSHIt INSERt-MODE ABBREV8IONIZAtION DAMNIt ;)
iab    Jarrko  Jarkko
iab    jarrko  jarkko
iab      moer  more
iab  previosu  previous
"====[ Add or subtract comments ]====
" Work out what the comment character is, by filetype... (&& maybe just * needz to be before bottom *.pl line?)
autocmd FileType             *sh,awk,python,perl,perl6,ruby    let b:cmt = exists('b:cmt') ? b:cmt : '#'
autocmd FileType               vim                             let b:cmt = exists('b:cmt') ? b:cmt : '"'
autocmd BufNewFile,BufRead   *.vim,.vimrc                      let b:cmt = exists('b:cmt') ? b:cmt : '"'
autocmd BufNewFile,BufRead   *.Xrc                             let b:cmt = exists('b:cmt') ? b:cmt : '!'
autocmd BufNewFile,BufRead   *.p[lm],.t                        let b:cmt = exists('b:cmt') ? b:cmt : '#'
autocmd BufNewFile,BufRead   *.cpp,.c,.h,.style                let b:cmt = exists('b:cmt') ? b:cmt : '//'
autocmd BufNewFile,BufRead   *.lua                             let b:cmt = exists('b:cmt') ? b:cmt : '--'
autocmd BufNewFile,BufRead   *.el                              let b:cmt = exists('b:cmt') ? b:cmt : ';;'
autocmd BufNewFile,BufRead   *                                 let b:cmt = exists('b:cmt') ? b:cmt : '#'
" Work out whether the line has a comment then reverse that condition... TODO 2du:tSt length of b:cmt 2 knO if substitutions BlO shud rEplAc mor than1char;
function! ToggleComment()
  let comment_char = exists('b:cmt') ? b:cmt : '#'
  let     currline = getline(".")
  if      currline =~                     '^' . comment_char . ' '
    let   repline  = substitute(currline, '^' . comment_char,          " ", "")
  elseif  currline =~                     '^' . comment_char
    let   repline  = substitute(currline, '^' . comment_char,           "", "")
  else
    let   repline  = substitute(currline, '^ \?'            , comment_char, "")
  en
  call    setline(           ".",repline)
endfunction
" Toggle comments down an entire visual selection of lines...
function! ToggleBlock() range
  let comment_char = exists('b:cmt') ? b:cmt : '#'
  let linenum      =         a:firstline
  " Get all the lines, and decide their comment state by examining the first...
  let currline     = getline(a:firstline, a:lastline)
  if  currline[0]  =~                     '^' . comment_char
    " If the first line is commented, decomment all...
    for   line     in           currline
      if  line     =~                     '^' . comment_char . ' '
        let repline= substitute(    line, '^' . comment_char,          " ", "")
      el
        let repline= substitute(    line, '^' . comment_char,           "", "")
      en
      call  setline(     linenum,repline)
      let   linenum+= 1
    endfor
  el
    " Otherwise, encomment all... where orig was: substitute(line, '^\('. comment_char . '\)\?', comment_char, "") to not duplic8 starting comment charz
    for   line     in           currline
      let   repline= substitute(    line, '^ \?'            , comment_char, "")
      call  setline(     linenum,repline)
      let   linenum+= 1
    endfor
  en
endfunction
" Set up the relevant mappings
nmap <silent> # :call ToggleComment()<CR>j0
vmap <silent> # :call ToggleBlock()  <CR>
"====[ Search folding ]====
" Don't start new buffers folded
se foldlevelstart=99
" Highlight folds
hi Folded ctermbg=Black ctermfg=Cyan
" Toggle on and off...
nmap                                 <silent> <expr>  zz  FS_ToggleFoldAroundSearch(             {'context':1})
" Show only sub defns (and maybe comments)...
let perl_sub_pat = '^\s*\%(sub\|func\|method\|package\)\s\+\k\+'
let  vim_sub_pat = '^\s*fu\%[nction!]\s\+\k\+'
augroup FoldSub
  autocmd!
  autocmd BufEnter *            nmap <silent> <expr>  zp  FS_FoldAroundTarget(perl_sub_pat,      {'context':1})
  autocmd BufEnter *            nmap <silent> <expr>  za  FS_FoldAroundTarget(perl_sub_pat.'\zs\\|^\s*#.*',{'context':0, 'folds':'invisible'})
  autocmd BufEnter *.vim,.vimrc nmap <silent> <expr>  zp  FS_FoldAroundTarget( vim_sub_pat,      {'context':1})
  autocmd BufEnter *.vim,.vimrc nmap <silent> <expr>  za  FS_FoldAroundTarget( vim_sub_pat.   '\\|^\s*".*',{'context':0, 'folds':'invisible'})
  autocmd BufEnter *            nmap <silent> <expr>  zv  FS_FoldAroundTarget( vim_sub_pat.   '\\|^\s*".*',{'context':0, 'folds':'invisible'})
augroup END
" Show only C #includes... (PipNote:I think the next map is for Perl use lines rather than C includes now.)
nmap                                 <silent> <expr>  zu  FS_FoldAroundTarget('^\s*use\s\+\S.*;',{'context':1})
"====[ Much smarter "edit next file" command ]====
"nmap <silent> <expr>  e  g:GTF_goto_file()
"nmap <silent> <expr>  q  g:GTF_goto_file('`')
""====[ Smarter interstitial completions of identifiers ]====
"" When autocompleting within an identifier, prevent duplications...
"augroup Undouble_Completions
"  autocmd!
"  autocmd CompleteDone *  call Undouble_Completions()
"augroup None
"function! Undouble_Completions ()
"  let col  = getpos('.')[2]
"  let line = getline('.')
"  call setline('.', substitute(line, '\(\k\+\)\%'.col.'c\zs\1', '', ''))
"endfunction
"9AGJHVRq: BlO is .vimrc from GiorgioSironi.BlogSpot.Com_2009_10_getters-and-setters-in-vim.html ; I went 2 ckout snippetsEmu. ;)
"se   expandtab   "se   tabstop=4     "setl comments=sr:/*,mb:*,ex:*/  "source ~/.vim/plugin/snippetsEmu.vim
"se   autoindent  "se   shiftwidth=4  "setl fo=cqort                   "source ~/.vim/after/ftplugin/php_snippets.vim
"exec "Snippet getset /**<CR>@return ".st."Type".et."<CR>/<CR>public function get".st."Name".et."()<CR>{<CR>  return $this->_".st."name".et.";<CR><BS><BS>\
      "}<CR><CR>public function set".st."Name".et."($".st."name".et.")<CR>{<CR>  $this->_".st."name".et." = $".st."name".et.";<CR><BS><BS>}<CR>"
