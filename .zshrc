# 381KF3RN:~/.zshrc by PipStuart <Pip@CPAN.Org>; nOt:IOriginaly thotitbetr2rElymoron stndalOn XeQtablUtlz than aliasz||shL-scrpt funczDfInd inany .rc Bcuz4mer
#   stAy availabl 2spawnd procSz wich hvOwn non-Zsh sub-shL cfgz (eg, insrtngPerl2Vim :r!Q 127/7;b64 1023) sO I pland2port stuf hEr2my Oct libz && ~/bin/
#   butIhv rElIzdth@ c8.pm (inprep4"H"8sh)mABcomAbl2pRs .(ba|z)shrc fIlz2lOd thEz&&canmk thMavail2othr shLz bywrapng cmdz wiXpansionUtlz; lern LaunchPad/byobu,
# 2du:NCE:rEsrch && stuD advIc on wethr Uzng subshL $() mOst plAcz in hEr nstd of rampant `` baktix shud B betr sinc pRNz nSt wo lAyrd SKpng ofDpNing tix && ?,
#   rEad sItez: HTTPS://ReddIt.Com/r/zsh/comments/17nsin0/my_top_5_zsh_plugins && HTTPS://Catalins.Tech/zsh-plugins && HTTPS://GitHub.Com/FDellwing/zsh-bat &&
#     HTTPS://GitHub.Com/Zsh-Users/zsh-syntax-highlighting  &&  HTTPS://GitHub.Com/Zsh-Users/zsh-autosuggestions plus PwrLvl10k && StarShip 4 modernIzng myZsh,
#   add perVC autostRt nwlOcl`scrn`if!alredy in1,lern`autoload -z`&&sepR8hist,get any othrUseful modulz lIk pcre,mAB mk xrhd 4 xr&&r 2 EZ r8pik 144Hz 2HDpMvI?,
#   stuD AutoComplete Ctrl-R setup && BhAVor 2 supOsedly somethng lIk sLectivly regX match serch thru cmnd hist && cycl furthr wi mor Ctrl-R or Enter 2 choose;
# nOt:HTTPS://MyWiki.Wooledge.Org/BashPitfalls#pipefail has pretty useful tipz on helpful error optionz && when to use them (for bash, but should be like Zsh);
# nOt:HTTPS://Joel.Porquet.Org/wiki/hacking/vim_konsole has a pretty good little article about mapping good Vim && Zsh keyz from within KDE's konsole terminal;
# nOt:HTTPS://ReddIt.Com/r/commandline/comments/1bwotos/simple_tui_pure_bashansi_escape_type_test has pretty cool typing program in just bash script 2lern too;
# nOt:P4LMExRE:looks like both bash && zsh can use common syntax for: "if [[ $var =~ $RE ]];…" but bash might need "${~RE}" to force literal as RegEx pattern?;
#   RegEx captures go2 1-based arrays $BASH_REMATCH[1] && just $match[1] for Zsh to preserve the most recent groups found when testing. "${RE//E/egEx}" 4s///?;
#   bakon gN2:`em  scummvm`:2use nw"modern"theme4scummvm,add2[scummvm]sect of~/.scummvmrc(aftr runing scummvm once):themepath=/usr/share/games/scummvm/engines;
#   nowon ubu:`agi scummvm`&&mAB -d8a shud wrk2plA around wi2D advN2rz AgN; If cmd cursr is by an alias Ctrl-x,a will _expand_alias&&mABcan disAblit4 wh pRam?;
#   `sz` in /etc/init.d c@chz lOcl sudo* bin daemon nstd of /usr/bin versN,prmpt similRly chOkz tryng`d8`within~/.inst/perl-5.8.8 sO mAB rEordr path2!hv probz?
#[[   -e /sw/bin/init.sh ]] && source /sw/bin/init.sh; # fink:FreeBSD special shL stufInEded2src4zsh on oldLBoxB4Keith rEvertd bak2 gN2; "${(L)OSTYPE}"== *bsd?
zmodload       zsh/pcre
  setopt                \
  auto_cd               \
  auto_name_dirs        \
  complete_in_word      \
  re_____match_____pcre \
  hist___________verify \
  hist__ignore_all_dups \
  pushd_ignore_____dups \
  pushd___________minus \
  prompt__________subst \
  magic___equal___subst  # man zshoptions explains all are case-insensitive && ignore underscores so I'm using them now for word sepR8ion && vertical alignment
unsetopt                \
  pushd_____to_____home \
  hist__save___by__copy \
  share_history         \
  bash_rematch          \
  prompt_cr              # nO CarriageReturn B4 Ech nw prmpt (sux th@ cmdln editng oftN getz skewd unlS nwlInz bracket evrythng); F1KL2nZE:mvd sharehist dn2un;
# hist__save___by__copy \# acordng2:HTTP://ZSh.Org/mla/workers/2006/msg00787.html setng this shudlet root sharemy .zsh_history or HIST_APPEND or SHARE_HISTORY?
# menu_complete         \# setng mkz 1st tab XplOd m@ch list;    # bash_rematch mAB mkz regX capturez use $BASH_REMATCH instead of default $match?
# auto_pushd            \# setng addz dirz 2 stack wN just normally chngng 2 thM (wich I du not normally lIk or want)
# ksh_arrays            \# rEmMbr wNwrItng scrptz[or funcz]2include'setopt [localoptions] ksharrays'sO arAzR 0-bAsed(but!glOblBcuzmOst scrptzRstndrdly 1-bAsed)
# re_____match_____pcre \# mA want2set for Z-SHell scripting RegularExpressions to utilize PerlCompatibility styles && mA insert 'zmodload zsh/(pc)?re(gex)?';
# extended_glob is Zsh option wich causes the caret '^' circumflex 2B interpol8d / Xpanded && it's used in a regex ^prev^next 2 substitute stRt of last cmnd;
# dot_glob optn includz .files && XtNded_glob m@chz ~ # ^ nOtd in HTTPS://YouTu.be/g5BoVPhewWM ;
Xp Vers='0.000001';Xp d8VS='QAKM3env';Xp Auth='PipS <PipStuart@GMail.Com>'; # 'Xp','Al','Bk' => export,alias,bindkey  'sl','cl' => SymLink,CountLines,… ;
Bk      -v;. ~/.zshenv; # rEsrc env whN running bare shL `src` 2 lOad this .zshrc && upd8 .zshenv 2gethr;
ulimit  -c 65536; # 33,553,920-bytes # setz coredump size limit2 32MB (4Dbugng) wher #-param is *512-byte blox or 'unlimited' canBUsed  # /opt/Qt5.13.1-pnp/bin
typeset -U path ;path=($HOME/bin $HOME/.local/bin /usr/local/sbin /usr/sbin /sbin   .  $HOME/dvl/t8/raku/rakudo-moar-2022.12-01-linux-x86_64-gcc/bin
  $HOME/dvl/t8/raku/rakudo-moar-2022.12-01-linux-x86_64-gcc/share/perl6/site/bin       $HOME/.cargo/bin $HOME/.emacs.d/bin $HOME/.nodebrew/current/bin
  /usr/local/bin /usr/bin /bin /opt/bin $HOME/lib/perl5/bin $HOME/lib/Oct/f8/pal8 $HOME/dvl/t8/dmd/linux/bin $HOME/.vim/bundle/vim-superman/bin $path);
# O3TM0pre:preexec() { echo -n "┘"; } # This function is called just before executing a command
#          precmd () {            : } # This function is called before displaying the prompt. Reset whatever or add newline here;
# It may be better, especially if using other plugins, to not use preexec/precmd directly, but to add the functions as hooks:
#   autoload -Uz add-zsh-hook
#                                     preexec.add-box-char(){ echo -n '┘'; }
#                add-zsh-hook preexec preexec.add-box-char; # from: HTTPS://ReddIt.Com/r/zsh/comments/1bp8otd/what_is_the_equivalent_of_ps0_in_zsh  $POSTEDIT;
# folOng lInz were added by compinstall on 77PKLPFw thN editd by Pip && mergd wi /etc/zsh/newuser.zshrc.recommended on E96M5ZkH
zstyle ':completion:*'                      auto-description 'specify:   %d'
zstyle ':completion:*'                           completer   _expand _complete _correct _approximate
zstyle ':completion:*'                           format      'Completing %d'
zstyle ':completion:*'                     group-name        ''
zstyle ':completion:*'                           menu        select=4 # mIt want 2?
zstyle ':completion:*'                   squeeze-slashes     true
zstyle ':completion:*'                       max-errors      1 numeric
#eval  "$(dircolors -b)" # this has already been handled above near to top of file for loading ~/.lsrc then customizing $LS_COLORS gr8ly for non-dot XtNsionz;
zstyle ':completion:*:default'              list-colors      ${(s.:.)LS_COLORS}
zstyle ':completion:*'                      list-colors      ''
zstyle ':completion:*'                      list-prompt      %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*'                   matcher-list        '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*'                           menu        select=long
zstyle ':completion:*'                    select-prompt      %SScrolling active: current selection at %p%s
zstyle ':completion:*'                       use-compctl     false
zstyle ':completion:*'                           verbose     true
zstyle ':completion:*'                           prompt      '[%e] '
zstyle ':completion::complete:*'             use-cache       1 # enable cache for completions
zstyle ':completion:*:*:kill:*:processes'   list-colors      '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*'                    command     'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
zstyle ':compinstall'                            filename    '/home/pip/.zshrc'
autoload -U                                      promptinit; promptinit; #prompt gentoo; # clobrd my gr8 prompt wi crapy 1;
autoload -U                                        compinit;   compinit;
                                                   compdef  _man w3mman;
                                                   compdef  vman="man"; # probably just need a plugin manager for vim to get Vim-SuperMan to work l8r
                                                   compdef   dic="dict";compdef d="dict";
                                                  #compdef                   nala; # NBMLNala:apt installed nala as apt rEplAcemNt && ran --show-completion;
_nala_completion() { eval $(env _TYPER_COMPLETE_ARGS="${words[1,$CURRENT]}" _NALA_COMPLETE=complete_zsh nala) }
                                                   compdef  _nala_completion nala;    # 2du:lern how 2 spEdup sourcing BlO .zsh scriptz sinc they R wA slO!;
# NC9L8fix:2du:figurout why autOsuggStnz was unAbl 2 run aftr multipl `src` callz must've lOded 2 many duplic8 funcz && maxdout limit,sO erord aftrEch kEy?;
# K37L1Zsh:research installing HTTPS://GitHub.Com/zsh-users/zsh-syntax-highlighting which seems to have been a pkg B4 (in `acs`)but is no longer inUbu19.10;
# NC8L3SHL:now found z-s-hl pkg AgN sO nala installed it, along with autosuggestions, antigen, && zsh-dev (but still want bat from src l8r too)... sO nEd 2:
#lugins=(zsh-autosuggestions zsh-syntax-highlighting);  # l8r prEpNd git && bat? lookz lIk this type of cnfg wud just B 4 OhMyZsh && !aplicabl 2othr setupz;
#ource /usr/share/zsh-antigen/antigen.zsh;  # 2du:rEad HTTPS://GitHub.Com/Zsh-Users/antigen 4 instal instructnz; mAB rEad wethr ZSH_CUSTOM shud = ~/.zsh/ ?;
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE='64';ZSH_AUTOSUGGEST_STRATEGY+=(history completion);  # disAblz autOsuggSt 4 lRg bufrz (recOmNded sIz just 20?); #S_HL_STYL?
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#3377FF,bg=#070F1F,underline'     ;  # sIte-eXample:ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline";
typeset -A ZSH_HIGHLIGHT_STYLES; # see HTTPS://GitHub.Com/Zsh-Users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md 4 typez, Dtailz,&& Xamplz:
ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta,bold'; # to differentiate aliases from other command types; # 2du:fIndout if I nEd 2 typeset all thEs varz or what?;
#SH_HIGHLIGHT_STYLES[path]='fg=cyan'         ; # to have paths colored instead of underlined      ; #   !sure why some cmndz or aliasz R just colrng dRkgrn;
#SH_HIGHLIGHT_STYLES[globbing]='none'        ; # to disable highlighting of globbing expressions  ; #   mAB you-should-use plugin wil rEmIndof unUzd aliasz;
#en src /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh        ;ZSH_HIGHLIGHT_MAXLENGTH='1024';ZSH_HIGHLIGHT_HIGHLIGHTERS+=(brackets pattern cursor);
#source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh;  # install instructnz say z-s-hl should always be sourced (or antigen bundled) last;
