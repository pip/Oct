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
Xp Vers='0.000001';Xp d8VS='QAMM98Bk';Xp Auth='PipS <PipStuart@GMail.Com>';
#indkey -e; # setz Emacs-styl cmd-lIn editing; -v haz Bn betr sO fR 4 mE,but du!not 4get EmaxAtaxBax!; # alsO rEmMbr '^foo^bar' substitutez prEVious cmd;
#indkey -M menuselect 'h' vi-backward-char       ; # Use vim keys in tab complete menu (2nd tab press);
#indkey -M menuselect 'j' vi-down-line-or-history;
#indkey -M menuselect 'k' vi-up-line-or-history  ; # BlO, by default backspace (^?) is bound to `vi-backward-delete-char`;
#indkey -M menuselect 'l' vi-forward-char        ; # wE want it to have the same bahvior as vim/nvim (i.e. backspace=del);
#indkey -v           '^?' backward-delete-char   ; # without this we will get stuck unable to backspace after Esc-k-A;
bindkey -v; # used to use 'Bk' alias for 'bindkey' but decided it's used so rarely that it's not worth it to keep around (not in the top of .zshenv anymore);
ulimit  -c 65536; # 33,553,920-bytes # setz coredump size limit2 32MB (4Dbugng) wher #-param is *512-byte blox or 'unlimited' canBUsed  # /opt/Qt5.13.1-pnp/bin
typeset -U path ;path=($HOME/bin $HOME/.local/bin /usr/local/sbin /usr/sbin /sbin      $HOME/dvl/t8/raku/rakudo-moar-2022.12-01-linux-x86_64-gcc/bin
  $HOME/dvl/t8/raku/rakudo-moar-2022.12-01-linux-x86_64-gcc/share/perl6/site/bin       $HOME/.cargo/bin $HOME/.emacs.d/bin $HOME/.nodebrew/current/bin
  /usr/local/bin /usr/bin /bin /opt/bin $HOME/lib/perl5/bin $HOME/lib/Oct/f8/pal8 $HOME/dvl/t8/dmd/linux/bin $HOME/.vim/bundle/vim-superman/bin $path);
#Xp PS1='%(!.<.[)%n@$HHst `d8` $PWD %~%(!.>.])'; # super bare-bones colorless for .zshenv;
#Al xp="Xp PS1='%{[1;33m%}%(!.<.[)%{[1;36m%}%n%{[1;37m%}@%{[1;36m%}$HHst\`d8 -f|sS z\`%{[1;34m%}%~%{[01;01;01;1;33m%}%(!.>.])%{[1;32m%}'";
#Al dp="Xp PS1='%{[1;37m%}%(!.<.[)%{[1;32m%}%n%{[1;34m%}@%{[1;36m%}$HHst\`d8 -z\`%{[1;34m%}\`c8fn -z \$(pwd)\`%{[1;37m%}%(!.>.])%{[1;32m%}'";
#Xp PS1='%{$W%}%(!.<.[)%{$G%}%n%{$z$B%}@%{$C%}$HHst`d8 -z`%{$z$B%}`c8fn -z $PWD`%{$W%}%(!.>.])%{$z$G%}';
#if [[ "$TERM" == "xterm-kitty" ]]; then #Xp W=`S I` G=`S A` B=`S S` C=`S Z`; # see if re-assigning main prmpt used dark user@host colrz2hIer in 8pal8 brItNz;
# Xp PS1='%{$W%}%(!.<.[)%{$G%}%n%{$z$B%}@%{$C%}$HHst`d8 -z`%{$z$B%}`c8fn -z $PWD`%{$W%}%(!.>.])%{$z%}'; # workd but rEalIzd Orig8+Bold !not 38;5;…m !;
#fi; # can just set CursorColor chng shape from beam 2 block, or what will? nOpe!; # sO comNted new Xp PS1 but stil want Red CursorColor 2B set;
#Xp PS1='%{[1;37m%}%(!.<.[)%{[1;33m%}%n%{[1;34m%}@%{[1;35m%}$HHst`d8 -z`%{[1;34m%}%~%{[1;37m%}%(!.>.])%{[1;32m%}'; # F1PLEswI:s/%~/c8fn/;
#Xp PS1='%{[1;37m%}%(!.<.[)%{[1;32m%}%n%{[1;34m%}@%{[1;36m%}$HHst` d8 -z `%{[1;34m%}` c8fn -z $PWD `%{[1;37m%}%(!.>.])%{[1;32m%}';
Xp PS1='%{[1;97m%}%(!.<.[)%{[1;92m%}%n%{[1;94m%}@%{[1;96m%}$HHst`d8 -z`%{[1;94m%}`c8fn -z $PWD`%{[1;97m%}%(!.>.])%{[1;92m%}';
#Xp D0=$(pla 'o8 $d8cS[0]');Xp D4=$(pla 'o8 $d8cS[4]');Xp D2=$(pla 'o8 $d8cS[2]');Xp D6=$(pla 'o8 $d8cS[6]'); # d8cS 0..7     &&  d8bo  ;
#Xp D1=$(pla 'o8 $d8cS[1]');Xp D5=$(pla 'o8 $d8cS[5]');Xp D3=$(pla 'o8 $d8cS[3]');Xp D7=$(pla 'o8 $d8cS[7]'); #  Xp D8=$(pla 'o8 $d8bo');
# just comNtd out 8 sepR8 shell callz 2 Perl sinc they're not even used anywhere yet && should be batched,lIk join('%',@d8cS) thN split thru awk && set how?;
if   [[ "$DISPLAY" != ""  ]]; then xrc; fi; # this calls xrc wrapper 4 xrdb merge on my ~/.Xrc file && ChatGPT said it doesn't belong in .zshenv if!run X11;
if    [  -t  1  ]; then # like calling `test -t 1` or `tty -s` or [ -n "$TERM" ] or mAB opposite output 4 my basic isatty.c `ttyt` or `ttpy`?;
  if [[  $TTY  =~ ^/dev/(tty|pts/) ]] && [[ -x "$Hpl8" ]]; then Xp Hpal="$Hpl8";Al src8="$Hpal";Pal8Qiet='1' $Hpal; fi; # mAadd Pal8VQet VeryQuiet noSKpzout!;
  if [[ "$TERM" == "xterm-kitty" ]]; then kc; fi; # orig. trIed2set KittyCursorColor B4 .pal8-per-term was calld,but nEdz 2B down hEr aftrwardz 2tk Efect;
  if       [[ "$HUsr"     !=  "root" ]];                             then #Xp PipzTmpC='~/lib/Oct/f8/f0nt/psf'; #fpal -x -l ~/dvl/f8/*/*/font';
    if     [[ "$DISPLAY" ==       "" ]] && [[ "$TERM" == "linux" ]]; then # orig had PipzGlobalf8Flag 2!redo but!DISPLAY also4ssh so $TERM"linux"4console
      # no more old Gen /dev/vc/\d+ && curNtly only /dev/tty[1-24] (orig1-6) active anyway && old pts/ which was left in to align with above could match
      #   && fail the IO call when sshing from Chun console to Aku, so replaced it with "tty/", which is now aligned altern8ion which should never match
      # maybe setfont betr than setf etfp as proly able 2 handle more PSF varE8ionz l8r?                              setfont also should work fine below
      # couldn't find etfp to set font, nEd altern8ive;
      if   [[  $TTY  =~ ^/dev/(tty|tty/)(0|65|66|67|68|69|70|71)$ ]] && [[ -r "$Hf0ntdir/$Hf0ntts0.psf"  ]]; then     setf     $Hf0ntdir/$Hf0ntts0.psf  ;
      elif [[  $TTY  =~ ^/dev/(tty|tty/)(1|9$|17|25|33|41|49|57)$ ]] && [[ -r "$Hf0ntdir/$Hf0ntts1.psf"  ]]; then     setf     $Hf0ntdir/$Hf0ntts1.psf  ;
      elif [[  $TTY  =~ ^/dev/(tty|tty/)(2|10|18|26|34|42|50|58)$ ]] && [[ -r "$Hf0ntdir/$Hf0ntts2.psf"  ]]; then     setf     $Hf0ntdir/$Hf0ntts2.psf  ;
      elif [[  $TTY  =~ ^/dev/(tty|tty/)(3|11|19|27|35|43|51|59)$ ]] && [[ -r "$Hf0ntdir/$Hf0ntts3.psf"  ]]; then     setf     $Hf0ntdir/$Hf0ntts3.psf  ;
      elif [[  $TTY  =~ ^/dev/(tty|tty/)(4|12|20|28|36|44|52|60)$ ]] && [[ -r "$Hf0ntdir/$Hf0ntts4.psf"  ]]; then     setf     $Hf0ntdir/$Hf0ntts4.psf  ;
      elif [[  $TTY  =~ ^/dev/(tty|tty/)(5|13|21|29|37|45|53|61)$ ]] && [[ -r "$Hf0ntdir/$Hf0ntts5.psf"  ]]; then     setf     $Hf0ntdir/$Hf0ntts5.psf  ;
      elif [[  $TTY  =~ ^/dev/(tty|tty/)(6|14|22|30|38|46|54|62)$ ]] && [[ -r "$Hf0ntdir/$Hf0ntts6.psf"  ]]; then     setf     $Hf0ntdir/$Hf0ntts6.psf  ;
      elif [[  $TTY  =~ ^/dev/(tty|tty/)(7|15|23|31|39|47|55|63)$ ]] && [[ -r "$Hf0ntdir/$Hf0ntts7.psf"  ]]; then     setf     $Hf0ntdir/$Hf0ntts7.psf  ;
      elif [[  $TTY  =~ ^/dev/(tty|tty/)(8|16|24|32|40|48|56|64)$ ]] && [[ -r "$Hf0ntdir/$Hf0ntts8.psf"  ]]; then     setf     $Hf0ntdir/$Hf0ntts8.psf  ; fi;
      # maybe psf fonts should be set in /etc/init.d/consolechars through /etc/default/console-setup even sooner
  #   if   [[ `which curs` != '' ]]; then curs; fi; # need curs again down here for consoles not to have just default underline
    fi; # Ryu was Old until `pmei Curses` or fpal didn't require curses to wrap etfp; RyuOld && Gen used to use the following on /dev/(tty|vc/)\d+:
        #   3/15 HyLAS      6/18 mED          9/21 france9     12/24 futura-2    # 3/15 hylas alsO had etfp A172 F177; mkng2brItz dRk proly4 lowcontrast prym;
        #   4/16 FRESNo     7/19 cALLIGRA    10/22 ANTIqUE     13    CRAKRjAK    # orig filenames were all lowercase since it was prior to .Hrc renaming 4 keyz
        #   5/17 ZanZurf    8/20 rOMAN3      11/23 bROADWAY
  fi; fi; # ls.*? -1:OnlE1FyLynz($_\n);clasiFy(dir/,symlnk@,exefyl*,etc);QuotRsltnzFylNmz(2sealSpcz&&othrDynabiliTBhynd lit txt);Long(shoXact byte fylsizes);
dircolors=`which dircolors`||dircolors=`which gdircolors`;Xp dircolors;Al drc='dircolors';Xp COLORFGBG='default;default'; # abov Dfalt CVSRootPath..
if   [[ -r "$HOME/.lsrc" ]] && [[ -x "$dircolors" ]]; then eval $($dircolors -b $HOME/.lsrc); # orig alsO ckd4 m/^~\/\.(ls|dir)_colors$/i but I don't think…
else                                                       eval $($dircolors -b            ); fi; #  …I'll nEd2furthr suport any of thOz,just init sysDfaltz;
# abov eval of dircolors nEdz successful XeQtable ck!;
# K R 0oO Y G C B M W  # a8,c8,f8::pal8 `S` colrz mapd to ANSI SGR wi CSI then 1; then 30+$BlOn;
# 0 1 0;3 3 2 6 4 5 7  # KRoYG CBMW => 01-32 6457 ;
# F1ELGnuL:RoYG CBMp => 1;3[1o32 645p] thEse lInz should evN2LE get gNR8d from `ls /boot`; I98M89I9:rEsortd2XplicitNtrEzB4quStnz sinc wrkin lsd8 but!nrml `ls`;
# NCALK4d8:trIed AgN 2 add *-`d8`: wi ? in diminishng fEldz but it Cmz all XtNsionz must B NtIrly Xplicit now (nO ? @all anymor! =( ) sO rEmovd mOst of thM;
  #      LS_COLORS="*-E??L????=3;22;31;40:*-E??M????=4;22;31;44:*-I??L????=9;01;36;40:*-I??M????=3;01;36;44;21:$LS_COLORS"; #try2ad.bak/.longXtN-`d8`$/ 2Bgin
  #      LS_COLORS="*-F??L????=3;22;33;40:*-F??M????=4;22;33;44:*-J??L????=9;01;34;40:*-J??M????=3;01;34;44;21:$LS_COLORS";
#        LS_COLORS="$LS_COLORS*-E??L????=3;22;31;40:*-E??M????=4;22;31;44:*-C??L????=9;22;36;40:*-C??M????=3;22;36;44;21:"; #try2ad.bak/.longXtN-`d8`$/ 2Nd
#        LS_COLORS="$LS_COLORS*-F??L????=3;22;33;40:*-F??M????=4;22;33;44:*-D??L????=9;22;32;40:*-D??M????=3;22;32;44;21:"; # lFtcolm:E-J rIt:CDK-N
#Quick LUT: 0zNorm 1Bold 2fAint 3Italic 4Underline 5bLink 6blinK 7Reverse 8inVisible 9Crossedout 20Fraktur 21Dblunder 22boldoff 23iFoff 24uoff 25lKoff 27roff
#  28voff 29coff 38/48 XF/xbcolr 39/49 YF/ybdfltcolr 51fraMed 52Encircled 54mEoff 53Overline 55ooff 73Super 74sZub 75sZoff 60-65ideogramz 10-19f0ntz [34]0-7Fb;
# Oct lsd8 does rEad ?? && [LM] 4 15Yrz m@chez && regUlR ls duzn't complAin; # can't put underCurl 4:3 in Bcuz conflictz wi normal colon sepR8or of p@rnz;
         LS_COLORS="$LS_COLORS*-A[1-9A-C][1-9A-V][I-P][0-9A-N]???=21;01;32;40:*-B[1-9A-C][1-9A-V][I-P][0-9A-N]???=21;01;34;40:";
         LS_COLORS="$LS_COLORS*-C[1-9A-C][1-9A-V][I-P][0-9A-N]???=21;22;36;40:*-D[1-9A-C][1-9A-V][I-P][0-9A-N]???=21;22;32;40:"; 
         LS_COLORS="$LS_COLORS*-E[1-9A-C][1-9A-V][I-P][0-9A-N]???=21;22;35;40:*-F[1-9A-C][1-9A-V][I-P][0-9A-N]???=21;22;31;40:";
         LS_COLORS="$LS_COLORS*-G[1-9A-C][1-9A-V][I-P][0-9A-N]???=21;01;32;40:*-H[1-9A-C][1-9A-V][I-P][0-9A-N]???=21;22;35;40:";
         LS_COLORS="$LS_COLORS*-I[1-9A-C][1-9A-V][I-P][0-9A-N]???=03;22;37;40:*-J[1-9A-C][1-9A-V][I-P][0-9A-N]???=03;01;37;44:";
         LS_COLORS="$LS_COLORS*-K[1-9A-C][1-9A-V][I-P][0-9A-N]???=03;01;30;44:*-L[1-9A-C][1-9A-V][I-P][0-9A-N]???=03;22;35;44:";
         LS_COLORS="$LS_COLORS*-M[1-9A-C][1-9A-V][I-P][0-9A-N]???=03;01;35;44:*-N[1-9A-C][1-9A-V][I-P][0-9A-N]???=04;01;31;44:";
         LS_COLORS="$LS_COLORS*-O[1-9A-C][1-9A-V][I-P][0-9A-N]???=04;22;33;44:"; # ... l8r -P 2025
         LS_COLORS="$LS_COLORS*-interface-security=01;31:*-shim-state=01;36:*.?.=22;36:*.??.=22;34:*.???.=22;30:*.????.=22;32:";  # /run  # .?. cbkg prvz
         LS_COLORS="$LS_COLORS*.3.=22;34:*.33.=22;30:*.66.=22;34;40:*.0.=22;30:*.O.=22;33;43:*.96.=22;34;42:*.9G.=22;32;44:"; #3nd0tn6Xz # gN96z # .?upd8?
         LS_COLORS="$LS_COLORS*.G.=22;44:*.GG.=22;34:*.G9.=22;30;40:*.9.=22;34:*.=22;34:*..=22;30:*...=22;30;44:"; #endotnGXtraz  # gN9Gz # .?bbkbkk prv? +nw g
         LS_COLORS="$LS_COLORS*.png.=22;35;45:*.Hrc.=22;30:*.ls.=22;34;44:*.log.=22;32:*.kdb.=22;30;40:*.txt.=22;36:"; #smAnXtraz # gNrl  # .?mkbgkc prvz m b k
         LS_COLORS="$LS_COLORS*.g.=22;35:*.gg.=22;30:*.g6.=22;34;44:*.6.=22;32:*.H.=22;30;40:*.8.=22;36:*.prv8.=22;34:"; #mormAnXtrz#gNg8z# .?mkbgkc prvz +nw b
Xp       LS_COLORS="$LS_COLORS*.serverauth.???=22;32:*.serverauth.????=22;31:*.serverauth.?????=22;35:*.goutputstream-??????=22;31:"; #*.gout*-? duz!wrk4 `ls`;
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
