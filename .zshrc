# 381KF3RN:~/.zshrc by PipStuart <Pip@CPAN.Org>; nOt:IOriginaly thotitbetr2rElymoron stndalOn XeQtablUtlz than aliasz||shL-scrpt funczDfInd inany .rc Bcuz4mer
#   stAy availabl 2spawnd procSz wich hvOwn non-Zsh sub-shL cfgz (eg, insrtngPerl2Vim :r!q 127/7;b64 1023) sO I pland2port stuf hEr2my Octology libz && ~/bin/
#   butIhv rElIzdth@ c8.pm (inprep4"H"8sh)mABcomAbl2pRs .(ba|z)shrc fIlz2lOd thEz&&canmk thMavail2othr shLz bywrapng cmdz wiXpansionUtlz; lern LaunchPad/byobu,
# 2du:NCE:rEsrch && stuD advIc on wethr Uzng subshL $() mOst plAcz in hEr nstd of rampant `` baktix shud B betr sinc pRNz nSt wo lAyrd SKpng ofDpNing tix && ?,
#   rEad sItez: HTTPS://ReddIt.Com/r/zsh/comments/17nsin0/my_top_5_zsh_plugins && HTTPS://Catalins.Tech/zsh-plugins && HTTPS://GitHub.Com/FDellwing/zsh-bat &&
#     HTTPS://GitHub.Com/Zsh-Users/zsh-syntax-highlighting  &&  HTTPS://GitHub.Com/Zsh-Users/zsh-autosuggestions plus PwrLvl10k && StarShip 4 modernIzng myZsh,
#   add perVC autostRt nwlOcl`scrn`if!alredy in1,lern`autoload -z`&&sepR8hist,get any othrUseful modulz lIk pcre,mAB mk xrhd 4 xr&&r 2 EZ r8pik 144Hz 2HDpMvI?,
#   stuD AutoComplete Ctrl-R setup && BhAVor 2 supOsedly somethng lIk sLectivly regX match serch thru cmnd hist && cycl furthr wi mor Ctrl-R or Enter 2 choose;
# nOt:HTTPS://Joel.Porquet.Org/wiki/hacking/vim_konsole has a pretty good little article about mapping good Vim && Zsh keyz from within KDE's konsole terminal.
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
export Vers='0.000000';export d8VS='O3QMNjLo';export Auth='PipStuart <Pip@CPAN.Org>'; # !Xprtng $b th@cOlIdz Perl sort{$a<=>$b} t1 /defhijlnqstuvx/i +AZ 4golf;
if     [[       "$SHELL"    == "" ]] ||
       [[       "$SHELL" =~ bash  ]]; then       export SHELL=$(which   zsh);export HShl="$SHELL";fi;
if     [[       "$HOSTNAME" == "" ]]; then       export HOSTNAME=$(hostname);fi;  #`hostname`retnz fsckd nwlInz\n4CygWinzRxvt... ||smthng els lame  =(
if     [[       "$HOST"     == "" ]]; then       export HOST    ="$HOSTNAME";fi;export VERBOSE='1'; # set flag to print debug && status info from system utilz
if     [[       "$HOST"     != "" ]] &&  # hOpfuly stop cloberng Docker contAner /etc/zsh/zprofile set of $HHst && error failing Zsh run wi: "Oni not found"!;
       [[       "$HHst"     == "" ]]; then       export HHst="$HOST";fi;export HPgr=$(which  most); # mIt prEfer lS (less) wi SKp colrng AbiliTz||mkmyOwnl8r?;
export     HHom="$HOME";alias lc="tr 'A-Z' 'a-z'";alias uc="tr 'a-z' 'A-Z'"; # || mayb atMpt2dup $var thru: $(echo $var|tr 'A-Z' 'a-z') | "[:(upp|low)er:]"
export     HUsr="$USER";export HAEd=$(which nvim);export HWid="$COLUMNS";export HOSy="$OS"; # zsh's lc() 4varz2 m//i "${(L)HOSTNAME}"acordng2:
export     HShl="$SHELL";export HEdt=$(which vim);export HHit="$LINES";  export HOTy="$OSTYPE";export H3WF="0"; #HTTP://WWW.CS.Elte.Hu/zsh-manual/zsh_6.html
export  COLUMNS="$COLUMNS";export  LINES="$LINES";export ROWS="$LINES";alias hn='hostname'; # zsh setz thEse lOcally but must Xport thM 4 Perl scriptz 2 access
# Used2 if [[ "${(L)HHst}" == ax9*]]; then export HHst='Ax9'; elif ... 2abbreV8&&capitalIz myhOst&&UzrnAmz fromold dvl&&work machinz especially4CygWindoze;
# XDG (Xorg baseDirzGuide)4:GTK2,Compiz,Uzbl,Arora,Audacious,TrollTech,etc. from: HTTP://Standards.FreeDesktop.Org/basedir-spec/basedir-spec-latest.html
export XConfHom="$HOME/.config";     export XConfDrz="/etc/xdg";alias mkt='mktemp';export XDG_CONFIG_HOME="$XConfHom";export XDG_CONFIG_DIRS="$XConfDrz";
export XDataHom="$HOME/.local/share";export XDataDrz="/usr/local/share:/usr/share";export   XDG_DATA_HOME="$XDataHom"; #port   XDG_DATA_DIRS="$XDataDrz";
export XCachHom="$HOME/.cache";      export XSESSION='Gnome'   ;                   export  XDG_CACHE_HOME="$XCachHom";export XDG_MENU_PREFIX='gnome-';
export XDataDrz="$XDataDrz:/var/lib/flatpak/exports/share:$XDataHom/flatpak/exports/share"                           ;export   XDG_DATA_DIRS="$XDataDrz";
# N26L8989:append flatpak share dirz for handbrake video transcoder && whatever other desktop app packages to be installed through flathub or similar;
export SNAP_USER_DATA="$XDG_DATA_HOME/snap"; # J54MISNA:HTTPS://Bugs.LaunchPad.Net/ubuntu/+source/snapd/+bug/1575053 HTTPS://AskUbuntu.Com/questions/882562 ;
if     [   -z  "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then   # set variable IdNtifyng the chroot U wrk in (Used in prmpt bElO)
  debian_chroot=$(cat                         /etc/debian_chroot) ;   fi;
export HOa8='Octology::a8';export HOb8='Octology::b8';export HOc8='Octology::c8';export HOd8='Octology::d8'; # Perl Octl Module nAme abbrEV8ionz 4 abcd8 Ufk8;
export HOU8='Octology::U8';export HOf8='Octology::f8';export HOk8='Octology::k8';export HTHi='Time::HiRes' ;
alias xprt='export';alias Xp='export'; # even shorter versions of export command which might need 2 become functions 2 avoid multi-pRam unwantd aliasXpansion?;
# BlO  TMP from HTTPS://StackOverFlow.Com/questions/2435062/what-happened-to-the-tmp-environment-variable (mAB add -d -t 2 mktemp call aftr rEding man pgz?);
export TMP="${TMP:-$(dirname $(mkt  -u))}/"; # OvrIdDflt /tmp wi ~/.tmp if the latter Xistz, thN Xport othr 3 common ENV varz which mIt B Used 2 design8 TMP;
if     [[  -d   "$HOME/.tmp"        ]]; then  export      TMP="$HOME/.tmp/";fi;export TEMP="$TMP";export TMPDIR="$TMP";export TMPPREFIX="$TMP";
export EDITOR="$HEdt";export PERL5LIB="$HOME/lib:$HOME/lib/perl5/lib/perl5/x86_64-linux-gnu-thread-multi:$HOME/lib/perl5/lib/perl5:./lib";
        PAGER="$HPgr";export PERL_TEST_POD='1'   ;export PERLDOC="-w width:$COLUMNS"; #pdoc;`which most`||PAGER=`which less`||PAGER=`which more`;export PAGER;
                      export PERL_TEST_CRITIC='1';export PMARSHOME='/usr/share/games/pmars/macros'; #fyn,letz get crit! ;) && pmars-sdl needz its macroz;
                      export SDL_VIDEO_CENTERED='center'; #xport SDL_VIDEO_WINDOW_POS='x,y'; try2cNtrSDLapzfrom: HTTP://SDL.Beuc.Net/sdl.wiki/SDL_SetVideoMode
#                     export SDL_WINDOWPOS_CENTERED='1' ; #                   try 2 center SDL applic8ionz from:
#                            HTTP://Wiki.LibSDL.Org/moin.cgi/SDL_SetWindowPosition?highlight=%28\bCategoryVideo\b%29|%28CategoryEnum%29|%28CategoryStruct%29
export RAKULIB="$HOME/lib/raku"; # nEds2B comma-sepR8d,!colon I think; # SKpz:\033 \x1b \u001b \27 \e mAB Ndngin:\007 \x07 \u0007 \7 \a (OctHexUnicodDecAscii);
# HTTPS://YouTu.be/3T2Al3jdY38&t=492  "Weaponizing ANSI Escapes" N9F:0eU0 Bash(&& Zsh?) prefers Octal, Python Hex, Java/JavaScript Unicode, PowerShell Decimal;
alias  ec='echo ';alias eE='ec -E';alias enE='en -E';alias eEn='enE'; # if -E (supposedly default?), back-slash (bkslsh) escape-codes interpret8ion: disabled ;
alias  en='ec -n';alias ee='ec -e';alias ene='en -e';alias een='ene'; # if -e escape interprt8ion enabled for:\\ bkslsh,\a alert(BEL),\b bkspc,\c no-mor-outpt,
alias  pf='printf';alias P='pf';   alias ece='ec -e';alias eec='ece';alias F='P'; # why want spaced-some str-print-4m@d 4 F just in Pi8.pm or ec en chomp o89?;
# \e escape, \f form-feed, \n new-line, \r carriage-return, \t horizontal-tab, \v vertical-tab, \0NNN byte-wi-octal-val-NNN(1to3digits), \xHH byte-Hexa-val-HH;
# Note:Your shell may have its own version of echo, which usually supercedes version described in `m echo`. Please refer 2 shL dox 4 DtAlz about suportd optnz;
#xport bk="\e[40m"   ;export br="\e[41m"   ;export bo="\e[43m"   ;export by="\e[43m"   ;export bg="\e[42m"   ; # L13LCuts: bkslsh SKpz here had2go literal BlO;
export bk="[40m"   ;export br="[41m"   ;export bo="[43m"   ;export by="[43m"   ;export bg="[42m"   ; # set isol8d bkgrnd codez;
export bc="[46m"   ;export bb="[44m"   ;export bm="[45m"   ;export bp="[45m"   ;export bw="[47m"   ;
export  k="[22;30m";export  r="[22;31m";export  o="[22;33m";export  y="[22;33m";export  g="[22;32m";export z="[00m"; #XLBJ Xport d8:L (2021)BlkJk;
export  c="[22;36m";export Sb="[22;34m";export  m="[22;35m";export  p="[22;35m";export  w="[22;37m"; # low-z zeroReset #XLBJ SKp21 a8-styl colrcodz;
export  K="[01;30m";export  R="[01;31m";export  O="[22;33m";export  Y="[01;33m";export  G="[01;32m";                   #XLBJ TEN10 BRIGHT FOREGRNDZ;
export  C="[01;36m";export  B="[01;34m";export  M="[01;35m";export  P="[22;35m";export  W="[01;37m";                   #XLBJ Purpl=dRk-M,Orng=dRk-Y;
export hK="[100m"  ;export hR="[101m"  ;export hO="[103m"  ;export hY="[103m"  ;export hG="[102m"  ; # can:export W=$'\e[01;37m'; nstdof literalSKp;
export hC="[106m"  ;export hB="[104m"  ;export hM="[105m"  ;export hP="[105m"  ;export hW="[107m"  ; # set high-intensity (bg);
export HK="[90m"   ;export HR="[91m"   ;export HO="[93m"   ;export HY="[93m"   ;export HG="[92m"   ; # set HIGH-INTENSITY (FG);
export HC="[96m"   ;export HB="[94m"   ;export HM="[95m"   ;export HP="[95m"   ;export HW="[97m"   ; # d8bo BlO just scalar or hash-key? Look-it-up!;
alias     pla=" perl  -M$HOa8         -M$HTHi -CS    -E"; #   ... but may need function to include "binmode STDOUT,':utf8'" somehow? # nEdz dF 1st?!;
export D0=$(pla 'o8 $d8cS[0]');export D4=$(pla 'o8 $d8cS[4]');export D2=$(pla 'o8 $d8cS[2]');export D6=$(pla 'o8 $d8cS[6]'); # d8cS 0..7     &&  d8bo  ;
export D1=$(pla 'o8 $d8cS[1]');export D5=$(pla 'o8 $d8cS[5]');export D3=$(pla 'o8 $d8cS[3]');export D7=$(pla 'o8 $d8cS[7]'); #port D8=$(pla 'o8 $d8bo'); # 2du;
export HpPF='0'; # set 8sh "H" profilePicker Flag to 1 to popul8 base single-char color variablez with l8st d8bo entries as desired override of standard Dfltz;
# if setng 2 1,rEmMbr th@ all thEz baktix BlO R super slO evry tIm Zsh stRtz up or I run src sO probably mk fastr somehow B4 NAblng this stuf th@z barely Uzd!;
#      [[       "$HUsr"     == *I   ]]; then  # try to remember that non-"pip" users are not going to see these profile-based changes when sourcing this file!;
if     [[       "$HpPF"     == "1"  ]]; then export R=$(pla 'o8 $d8cS[0]');export C=$(pla 'o8 $d8cS[4]');
  export        O=$(pla 'o8 $d8cS[1]');      export o=$(pla 'o8 $d8cS[1]');export B=$(pla 'o8 $d8cS[5]');
  export        p=$(pla 'o8 $d8cS[7]');      export Y=$(pla 'o8 $d8cS[2]');export M=$(pla 'o8 $d8cS[6]');
  export        P=$(pla 'o8 $d8cS[7]');      export G=$(pla 'o8 $d8cS[3]');fi; # ck H pickProfileFlag 4 custom base-color Xportz;
paCz() {pla '@c=split(//, "krOygcBmPw KRoYGCBMpW " );for(@c){if(/\s/){print "\n";}else{$E=sS("e",$ENV{"$_"});$e=sS("e","${$_}");chop($E);chop($e);$E=~s/\[//;$e=~s/.*;//;$e=~s/^00(\d)$/  $1/;$e=~s/^0(\d\d)$/ $1/;print "$_:$E $e;  "}}';} # PerlPrntAll a8 ColrZ (from %ENV Xportd abov mABjustOrig16 && .pm DfInd up2 255?);
# PerlPrntAll a8 ColrZ (from %ENV Xportd abov mABjustOrig16 or up2 255 if lOded pP wi $HpPF == 1 but .pm stil kEpz singl d8bo varz orig && duz! lOd thM wi pP);
paCZ() {pla '@c=split(//,"krOyg cBmPw KRoYG CBMpW ");for(@c){if(/\s/){print "\n";}else{$E=sS("e",$ENV{"$_"});$e=sS("e","${$_}");chop($E);chop($e);$e=~s/.*;//;
             $E=~s/\[//;$E=~s/^(01;)\1+/$1/;$E=~s/^(01|22);(3[0-7])$/$1;$2      /;$e=~s/^00(\d)$/  $1/;$e=~s/^0(\d\d)$/ $1/;print "$_:$E $e;  "}}';}
pacZ() {pla 'for(0..7){$e=sS("e",$d8cS[$_]);chop($e);$e=~s/^\[//;$e=~s/^(01;)\1+/$1/;$E=$e;$E=~s/(^|;)(01;)?38;5;0*(\d+);?(\d+|$)/$1$3 $4/;print "$e\n"}';}
pacz() {pla 'for(0..7){$e=sS("e",$d8cS[$_]);chop($e);$e=~s/^\[//;$e=~s/^(01;)\1+/$1/;$E=$e;$E=~s/(^|;)(01;)?38;5;0*(\d+);?(\d+|$)/$1$3\t$4\t/;print $E,$sgrn{$4},"\n"}';}
# #y($C,$B,$M,$P,$p)=(S($cmsp{'d8bo'}[4]),S($cmsp{'d8bo'}[5]),S($cmsp{'d8bo'}[6]),S($cmsp{'d8bo'}[7]),S($cmsp{'d8bo'}[7])); # just S on cmsp mIt!getFDALorSGRz;
# my($R,$O,$o,$Y,$G, $C,$B,$M,$P,$p)=($R,$O,$o,$Y,$G, $C,$B,$M,$P,$p); # just init own cp of orig a8.pm Xportz in case Dfalt prOfIl colrz RUzdBlO;
#   ($R,$O,$o,$Y,$G, $C,$B,$M,$P,$p)=($d8cS[0],$d8cS[1],$d8cS[1],$d8cS[2],$d8cS[3], $d8cS[4],$d8cS[5],$d8cS[6],$d8cS[7],$d8cS[7]) if($ppcf); # hopefuly tmplOd;
# HCSL8BCz:nOte th@ all thEse new minimal var nAmz 4 color-codes have a good chance of collIding in minimal shL-script Usagez DfInd l8r BlO, sO try2B careful;
clrz() {
  if   [[       "$HWid"    -lt  160 ]]; then # prnt tSt set 4 bSt mAjor colr-cOdz 2 suport && try2 fit at least pretty well within 80 or 160-wId termz 2 stRt;
    ee  "${z}nOte:lOwr-cAse b OnlyDfInd2B Sb 2avoid glObal sort perl var;
 hK:$hK#$z; hR:$hR#$z; hO:$hO#$z; hY:$hY#$z; hG:$hG#$z; hC:$hC#$z; hB:$hB#$z; hM:$hM#$z; hP:$hP#$z; hW:$hW#$z;
 bk:$bk#$z; br:$br#$z; bo:$bo#$z; by:$by#$z; bg:$bg#$z; bc:$bc#$z; bb:$bb#$z; bm:$bm#$z; bp:$bp#$z; bw:$bw#$z;
  k:$k#$z;  r:$r#$z;  o:$o#$z;  y:$y#$z;  g:$g#$z;  c:$c#$z; Sb:$B$Sb#$z;  m:$m#$z;  p:$p#$z;  w:$w#$z;
  K:$K#$z;  R:$R#$z;  O:$O#$z;  Y:$Y#$z;  G:$G#$z;  C:$C#$z;  B:$Sb$B#$z;  M:$M#$z;  P:$P#$z;  W:$W#$z;
 HK:$HK#$z; HR:$HR#$z; HO:$HO#$z; HY:$HY#$z; HG:$HG#$z; HC:$HC#$z; HB:$HB#$z; HM:$HM#$z; HP:$HP#$z; HW:$HW#$z;";
  else
    een "${z}nOte:lOwr-cAse b OnlyDfInd2B Sb 2avoid glObal sort perl var;    k:$k#$z;  r:$r#$z;  o:$o#$z;  y:$y#$z;  g:$g#$z;  c:$c#$z; Sb:$Sb#$z;  m:$m#$z;  p:$p#$z;  w:$w#$z;
 bk:$bk#$z; br:$br#$z; bo:$bo#$z; by:$by#$z; bg:$bg#$z; bc:$bc#$z; bb:$bb#$z; bm:$bm#$z; bp:$bp#$z; bw:$bw#$z;    K:$K#$z;  R:$R#$z;  O:$O#$z;  Y:$Y#$z;  G:$G#$z;  C:$C#$z;  B:$B#$z;  M:$M#$z;  P:$P#$z;  W:$W#$z;
 hK:$hK#$z; hR:$hR#$z; hO:$hO#$z; hY:$hY#$z; hG:$hG#$z; hC:$hC#$z; hB:$hB#$z; hM:$hM#$z; hP:$hP#$z; hW:$hW#$z;   HK:$HK#$z; HR:$HR#$z; HO:$HO#$z; HY:$HY#$z; HG:$HG#$z; HC:$HC#$z; HB:$HB#$z; HM:$HM#$z; HP:$HP#$z; HW:$HW#$z;"; fi; }
# 99RJGN8g:from old gN2 root@Ryu`em xinit`:IfUUse`startx`nstd ofa login mngr like gdm/kdm,Ucan set XSESSION 2anythng in /etc/X11/Sessions/ or any executable.
#   wNU`startx`,itwilrunthis astheloginsession.Ucan set this ina filein /etc/env.d 4NtIrsys,orsetit perUser in ~/.bash_profile (or similR4othr shLz). Xamplof
#   setng4wholsys:`echo XSESSION="Gnome" > /etc/env.d/90xsession; env-update && source /etc/profile`; EBJLAkY8:AkuUbu14.10 nolongrhas thOsdirz sOprolyunUsed;
export  NVM_DIR="$HOME/.config/nvm"; # L6TMEXIC:strtd setngup GitHub nvm to run Beppu-san's MAD-Sci-Lab/ta/bin/mexico to obtain TradeActivity candle-d8a JSON;
#[ -s  "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"; # sources the shell-script to load nvm (with the templ8 from bash originally, which should work fine4 zsh);
export JAVA_HOME='/usr/lib/jvm/default-java';export LLVM_INSTALL_DIR='/usr/include/llvm';     # D7PM1TjA:upd8d4Ubu13.04&&ant4Android dvl 2add2pathBlO
#xport NODE_VERSION='v10.16.0'; # J5BMGHVf:NodeJS installed into /usr/local/lib/nodejs/node-v10.15.3-linux-x64/ according to:  J6KM5W16:upd8d to LTS version;
#xport NODE_VERSION='v18.17.0'; # N7KMNODE:used `~/dvl/t8/node/nodebrew install v18.17.0` after `md ~/.nodebrew/src` so it could download the src pkg;
export NODE_DISTRO='linux-x64';alias  erd='expo r d80k';alias epd='expo p d80k'; #   HTTPS://GitHub.Com/nodejs/help/wiki/installation instructionz; r=start
                               alias xord='erd';  alias xopd='epd';alias xo='expo';  # used to prefer xo => expo, but 4-char is already short enuf; p=publish
alias vb='vbox';alias vbox='apulse virtualbox';alias kb='keybase'; # apulse quells PA init warning but still no audio plays from the guest yet; ## Super-KB!;
alias EMx='/snap/emacs/current/usr/bin/emacs'; # --version 28.2 2022 … not sure how to install Doom with the snap, so have to ^X^C to eXit;
alias EM='                             emacs'; # --version 26.3 2019
alias eM="EM -g '${COLUMNS}x${ROWS}'"; # runs DoomEmacs;
alias e=' eM -nw'; # using -nw for NoNewWindow to run in calling terminal instead of spawning own new graphical window like above just EM;
ulimit  -c 65536; # 33,553,920-bytes # setz coredump size limit2 32MB (4Dbugng) wher #-param is *512-byte blox or 'unlimited' canBUsed  # /opt/Qt5.13.1-pnp/bin
typeset -U path ;path=($HOME/bin $HOME/.local/bin /usr/local/sbin /usr/sbin /sbin   .  $HOME/dvl/t8/raku/rakudo-moar-2022.12-01-linux-x86_64-gcc/bin
  $HOME/dvl/t8/raku/rakudo-moar-2022.12-01-linux-x86_64-gcc/share/perl6/site/bin       $HOME/.cargo/bin $HOME/.emacs.d/bin $HOME/.nodebrew/current/bin
  /usr/local/bin /usr/bin /bin /opt/bin $HOME/lib/perl5/bin $HOME/lib/Octology/f8/pal8 $HOME/dvl/t8/dmd/linux/bin $HOME/.vim/bundle/vim-superman/bin $path);
# old:atmptd2nstl DMDv2.052 on Java7OpenJDK && GoogleAndroid-18 (4.2), now J5BMGPOM:tryng2setup l8st NodeJS 4 React_n8ive Expo d8ok nstdof nodebrew hopefully;
#          path=($path  $HOME/dvl/t8/node $HOME/.nodebrew/current/bin );export path; # I7CMBrew:got GitHub NodeBrew 4NodeJS; Not sure why src doesn't get this?
#          path=($path  $HOME/dvl/jobz/InnovationProtocol/Android/Android-Google-Linux_x86-SDK-1.6_r1-99GFQiD/tools); # old2009GoogleAndroid dvlpmnt-toolz path
#f   [[ -d             "$HOME/.rakudobrew/bin" ]]; then # examples prepended Rakudo's bin/ to $PATH but I'd rather append them for now (if bin/ dir is found)
#          path=($path  $HOME/.rakudobrew/bin $HOME/.rakudobrew/moar-nom/install/share/perl6/site/bin              ); # G1NLJQKA:try out RakudoBrew for Perl6
# eval               "$($HOME/.rakudobrew/bin/rakudobrew init -)"; fi; fi # this shud lOd RakudoBrew autOmaticly with new shells (Xample said add 2 .profile)
#          path=(       $HOME/lib/site/PerlBrew/bin   $HOME/lib/site/Perlbrew/perls/current/bin               $path); # CrAzY PerlBrew wanting2crE8 perl5 in~!
export AUTHOR_TESTING='1'; # export    PERLBREW_ROOT="$HOME/lib/site/PerlBrew";                                       #   ... && 2prEpNd th@+/perlbrew/**/bin!
export PERL_LOCAL_LIB_ROOT="       $HOME/lib/perl5";export QT_XCB_DEBUG_XINPUT_DEVICES='1'; # HTTPS://Wiki.Qt.IO/Building_Qt_5_from_Git#Getting_the_source_code
export PERL_MB_OPT="--install_base $HOME/lib/perl5";alias pnp='/opt/Qt5.13.1-pnp/examples/widgets/tools/plugandpaint/plugandpaint &'; # JCKLFIXR:Works well!;
export PERL_MM_OPT="  INSTALL_BASE=$HOME/lib/perl5";      # I know these && path below were slightly different on Ryu, && Aku hasn't even needed lib/perl5;
export CHROME_USER_DATA_DIR="$HOME/.chrome";              # G1NL5XYZ:Used2hv2vim /opt/google/chrome/google-chrome &&nsrt cd /tmp B4 last blok aftrEch upd8;
export LD_LIBRARY_PATH="/usr/local/lib:/usr/local/lib/lua/5.2:/usr/lib:/usr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH"; #:/opt/Qt5.13.1-pnp/lib"; # JCJLM4LD:Added opt 2C if bilt Qt could run krita AgN;
export LUA_PATH='/usr/local/share/lua/5.2/?.lua;/usr/local/share/lua/5.2/?/init.lua;/usr/local/lib/lua/5.2/?.lua;/usr/local/lib/lua/5.2/?/init.lua;/usr/share/lua/5.2/?.lua;/usr/share/lua/5.2/?/init.lua;./?.lua;./?/init.lua;/home/pip/.luarocks/share/lua/5.2/?.lua;/home/pip/.luarocks/share/lua/5.2/?/init.lua';
export LUA_CPATH='/usr/local/lib/liblua.so;/usr/local/lib/lpeg.so'; #/usr/lib/x86_64-linux-gnu/liblua5.2.so;/usr/local/lib/lua/5.2/?.so;/usr/lib/x86_64-linux-gnu/lua/5.2/?.so;/usr/lib/lua/5.2/?.so;/usr/local/lib/lua/5.2/loadall.so;./?.so;/home/pip/.luarocks/lib/lua/5.2/?.so';
export PKG_CONFIG_PATH="/usr/lib/pkgconfig"; #xport QML_IMPORT_TRACE='1';  # E2LLATsm:PkgCnfgPth Added4SrcHiLite; ## belo aliases may no longer work aftr mvd;
alias vpnp="cd $HOME/.mk/qt5/qt5.13.1/qtbase/examples/widgets/tools/plugandpaint;g8f;cd app;vim *.*;gas"; #thN `gcm $MSG` g8co -b 5.13.1-pnp origin/5.13.1;
alias mpnp="cd $HOME/.mk/qt5/Qt5.13.1-pnp;./config.status -recheck-all;cd qtbase/examples/widgets/tools/plugandpaint;mkcl;mkj;smi;pnp "; # v ed,m mk&&instl
alias vtab="cd $HOME/.mk/qt5/qt5.13.1/qtbase/examples/widgets/widgets/tablet    ;g8f;       vim *.*;gas";alias tab='qtx'; #thN run ( gcm "`d8`:$CkInMsg" )
alias mtab="cd $HOME/.mk/qt5/Qt5.13.1-pnp;./config.status -recheck-all;cd qtbase/examples/widgets/widgets/tablet    ;mkcl;mkj;smi;qtab"; # v ed,m mk&&instl
alias qtab='/opt/Qt5.13.1-pnp/examples/widgets/widgets/tablet/qttablet &'; # ~/dvl/g8/jack/qt5.13.1/qtbase/examples/widgets/widgets/tablet as better 4 pressure
alias  qtx="   $HOME/dvl/m8/qtx/qtx &"; # my extracted Qt Tablet eXample executable in the same directory as the source, project, resources, && Makefile
# HTTP://0Pointer.De/blog/projects/serial-console.html describes setting up a custom agetty on a serial TTY with the following commands:
# cp /usr/lib/systemd/system/serial-getty@.service /etc/systemd/system/serial-getty@ttyS2.service
# ec "mk chngz 2 agetty cmnd line";             vi /etc/systemd/system/serial-getty@ttyS2.service ; ec "cud syc enable serial-getty@ttyS2.service nstd of cp"
# ln -s /etc/systemd/system/serial-getty@ttyS2.service /etc/systemd/system/getty.target.wants/ ; syc daemon-reload ; syc start serial-getty@ttyS2.service
alias scdr='syc daemon-reload';alias sycdr='scdr';  # yats BlO shud quik shO tSt dur8ion times && will gNr8 Logz 4 tImngz && try2managNr8d pathz&&symlnx…;
alias pet=" pe '"'$h=$r;$h=~s/(\[)/\\$1/g;$f=S(q(fbBL));s/$h/$f/g;s/(\.{4,})/$B$1$z/g;s/(\.{3})/$C$1$z/g;$Z=S(q(:BDI));
  s/\b(\d\d?\d?)\.(\d\d?\d?)\.(\d\d?\d?)\.(\d\d?\d?)(\/)?(\d?\d?)\b/$Z$d8cS[5]$1$O.$d8cS[2]$2$O.$d8cS[3]$3$O.$d8cS[0]$4$Y$5$u$6$z/g;s/(ipv4)/$s$1$z/gi;
                    $d=$g;$d=~ s/(\[)/\\$1/g;s/$d/S(A)/ge;s/(\d+)(\.)(\d\d)(\d{0}\s?s(econds)?)/$d8cS[7]$1$W$2$d8cS[7]$3$p$4$c/gi;$T=S(q(X));$S=S(q(S));
  s/(usr)(:?)/$U$1$o$2$B/g;s/(sys)(:?)/$S$1$P$2$S/g ;     s/(\d+)(\.)(\d\d)(\d{3})?(s?(ecs)?  )/$d8cS[1]$1$R$2$d8cS[7]$3$P$4$M$5$c/gx;       $F=S(q(F));
  s/([=()+<>|#]+)/$Y$1$B/g;s/(PASSED    )/$G$1$g/gix;     s/(\d+)(\.)(\d{2,5})(     s         )/$d8cS[6]$1$Y$2$d8cS[6]$3$w$4$o/gx;$t=S(q(t));$U=S(q(5));
    $s=S(q(:BUILDOK));     s/(Fail\S*   )/$F$s$1$z$T/gix; $u=S(q(mkI));$E=S(q(E));$e=S(q(rKI));$L=S(q(LkUA));$v=S(q(vbBC));$l=S(q(Ld:PbBID));$A=S(q(A));
  s/\s(Wall|CPU)\s(Time:)/$1  $2/g;s/(-{12})/$G----$C----$B----/g;s/(-{8,11})/$U$1/g;s/([^-])(--)([^-])/$1$z$R$2$B$3/g;s/([^-])(-^)([^-])/$1$u$T$2$u$3/;
  s/([.,*%\^]+\s)/$O$1$K/g;s/(C[OP]UN?T?)/$C$1$o/gix;s/(Time )/$T$1$y/gix;s{([^\s/;]*\D[^m])(/)}{$d8cS[5]$1$d8cS[2]$2}g;s{(/)([^\s\e/;]+)}{$1$u$2$z}g;
  s/(Startup  )/$S$1$m/gix;s/(Events    )/$E$1$o/gix;s/(Total)/$W$1$R/gi ;s/(File )/$F$1$M/gix;s/(\s)(job\S*\s*)(\d*)/$1$w$2$G$3$z/gi;
  s/(Cleanup  )/$R$1$w/gix;s/(Result    )/$e$1$p/gix;s/(\*\*+)/$B$1$z/g  ;s/(symlinked)( to)?/$S$1$t$2$c/gi;s/(\s)(c(usr|sys)?:?)/$1$C$2/g;
  s/(version  )/$v$1$g/gix;s/(Linux     )/$L$1$O/gix;s/(Perl )/$l$1$m/gix;s/ ok /$z$e$s ${o}o${K}k$v $z$A/gi;s/ok(\s+)(\d\D)/$z${O}O$e${k}K$l$1$o $2$z/gix;
  s/([suce]{7})/$s$1$z/gix;s/(Tests?    )/$T$1$A/gix;s/(\S+)(\.)(t|p[lm])(\s|$)/$u$1$s$M$2$G$3$z$4/gi;s/\b(net(work)?|addr(ess)?|route)\b/$l$1/gi;
  s/\b([0-9a-f]{2}):([0-9a-f]{2}):([0-9a-f]{2}):([0-9a-f]{2}):([0-9a-f]{2}):(\S*)/$R$1$w:$o$2$w:$Y$3$w:$G$4$w:$C$5$w:$B$6$w$M$7$z/g;
  s/\b([0-9a-f]{4}):([0-9a-f]{4}):([0-9a-f]{4}):([0-9a-f]{4}):([0-9a-f]{4}):([0-9a-f]{4}):(\S*)
   /$d8cS[0]$1$w:$d8cS[1]$2$w:$d8cS[2]$3$w:$d8cS[3]$4$w:$d8cS[4]$5$w:$d8cS[5]$6$w:$d8cS[6]$7$w:$d8cS[7]$8$z/gx;$Z=q( 2du:possible keywordz from ipp 2 colr 2:
   brd pci link scope inet6 global dynamic temporary mngtmpaddr noprefixroute (vali|preferre)d_lft qdisc noop state forever   gso_max_segs parentdev host qlen
 TX RX:   bytes  packets errors dropped  missed   mcast carrier collsns  lo promiscuity minmtu maxmtu numtxqueues numrxqueues gso_max_size parentbus DOWN mq);
  s/ok(\s+)(\d\d    \D)/$z${o}o$u${K}k$z$1$y$2$S/gix;s/ok(\s+)(\d\d\d)(\D)/$z${O}O$e${k}K$z$1$G$2$z$A$3/gix;s/(Wall)/$W$1/gi;s/(clock)/$c$1$K/gi;
  $q=chr(39);s/($q)(test|short)\1/$C$1$y$2$C$1$g/g;s/(Tag(ged)?)/$T$1$z/gi;s/(Default|Yath|Command|Summary)/$s.S($sb256[int(rand(26))+10]).$1.$z/gie;
  s/(:?\s+)([SMTWF][uouehra][neduit]\s+)?([JFMASOND][aepuco][nbrylgptvc]\s+)(\d+\s+)(\d\d?):(\d\d):(\d\d)\s+(\d{4})
   /$z$R$1$d8cS[2]$2$d8cS[1]$3$d8cS[2]$4$d8cS[4]$5$w:$d8cS[5]$6$w:$d8cS[6]$7 $d8cS[0]$8$z/gix; # Sun Mar 17 16:00:46 2024?;
  s/(\.\.)/$G$1$z/g;'"'";export Hpef='1'; # just set perl pipe exec thru test transl8ionz; Xport Flag for pet filter;
      fpt(){if  [[ "$Hpef" != "" ]]; then for Hptf in `ls t/*.t`; do pl $Hptf|pet; done;
                                     else for Hptf in `ls t/*.t`; do pl $Hptf    ; done; fi; }; # For-loop on Perl-Testz (sinc `pl t/*.t` only runz 1st t);
      y8h(){if  [[ "$Hpef" != "" ]]; then yath $@|pet; # try2fix dRk g on k YATH -T colr (&& othrz just ad colr plus 4m@),but want2skip .hidn stAgd tStz2sO?;
                                     else yath $@    ; fi; }; # hopefully export Hpef=   (MpT) shud cauz y8h 2 run all norm colr out (nstd of thru pet Dflt);
alias yatt='y8h  times .last.jsonl';alias y8H='y8h help';export Hyep="--exclude-pattern='/\\.|\\.bak' -T";
alias yatx="yath $Hyep   ";alias y8x='fpt;prv;yatx';alias yA='y8x'; # mAB yatx is lIk running: `Hpef= y8h $Hyep` (-L ?) to not filter out thru pet;
alias yats='y8h  --durations=.dur8.json  --generate-durations-file=.dur8.json  --pretty speedtag .last.jsonl';alias  prv='prove'; # BlO y8h $Hyep was orig yatx
alias yatl="y8h  $Hyep -L;d8=\$(d8);cp .dur8.json  .log/$d8.json ;yatt;tmp='had yata yatbcdfgklmnpqrst sepR8d per-?8.pm B4 but just loop letrz nstd Cmz betr;';
 mv lastlog.jsonl .last.jsonl;cp .last.jsonl .log/$d8.jsonl;yats;"; # mAB just   abcdfp iz gud stRt && wil probably B long tIm B4 tStz get in2 n8 && t8 modulz;
      y8a(){   for Hmpl in  a b c d                    ; do pu "$HOME/dvl/$Hmpl"8 >/dev/null;yatl;  prv|pet; # '$h=$r;$h=~s/(\[)/\\$1/g;$f=S(q(fb));s/$h/$f/';
                 for Hptf in `ls t/*.t`; do if [[ "$Hpef" != "" ]]; then pl $Hptf|pet; else pl $Hptf; fi; done; # O42MHTAY:C ~/dvl/a8/t/.bak/bats-O42.u8 4shL;
        #if    [[  -d    t         ]]; then cd   t; # mAd bAsic raw pl test runz colr filtr thru almOst sAm pe as y8h() abov sO Xtract comon pe 4 bOth thN…;
        #  if  [[ "`ls *.t`" != "" ]]; then pl *.t|pet; fi; fi; #H8shLoModulPrecursorLetr loop && 3wAz2run sAm tStz but mAB justYATH iz betr than prvpl *.t ?;
         po >/dev/null;done; }; # 2du:figUrout wher all dRk BLk bLU rED gRN R mAd brIt viz betr 4 all prv && yath rEsultz; nOt:prove or just exec pl *.t ?;
alias   at='y8';alias y8='y8a'; # All A8 And AutoAttributez Triple-TesTed TogeTher; # 2du:mk some clEnr 4 .log fIlz of mOstly duplic8 tSt run d8a Only new tIm;
alias sdab='sda  blame';alias sda='systemd-analyze';alias slsa='syc list-units --type service --all   ';alias jcf='jc -f'; # not SCSI-Disk-A (like in /dev/);
alias sctl='syc';alias pctl='pavucontrol';alias jctl='journalctl';alias actl='alsactl';alias cctl='cdc';alias jcb='jc -b';alias jcp1='jc _PID=1'; #!JesusChrist
alias slts='syc list-unit-files --type=service';alias jc='jctl'; # readd from `d8 G5I` Rticl HTTPS://Linux.Com/tutorials/cleaning-your-linux-startup-process ;
alias sysc='  systemctl';alias syc='sysc  '; # systemd control:`syc list-unit-files --type=service|gi (en|dis)able|mask|static`,`syc stop|disable|mask|status`
alias  cdc='coredumpctl';alias cdr='cdc -r'; # seg-fault core-dumps, with useful params -r Reverse, -S $DATE Since YYYY-MM-DD date, --no-pager 4 just STDOUT;
alias  cds='cdc -S';alias cdS='cds';alias cdsK='cds 2020-01-01'; # shortcuts for doing --since=$DATE && cdsK does since `d8 K11` for everything Year 2020 on;
alias   dn='drnm  ';alias drnm='dirname   '; # to view %ENV in zsh, $IFS NUL requires `set | grep -a` 2 procS bInary as-if --text or `printenv | grep TMP`?;
                                                 export TZ='America/Chicago'; # .. which is the same as my /etc/timezone file && maybe CDT -5 at D8FCQgn;
#xport DST='0'; watch=(notme);                  #export TZ='CST';     # DaylightSavingsTime?;                            | Coordinated Universal Time (UTC|GMT)
#f   [[ "${(L)HOTy}" ==         cygwin* ]]; then export TZ='PST'; fi; # United States of America / Los Angeles (PST|PDT) | Coordinated Universal Time (UTC|GMT)
# J5FMLoTH:HTTPS://AskUbuntu.Com/questions/359753/gtk-warning-locale-not-supported-by-c-library-when-starting-apps-from-th said case-sensitiv locale stuff BlO;
export LANG='en_US.UTF-8';export LC_ALL="$LANG"; export LC_CTYPE="$LANG";export LANGUAGE="$LANG"; # orig mA hav nEded thEs lang setngz4 urxvt?
export LC_MESSAGES='C.utf8'; # override locale for terminal zsh to global default for messages;
export NCURSES_NO_UTF8_ACS='0'; # N1ML8CUR: set ncurses to not use Alternate CharSet since there's real Unicode box-drawing chars that render in putty fine;
# 82DJ06ZE:instead of abov relying on exported ENV variablez it seemz betr2set /etc/(env.)?d(efault)?/(02)?locale or2use `localedef` probably4mostUsecases?;
#xport TERM='linux'; # find out when explicit TERM assignment has seemed necessary (maybe for vim colors but fixed by .vimrc "set background=dark"?)
                       export PYTHONPATH='/usr/lib/x86_64-linux-gnu/krita-python-libs/krita'; # nothing set this B4 && krita wantd it,but Xprt here is!enuf;
#       `which vim`; #dflt(&&preferred)way2load my *.pm (butTaki shud nstd get i386 path)  ## above tried exporting otherwise unused but krita still warnd;
export QT_LINUX_ACCESSIBILITY_ALWAYS_ON='1';export QT_ACCESSIBILITY='1'; # not yet sure what these impact, but making a note intending to find out more l8r;
#xport      QT_QPA_PLATFORM_PLUGIN_PATH='/opt/Qt5.13.1-pnp/plugins'; #/usr/lib/x86_64-linux-gnu/qt5/plugins'; # JC9LIke9:fix libqxcb.so to 0x50D01 somehow;
alias krav='QT_QPA_PLATFORM=xcb   QT_QPA_VERBOSE=1 QT_SCALE_FACTOR=1.25 krita &'; # /usr/bin/platforms/ -> /usr/lib/x86_64-linux-gnu/qt5/plugins/platforms/;
# wayland-org.kde.kwin.qpa , dxcb,eglfs,linuxfb, minimal,minimalegl,offscreen,vnc, wayland,wayland-egl,wayland-xcomposite-egl,wayland-xcomposite-glx,xcb
alias kraw='QT_QPA_PLATFORM=wayland-xcomposite-glx QT_SCALE_FACTOR=1.25 krita &'; # test wayland; Below from HTTPS://Forum.KDE.Org/viewtopic.php?t=151602 ;
alias krit='QT_QPA_PLATFORM=xcb   QT_QPA_VERBOSE=1 QT_SCALE_FACTOR=1.2  krita &'; # scales whole Krita interface down a bit to fit my display much more nicely;
alias lddk='ldd -r =krita|cut -d " " -f 1'; # try `QT_DEBUG_PLUGINS=1   krita &` if plugins mAB core-dumping. Also QML_IMPORT_TRACE && QT_QML_DEBUG_NO_WARNING;
#xport GTK_IM_MODULE='uim'; #2uze uim-skk:`em skk-jisyo`;4DfltInptMethd add2~/.uim:(define default-im-name 'skk|anthy|*'); #2fyndIMz:`uim-im-switcher-[gq]tk?`;
#xport  QT_IM_MODULE='uim';export XMODIFIERS=@im=uim ; #export CD_ROOT="$HOME/gmz"; #Xportng CD_ROOT=~/gmz was tmp needed2`em quake3`(ioq3);mayb s/uim/scim/g;
export HCAl='--color=always';alias gica='gca -i';
export HCAu='--color=auto'  ;
export LS_OPTIONS="$HCAu"; # LsOptz: --color=always|yes|force|never|no|none|auto|tty|if-tty
export CVS_RSH=`which ssh`;export CVSROOT='/var/cvs';
dircolors=`which dircolors`||dircolors=`which gdircolors`;export dircolors;alias drc='dircolors';export COLORFGBG='default;default'; # abov Dfalt CVSRootPath..
if   [[ "${(L)HOTy}" == *bsd ]]; then alias    ls='gls $LS_OPTIONS'     ;              # .. does not exist && is pretty obsOlEt now
else                                  alias    ls=' ls $LS_OPTIONS'     ; fi # load ls/dir color resources...
if   [[ -r   "$HOME/.lsrc"   ]]; then  eval $($dircolors -b $HOME/.lsrc);    # orig also ck'd 4 m/^~\/\.(ls|dir)_colors$/i beyond .lsrc but I don't think
else                                   eval $($dircolors -b            ); fi #   I'll need to further support any of those; just init sysdefaults if!.lsrc
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
# Octology lsd8 does rEad ?? && [LM] 4 15Yrz m@chez && regUlR ls duzn't complAin; # can't put underCurl 4:3 in Bcuz conflictz wi normal colon sepR8or of p@rnz;
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
export   LS_COLORS="$LS_COLORS*.serverauth.???=22;32:*.serverauth.????=22;31:*.serverauth.?????=22;35:*.goutputstream-??????=22;31:"; #*.gout*-? duz!wrk4 `ls`;
#xport GREP_COLORS="mt=01;34"; bindkey -v; #`bindkey -e`setzEmacs-stylCmdLynEdtng; -v hazBn betRsofR4mE,butdu!4getEmaxAtaxBax; #rEmMbr"^foo^bar"subst prEv cmd;
export GREP_COLORS="ms=01;04;94:mc=01;02;33:sl=:cx=:fn=01;03;95:ln=01;92:bn=22;33:se=01;96";bindkey -v; #RoYG CBMp=>1o32 645p;RGY BMC;`gis -Hnb`shOFlNmLNumBytN
alias  grP="grep -P $HCAl"; # want grep --color=always wi Perl PCRE 2 pIp 2 lS 4 shOing colrz; 4 4mz R: -F(ixdstrz) -G(basicgrep) -E(xtndedp@rnz) -P(erlp@rnz)
alias  grp="grep    $HCAu"; # want grep --color=auto all za tym2(&&mayB`dircolrz ~/.gprc`?)&&2hv -nubTHZ?fulnSwi:Hedrfylnmz,lyNumZeroUnixTabalyndBytofstz
alias fgrep="fgrep  $HCAu"; #   ...also fgrep Fixedstr nEdz auto2; it wud B cool 2 mk perl grep from grepp&&sarep 2 auto colr multiple m@chz difrNtly;
alias egrep="egrep  $HCAu"; #   ...also egrep  # UbuTip:"Edit the command line with cut and paste: ctrl-k for cut, and ctrl-y for paste." prolyOnly4Emacs
alias rgrep="rgrep  $HCAu"; #   ...also rgrep Recursive && above is Extended Expressionz but I'm lIkly 2 prEfer -P Perl PCRE as mOst familiR syntax && BhAvior;
# nOt:pgrep iz a difrNt Utl th@ srchz runing procSz && fIndz IDz bAsd on p@rn pRamz && iz rEl8d 2 pkill && pidwait, sO try not 2 confUz it wi Perl grep -P;
alias  gpnt=' grp  -nubTH';alias gpnz='gpnt -Z';alias gca="grep $HCAl";alias xa='xargs'; # nd2tSt4nmspc cOlIdz of`gpn?`&&stuD`(perl|xargs) -0`,`(sort|grep)-z`;
alias  xapf='xa printf'; # O3GM0vPF;
# O2JLNGn8:HTTPS://YouTu.be/crFZOrqlqao "grep: A Practical Guide" # O1H:0Dr0 of Navek covering how man lsof | grep -- '-a' can use -e end pRamz 2 srch flagz;
# from`man grep`:".*Uzd wiCmdz lyk:`find -print0`,`perl -0`,`sort -z`,&&`xargs -0` 2procRbitrarEfylnamz,EvNthoz contNngNwLnz(azNulTrmN8dCstylStrzNstdOvNwLn).";
#      GREP_COLORS="ms=01;31:mc=01;31:sl=:cx=:fn=35:ln=32:bn=32:se=36" wi booleans rv && ne omitted (false). Supported capabilities are as follows:
# sl=      SGR  substring for whole selected lines (i.e., matching lines when the -v command-line option is omitted,or non-matching lines whN -v is specified).
#   If however boolean rv && -v optn R both specified,it applies2 context matching lines instead. The default is empty (i.e., terminal's default color pair).
# cx=      SGR  substring  for whole context lines (i.e., non-matching lines when the -v command-line option is omitted,or matching lines whN -v is specified).
#   If however boolean rv && -v optn R both specified,applIz2selected non-matching lines instead. The default is empty (i.e., terminal's default color pair).
# rv       Boolean that reverses (swaps) meaning of sl= and cx= when -v optn specified. Default is false (i.e., capability  is   omitted).
# mt=01;31 SGR substring for matching non-empty text in any matching line (i.e., a selected line when the -v command-line option is omitted, or a context line
#   when -v is specified). Setting this is equivalent to setting both ms= and mc= at once to same value. Dflt bold Red text F4grnd over current line bkgrnd.
# ms=01;31 SGR substring for matching non-empty text in a selected line. (This is only used when the -v command-line option is   omitted.) The effect of the
#   sl=  (or  cx= if rv) capability remains active when this kicks in.  The default is a bold red text foreground over the current line background.
# mc=01;31 SGR substring for matching non-empty text in a context  line. (This is only used when the -v command-line option is specified.) The effect of the
#   cx=  (or  sl= if rv) capability remains active when this kicks in.The default is a bold red text foreground over the current line       background.
# fn=35    SGR substring for file names   prefixing any content line. The default is a magenta  text foreground over the terminal's default background.
# ln=32    SGR substring for line numbers prefixing any content line. The default is a green    text foreground over the terminal's default background.
# bn=32    SGR substring for byte offsets prefixing any content line. The default is a green    text foreground over the terminal's default background.
# se=36    SGR substring for sepR8ors that are inserted between selected line fields (:), between context line fields, (-), and between groups of adjacent
#   lines when nonzero context is specified (--).   The  default  is  a  cyan  text  foreground  over  the  terminal's  default background.
# ne       Boolean  value  that  prevents  clearing  to the end of line using Erase in Line (EL) to Right (\33[K) each time a colorized item ends. This is
#   needed on terminals on which EL is not supported.  It is otherwise useful on terminals for  which  the  back_color_erase (bce) boolean terminfo capability
#   does not apply, when the chosen highlight colors do not affect the background, or when EL is too slow or causes too much flicker. The default is false
#   (i.e., the capability is omitted). nOt:bool capabilities have no "=..." part. They are omitted (false) by default && become true when specified;
# OldeBashStylPrmt:   PS1='%{[1;33m%}[%{[1;36m%}%n%{[1;37m%}@%{[1;36m%}%m%{[1;31m%}`pt`%{[1;34m%}%~%{[1;33m%}]%{[1;32m%}%(!.#.$) ';
# NewZshStlPmt:export PS1='%{[1;33m%}%[%{[1;36m%}%n%{[1;37m%}@%{[1;36m%}%m%{[1;31m%}`pt`%{[1;34m%}%~%{[1;33m%}]%{[0;33m%}%(!.#.$)%{[1;32m%}';
#xport PS1='%{[1;33m%}%(!.<.[)%{[1;36m%}%n%{[1;37m%}@%{[1;36m%}$HHst%{[1;31m%}`pt -cp`%{[1;34m%}%~%{[1;33m%}%(!.>.])%{[1;32m%}';
#xport PS1='[1;37m%(!.<.[)[1;33m%n[1;34m@[1;35m$HHst`d8 -a`[1;34m`c8fn $PWD`[1;37m%(!.>.])[1;32m'; # aparNtly -z && all %{ %} nEded4CLIwidtcalQl8
#xport PS1='%{[1;37m%}%(!.<.[)%{[1;33m%}%n%{[1;34m%}@%{[1;35m%}$HHst`d8 -z`%{[1;34m%}%~%{[1;37m%}%(!.>.])%{[1;32m%}'; # F1PLEswI:s/%~/c8fn/;
#xport  K="\e[01;30m";export  R="\e[01;31m";export  O="\e[22;33m";export  Y="\e[01;33m";export  G="\e[01;32m";export    z="\e[00m"; # like a8 $SKp0 . 'm'
#xport  C="\e[01;36m";export  B="\e[01;34m";export  M="\e[01;35m";export  P="\e[22;35m";export  W="\e[01;37m"; # these then should become able to use in Uk etc
#xport  K="[01;38;5;247m";export  R="[01;38;5;009m";export  O="[22;38;5;172m";export  Y="[01;38;5;011m";export  G="[01;38;5;010m";export z="[00m";
#xport  C="[01;38;5;014m";export  B="[01;38;5;012m";export  M="[22;38;5;013m";export  P="[01;38;5;092m";export  W="[01;38;5;015m";export Z="[01m";
#xport  K="[01;38;5;247m";export  W="[01;38;5;015m";export  Z="[01m"; # these re-define basic color variables from earlier 1z around line 63 && abit B4;
# 4 super custom Zsh prompt: HTTPS://GitHub.Com/RomKatV/powerlevel10k#features && probably ch GnomTerm font 2 recommended ~/dvl/f8/ttf/**/Menlo*Regular.ttf;
# apparNtly StarShip is a popUlR competitor 2 P10k th@ has many gr8 fE8urz && shud B worth ckngout l8r (@lEst 4 IDaz about how 2 improve my prmpt hEr whNevr);
#export       PS1='%{$W%}%(!.<.[)%{$G%}%n%{$z$B%}@%{$C%}$HHst`d8 -z;d8|b10|b93k|b8c`%{$z$B%}`c8fn -z $PWD`%{$W%}%(!.>.])%{$z$G%}';
export       PS1='%{$W%}%(!.<.[)%{$G%}%n%{$z$B%}@%{$C%}$HHst`d8 -z`%{$z$B%}`c8fn -z $PWD`%{$W%}%(!.>.])%{$z$G%}';
#xport       PS1='%B%F{green}%n@%m%k %B%F{blue}%1~ %# %b%f%k'; # N8DMJ9HI:this seems to be my current zsh prompt;
#xport       PS1='%B%F{green}%n@%m%k %B%F{blue}%1~ %{$W%}%(!.<.[)%{$G%}%n%{$z$B%}@ %# %b%f%k'; # green looks yellow;
#xport       PS1='%B%F{red}%n@%m%k %B%F{cyan}%1~ %# %b%f%k';
# see if sakura can accept colr varz in prmpt
# it seems that sakura won't bright bold 01;30..37 like other termz but setting prompt with xterm-256color SKp cOdz will work 4 her like it does elsewhere;
#xport       PS1='%{[1;37m%}%(!.<.[)%{[1;32m%}%n%{[1;34m%}@%{[1;36m%}$HHst` d8 -z `%{[1;34m%}` c8fn -z $PWD `%{[1;37m%}%(!.>.])%{[1;32m%}';
alias xp="Xp PS1='%{[1;33m%}%(!.<.[)%{[1;36m%}%n%{[1;37m%}@%{[1;36m%}$HHst\`d8 -f|sS z\`%{[1;34m%}%~%{[01;01;01;1;33m%}%(!.>.])%{[1;32m%}'";
alias dp="Xp PS1='%{[1;37m%}%(!.<.[)%{[1;32m%}%n%{[1;34m%}@%{[1;36m%}$HHst\`d8 -z\`%{[1;34m%}\`c8fn -z \$(pwd)\`%{[1;37m%}%(!.>.])%{[1;32m%}'";
# J5IMApwd:Above DefaultPrompt $PWD was not getting upd8d properly like it would for just str8 PS1 assignment, so had to wrap in sub \$(pwd) command 2 work;
#case "$TERM" in xterm*|rxvt*) # if this is an xterm set the title to user@host:dir; J5AMBPS1:shudBcool2mk ps1() set PS1 func wich tAkez dif d8,c8fn,4m@z,etc.;
#      PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1";; # also setz windO tItl2 Uzr@hOst:dir; abov R4 Xpanded (-full) && Default Ps1 PromPtz;
#  *) ;; esac  # similR wA2du BlO is `p h p$PPID o cmd` prntz '/bin/login --' on console&& '/usr/lib/gnome-terminal/gnome-terminal-server' in an X.Org GnomTerm
# From HTTP://StackOverFlow.Com/questions/17814123/determining-the-type-of-terminal-classic-unix-terminal-vs-graphical-terminal it might be better to do:
#parent=$(ps --pid $(ps --pid $$ --no-headers --format ppid) --no-headers --format cmd); # might need2 s/cmd/comm/ 2ch 4m@ prOfIl for result to =~ /^login/
#if [[ $parent == login* ]]; then ... else ... fi to detect a full-screen console login rather than cking for graphical $TERM, although $TTY might be easier?
# I71M8PS1:2du mAB rewrite sp,np,dp 2B ps1 varE8ionz && basicz wi no Perl DpNdNCz to calm warnz,mAB try2zsh regX colr pwd&&gNr8 aprox colrd d8stampz2 4comp@;
export HISTFILE=~/.zsh_history;alias sp="Xp PS1='%(!.<.[)%n@$HHst:\`d8\`:%~%(!.>.])'";  #Prmptz:SimplPrmt||NormlPrmt Uzd2hvBigPrmt2but ch eq2Norm soIrmd;
export HISTSIZE=65536;export BdOn="tput smso";export Bond='BdOn';alias setfp='etfp -s'; #from`man tput`:BoldOn&&Off TermSeQNcz4:`echo "${BdOn}NtrNm:${BdOf}\c"`
export SAVEHIST=65536;export BdOf="tput rmso";export Bofd='BdOf';alias setf='setfont ';alias setf0='setf -o';alias setp='setfp -p'; # mk .?ttyrc 2gN folOing
if       [[ "$HUsr"     !=  "root"  ]];                                  then #export PipzTmpC='~/lib/Octology/f8/f0nt/psf'; #fpal -x -l ~/dvl/f8/*/*/font';
  # hopefully just these 8 regexes will work the same instead of the tons of old if or from before; TIGS dRkz(red|cyn|mag) RbrItr than Tigz (4 vim st@usln?)
  # check for files being executable or existing before invoking; don't want normal pal8 details printed out at shell init so ENV flag 2B Quiet
  # 2du:put all pal8 && f0nt file basenames in variables && confirm executable or readable before invoking;
  export Hpal8dir="$HOME/lib/Octology/f8/pal8"         ;  export Hf0ntdir="$HOME/lib/Octology/f8/f0nt/psf"     ;
  export Hpal8ts1='TIGSfAVS';export Hpal8ts5='sWEET'   ;  export Hf0ntts1='standrd0';export Hf0ntts5='cALLIGRA';
  export Hpal8ts2='sILLY'   ;export Hpal8ts6='Bepspurp';  export Hf0ntts2='tEKtItE' ;export Hf0ntts6='FUTURa-1';
  export Hpal8ts3='gOOFY'   ;export Hpal8ts7='bLUES'   ;  export Hf0ntts3='mED'     ;export Hf0ntts7='ANTIqUE' ;export Hpal8ts0="$Hpal8ts1";
  export Hpal8ts4='nICE'    ;export Hpal8ts8='yEL'     ;  export Hf0ntts4='rOMAN3'  ;export Hf0ntts8='Modern-2';export Hf0ntts0="$Hf0ntts1";
  if     [[  $TTY  =~ ^/dev/(tty|pts/)(0|65|66|67|68|69|70|71)$ ]] && [[ -x "$Hpal8dir/$Hpal8ts0.pal8" ]]; then export Hpl8="$Hpal8dir/$Hpal8ts0.pal8";
  elif   [[  $TTY  =~ ^/dev/(tty|pts/)(1|9$|17|25|33|41|49|57)$ ]] && [[ -x "$Hpal8dir/$Hpal8ts1.pal8" ]]; then export Hpl8="$Hpal8dir/$Hpal8ts1.pal8";
  elif   [[  $TTY  =~ ^/dev/(tty|pts/)(2|10|18|26|34|42|50|58)$ ]] && [[ -x "$Hpal8dir/$Hpal8ts2.pal8" ]]; then export Hpl8="$Hpal8dir/$Hpal8ts2.pal8";
  elif   [[  $TTY  =~ ^/dev/(tty|pts/)(3|11|19|27|35|43|51|59)$ ]] && [[ -x "$Hpal8dir/$Hpal8ts3.pal8" ]]; then export Hpl8="$Hpal8dir/$Hpal8ts3.pal8";
  elif   [[  $TTY  =~ ^/dev/(tty|pts/)(4|12|20|28|36|44|52|60)$ ]] && [[ -x "$Hpal8dir/$Hpal8ts4.pal8" ]]; then export Hpl8="$Hpal8dir/$Hpal8ts4.pal8";
  elif   [[  $TTY  =~ ^/dev/(tty|pts/)(5|13|21|29|37|45|53|61)$ ]] && [[ -x "$Hpal8dir/$Hpal8ts5.pal8" ]]; then export Hpl8="$Hpal8dir/$Hpal8ts5.pal8";
  elif   [[  $TTY  =~ ^/dev/(tty|pts/)(6|14|22|30|38|46|54|62)$ ]] && [[ -x "$Hpal8dir/$Hpal8ts6.pal8" ]]; then export Hpl8="$Hpal8dir/$Hpal8ts6.pal8";
  elif   [[  $TTY  =~ ^/dev/(tty|pts/)(7|15|23|31|39|47|55|63)$ ]] && [[ -x "$Hpal8dir/$Hpal8ts7.pal8" ]]; then export Hpl8="$Hpal8dir/$Hpal8ts7.pal8";
  elif   [[  $TTY  =~ ^/dev/(tty|pts/)(8|16|24|32|40|48|56|64)$ ]] && [[ -x "$Hpal8dir/$Hpal8ts8.pal8" ]]; then export Hpl8="$Hpal8dir/$Hpal8ts8.pal8"; fi;
  # 8 unUsed pal8 fIlz aftr abov: cOOL DARKpRIM dARKZ deepRed Flipped r Tigzfavz t ;   ## !sure how2alias just call? note Dflt GnomTerm 0 orig got none;
  # K2FL7WHY:only konsole was spewing 16 backslashes when `src` ran to XeQt $Hpal (the f8.pm pal8 file on nXt lIn below) Bcuz it sepR8d charz of OSC ST;
  if     [[  $TTY  =~ ^/dev/(tty|pts/) ]] && [[ -x "$Hpl8" ]]; then export Hpal="$Hpl8";alias src8="$Hpal";Pal8Qiet='1' $Hpal; fi; # goodEnuf wo SKpd bktx?
  # J12LEAP8:trying to Xtract pal8 call so mAB new `$Hpal` or alias src8 could just reset proper 8-category term pal8 without src full .zshrc?
  if     [[ "$DISPLAY" ==           "" ]] && [[ "$TERM" == "linux" ]]; then # orig had PipzGlobalf8Flag 2!redo but!DISPLAY also4ssh so $TERM"linux"4console
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
      #   3/15 HyLAS      6/18 mED          9/21 france9     12/24 futura-2    # 3/15 hylas also had etfp A172 F177; mkng 2 brItz dRk proly 4 lowcontrast prym
      #   4/16 FRESNo     7/19 cALLIGRA    10/22 ANTIqUE     13    CRAKRjAK    # orig filenames were all lowercase since it was prior to .Hrc renaming 4 keyz
      #   5/17 ZanZurf    8/20 rOMAN3      11/23 bROADWAY
fi; # ls.*? -1:OnlE1FyLynz($_\n);clasiFy(dir/,symlnk@,exefyl*,etc);QuotRsltnzFylNmz(2sealSpcz&&othrDynabiliTBhynd lit txt);Long(shoXact byte fylsizes);
alias lsQ=' ls -Q ';alias l1=' ls -1';alias  lQ1=' lQ -1 ';alias l1Q='  lQ1 ';alias lF1='lF -1';alias l1F='lF1';alias ls1='l1'; #Human readable approx fylsyz;
alias  lsF='ls -vF';alias lL=' ls -l';alias   lFl=' lF -l';alias  llF='  lFl';alias lQl='lQ -l';alias llQ='lQl';alias ll='lFl'; #!?"proly adng 1A|StekSauc"?!;
alias  lQF='  lsQF';alias  lFQ=' lQF';alias lsQF=' lQ  -F';alias lsFQ='lsQF ';alias lsgdf='ls --group-directories-first';alias lsv='ls -v'; #ias lv='lsv -l';
alias   lF='   lsF';alias lh=' ll -h';alias   lFh=' lh -F';alias lhF='   lFh';alias lfh='lFh';alias lhf='lhF'; #-v in base lsF natural sort of Version numbers
alias  lQ='   lsQ ';alias lr=' ls -r';alias  lQh=' lh -Q ';alias  lhQ=' lQh ';alias lqh='lQh';alias lhq='lhQ'; # rm lsrc BlO&&mk lsrc Utl2gN .lsrc from nw.lrc
alias ll='  ls -lF      ';alias lh='  ll -h       ';alias l='lsd8';alias lst='lft'; #clasiFy,Long(shoFylBytSyz),Human(rEdablSyz); l was =lh;
  alias lsd='echo "trail globz wi *(/) 4just dirz";lf-d  '; #ias L='ls  -F'; # -CF -w $HWid'; # prepare to make L basic c8fn wrapper of normal ls
alias lca=' l --color=always';alias lC=' lca'; # call lsd8, used 2 call wi -ca thinking was wi special singl flag ther wich toglz color=auto && basically setz
alias lf0=' lca ~/muz/U2b|f8 fR test pad9 fb Wk next fN Rb word pad8 bco=11 fF Gp last'; # it bak 2 color=alwayz lIk it wuzB4; # tSt l wi f0nt && f8 bg undrlA;
alias lf8=' lca ~/muz/U2b|f8 Br test pad9 fm Wk next fr Rb word pad8 bco=12 fc Gp last';alias lF0='lca ~/dvl|f8 tst R sts fm Y ipi Fb:GbBKCUDI pip';
alias lF8=' lca ~/dvl/f8 |f8 pad9 test fm Yb dice fc Pg card Ob pies'; # bcco BigCharColmOfset=-\d+ Fb:GbBUICDO padc=\d+ 2 draw bigchrz @ othr than 8*cndx;
alias LFA=' L  -FA      ';alias LAV=' LA -v       ';alias LA=' L -A       ';alias Lfa=' LFA ';alias Lav=' LAV '; # special wrappers 4 non-long curt wide L;
alias lFR=' lF -R       ';alias llR=' ll -R       ';alias lR=' l -R       ';alias lfR=' lFR ';alias lsR=' lfR '; #Recurs subdirz;Rmembr:zsh`**`auto-recursz
alias lFa=' lF -A       ';alias lla=' ll -A       ';alias la=' l -A       ';alias lfa=' lFa ';alias lsa=' lfa '; #Almostall (.*;!./||../)
alias lFb=' lF -B       ';alias llb=' ll -B       ';alias lb=' l -B       ';alias lfb=' lFb ';alias lsb=' lfb ';alias lxr='Lrx'; #omitBakupz(!*~); altrvrsortz
alias lFrs='lF  -rS     ';alias llrs='ll -rS      ';alias lrs='l -rS      ';alias lfrs='lFrs';alias lsrs='lfrs';alias lsr='lrs'; #sortbyReversdSize
alias lFrx='lF  -rX     ';alias llrx='ll -rX      ';alias Lrx='l -rX      ';alias lfrx='lFrx';alias lsrx='lfrx'; #sortbyReversdXtension #D92MCBuZ:`md lrx`prob
alias lFrc='lF  -rct    ';alias llrc='ll -rct     ';alias Lrc='l -rct     ';alias lfrc='lFrc';alias Lsrc='lfrc'; #sortbyReversdChngdTime(frstmodtym)
alias lFc=' lF   -ct    ';alias llc=' ll  -ct     ';alias lct='l  -ct     ';alias lfc=' lFc ';alias lsc=' lfc '; #sortby       ChngdTime(lastmodtym)
alias lFx=' lF   -X     ';alias llx=' ll  -X      ';alias lx=' l  -X      ';alias lfx=' lFx ';alias lsx=' lfx '; #sortby       Xtension
alias lX='lx';alias llX='llx';alias LX='L -X';alias Lx='LX'; # not yet lexer?;
alias lFs=' lF   -S     ';alias lls=' ll  -S      ';alias l-s='l  -S      ';alias lfs=' lFs ';alias lss=' lfs '; #sortby       Size
alias lF-d='lF  -d      ';alias ll-d='ll  -d      ';alias l-d='l  -d      ';alias lf-d='lF-d';alias ls-d='lf-d'; #Dirz; belo shud prolyBfuncz2tst4$1 B4pikng*
alias lFd=' lF-d    *(/)';alias lld=' ll-d    *(/)';alias lD=' l-d    *(/)';alias lfd=' lFd ';alias lsD=' lfd '; #       Dirz*(/) Beppu sez:"Do*NOT*alias
alias lFid='lF-d -I=*(/)';alias llid='ll-d -I=*(/)';alias lid='l-d -I=*(/)';alias lfid='lFid';alias lsid='lfid'; #Ignore Dirz(!/)   importnt linker`ld`!"
alias lFf=' lF      *(.)';alias llf=' ll      *(.)';alias lf=' l      *(.)';alias lff=' lFf ';alias lsf=' lff '; #normal fylz*(.) Note:symlynx(@)
alias lFif='lF   -I=*(.)';alias llif='ll   -I=*(.)';alias lif='l   -I=*(.)';alias lfif='lFif';alias lsif='lfif'; #Ignore fylz(!.)
      FTym=' --full-time';alias llft="ll $FTym    ";alias lft="l $FTym    ";alias ltym='lft ';alias lftym='lft';alias ltime='lft'; #shoFulTym stampz4LongLstz
alias lass='la       |sS';alias las='lass'; # lsd8 list all filez stripped of SKp codez; ## maybe *.* quells warning when including sepR8 '*' with no match?
alias lads='la -d  .*|sS';alias lad='lads';alias ls8='ec "Stuv, rXU.: Size time - uaxt vrsn,  rvrs Xtns - U!s8 .??.;";lsd8'; # LiSt top7 mMorabl Sort8 optnz;
# Note: While it may fit nicely for now to setup ls8 as a Sort-set echo print before calling my standard: lsd8, might prefer l8r to make ls8 normal widezetc.;
# for some reason, old ea='e a' could shell out2`bak` from ~/dvl/Utl/.bak/ but can't create .bak/ EROR from ~/.arc/Aku_-arc-full-Ubu10.04-D1KD1KD/var/log/apt/
# mAB stRting ./ as root owned  (even if not that restrictive 755 permissions) can't find way to ~/ from there? Wrap p[uo] makes sense 2rElEtRgetfromNEwher
ea(){ if [[ `dirs` != '~' ]]; then pushd ~; fi;olde a; # try2quell warning "popd: directory stack empty" && not found pu or po;  # loc8r BlO calls wi --Regex
      if [[ `dirs` != '~' ]]; then popd   ; fi}        # Orig: alias ea='pu ~;e a;po'; # loc8r is in findutils-default 4m@ th@ is lIk emacs but . m@chz nwlIn
alias oldE='olde    $TTY';alias up='        upd8  ';alias e2='pu ~/dox/2du;e 2;po';alias e3='e 3     ';alias upd8-mime-d8bs='md8';alias larv='laff; ripv';
alias e4='     e    4   ';alias e5='     e 5      ';alias e6='             e 6   ';alias e7='e 7     ';alias   e8='pu ~/dox/2du;e 8;po';alias e9='e 9';
alias oldb='oldb    $TTY';alias loc8r='loc8 -r    ';alias upd8-mdb=' md8       ';alias upd8-md8b='md8';alias update-mime-db='md8';alias lar8='larv; updb';
alias ud='     updb     ';alias loc8='      locate';alias mdb-upd8=' md8       ';alias md8b-upd8='md8';alias mime-db-update='md8';alias mdb8='  mdb-upd8';
alias updb='   upd8db   ';alias upd8d8ab='  upd8db';alias   updtdb='updb       ';alias md8b='mdb-upd8';alias md8='update-mime-database -V';alias xi='xinput';
alias rc8=' rc-upd8     ';alias rc-upd8='rc-update';alias etc-upd8='etc-update ';alias etc8='etc-upd8';alias env8='env-upd8';alias  env-upd8='env-update';
alias pl8=' pl-upd8     ';alias pl-upd8='plcl     ';alias plcl='pl-clnr     all';alias pl8c='pl8     ';alias pl8l='pl8     ';alias      upd8g='update-grub';
alias lp8=' lp-upd8     ';alias lp-upd8='lpcl     ';alias lpcl='pl-clnr libperl';alias lp8c='lp8     ';alias lp8l='lp8     '; # too specialized to go str8 in2
alias pl8a='pl-clnr  all';alias pl-clnr='pl-clean ';alias pl-clean='pl-cleaner ';alias pl-cleaner='  perl-cleaner  ask     '; #   Octl ~/bin but mAB s/sloc//?
alias py8=' py-upd8     ';alias py-upd8='py-upd8r ';alias py-upd8r='py-updater ';alias py-updater='python-updater -p -v -v '; # -pretend -VeryVerbose
alias rup=' rustup      ';alias rupd='rup update  ';alias rupd8='rupd'; # O3IMDrup:mAB shud upd8 2 l8St cargo && rustc? wich R nEded 2 install n8 Gleam Lang;
alias laff='     lafilefixer --justfixit'; # UzflUtlz:glsa-ck -[pf](new|all);rvdp-rbld -ipv;pl-clnr(libperl|all)ask;py-upd8r -pv(-dm)?;lafilefixer --justfixit;
alias glck='     glsa-check   -v';alias gcpn='glck -p new';alias gcfn='glck -f  new';alias glsack='glck';alias  py8d='py8  -dm'; # -disable-manual CHECK flagz
alias rdrb='   revdep-rebuild -v';alias rri='rdrb -i';alias rripvv='rri -pv';alias ripv=' rrip  ';alias rrvv='rri -v'; # Ignor-cach,Pretnd-emrg,VeryVerbose?
alias rrip='     rri          -p';alias rrk='rdrb -k';alias rriv='  rri -v ';alias rrvip='rri -p';alias rrivv='rrvv '; #   && handy ShrtCutz; Keep-cache(rrk)
alias rrkp='     rrk          -p';alias rrp='rdrb -p';alias rrkv='  rrk -v ';alias rrvkp='rrk -p';alias rrkvv='rrkv '; #ias rr='rri'; #       PretndEmrg(rrp)
alias rrrr='env SEARCH_DIRS="/ -*" SEARCH_DIRS_MASK="/mnt /home" revdep-rebuild -vv -i';alias rrr='rrrr -p'; # RevdepRebuildRoot(3pretend,4Real);
alias upd8i='update-initramfs -u -k all'; # Tryng oibaf drvrz HTTPS://AskUbuntu.Com/questions/1266616/how-can-i-use-amdgpu-instead-of-radeon-drivers-on-20-04 ;
# might want to install HTTPS://GitHub.Com/ggreer/the_silver_searcher with ag awk-grep replacement instead of relying on old familiar apt-get aliases here?
alias am='apt-mark ';alias amh='am   hold ';alias amu='am unhold';alias amuh='amu';alias amsh='am showhold ';alias amsi='am showinstall'; # Debian && Ubuntu...
alias amp='am purge';alias ami='am install';alias amr='am remove';alias amrm='amr';alias amsp='am showpurge';alias amsr='am showremove '; #   apt Utl shortcutz
alias ak='apt-key  ';alias aka='ak     add';alias akd='aka -    ';alias akad='akd';alias amsa='am showauto ';alias amsm='am showmanual '; # adding Brv && Sig
alias ag='apt-get  ';alias agi='ag install';alias agu='ag update';alias aguu='agu;ag upgrade';alias agdu='ag dist-upgrade'; # agdu probably nEdz 2 1st vim edit
alias ac='apt-cache';alias acs='acS       ';alias agr='ag remove';alias agrm='agr';alias agar='ag autoremove';              #   sources.list, thN aguu B4hand;
alias ai='apt install';alias acsrch='ac search';alias au='apt update';alias auu='au;apt upgrade';alias acsp='ac showpkg';alias agri='ag reinstall'; #shOpkgDtlz
alias apts='apt search';alias asrch='apts';alias aar='apt autoremove';alias ari='apt reinstall '; # alreD /usr/bin/as GNU ASsembler,shud stuD apt over ag 2add;
alias   AS='apts   ';alias  aS='acS      ';alias nar=' na autoremove';alias nhi='na  history   ';alias  ncl='na clean';alias nrm='na remove'; # NBMLNala:nstd
alias   na='nala   ';alias  nS='nas      ';alias nap=' na autopurge ';alias nau='na     upgrade';alias  nfe='na fetch';alias np=' na purge '; #   of apt(-get);
alias ni=' na install';alias nasrch='na search';alias nu=' na update';alias nuu='na     upgrade';alias  nsh='na show ';alias nls='na list';alias nas='nasrch';
alias nhe='na  --help               ';alias nhiu='nhi undo';alias nh='nhi';alias nr='nrm'; # 2du:add more nala sub-optn aliasez l8r; rEplAcd -(halt|reboot)Now;
alias nlu='nls --upgradable         ';alias goe='g -o export ~/.zshrc|wc -l '; # UbuntuPro 4 up 2 5machines: `sudo pro attach C143gkd7g12gV8R9JkH2WCgcbJoZ8v`;
alias d6='en " 666+T=gc6 L8AMNION  "';alias 666='g    alias  ~/.zshrc|wc -l ';alias gc6='g -c alias ~/.zshrc'; # -Count; 666 lInzHaz:28 2ManyNow; 1384vs.1391;
alias da='en "1333+r=goa L8AM1333/2"';alias goa='g -o alias  ~/.zshrc|wc -l '; # -Onlym@ch;gca is alreD --color=auto sO abov nEded z but!goa; clOse2 8.utf^8wc;
alias a6='en "goe: ";goe;en "da :";da;ec ";";en "goa:";goa;en "d6 :";d6;ec ";";en "666: ";666;en "gc6: ";gc6'; # L8AMLIAS:a6 countz exportz&&aliasz4 .zsh* hEr;
alias ali=' apt list             --installed';alias dli='dpkg -l'; # super basic commandz to use Apt or Dpkg(-query)? to List Installed packagez on Ubuntu or
alias alim="aptitude search      '~i!~M' ";alias agiy='agi -y'; # shud just List pkgz wich were Instld Manually (!as DpNdNCz); /var/lib/apt/extended_states 2?
alias calg="(zc \$(ls -tr /var/log/apt/history.log*.gz);cat /var/log/apt/history.log) 2>/dev/null|eg '^(Start-Date:|Commandline:)'|gv aptdaemon|
             eg -B1 '^Commandline:'";alias almi='apt list --manual-installed'; # CatAptLogz in2Grepz shOz instl d8z reversed; # O2ILH8a6:goe 342 goa 1690 abov;
alias dgsc="dpkg -l|g ^ii|sed 's_  _\t_g'|cut -f 2 > ~/.tmp/InstalledPkgz-\`d8\`.ls";alias agip='agiy $(< ~/.tmp/InstalledPkgz-*.ls)'; # mIt nEd SKpd bkslsh?;
# HTTPS://AskUbuntu.Com/questions/17823/how-to-list-all-installed-packages forum thread has 23 extensive answers with varying ways to go about logging instlz;
# nap autopurge  Autopurge  unneeded pkgz         ;  # np  purge   Purge  pkgz          ;  # nas search  Search pkgnAmz&&Dscriptnz;    # na nala nstd of apt?;
# nar autoremove Autoremove unneeded pkgz         ;  # nrm remove  Remove pkgz          ;  # nsh show    Show   pkg DtAlz    ;  # nls list pkgzbAsdon pkgnAmz;
# ncl clean      Clear dnlOded pkgfIlzofflOclRchIv;  # nhi history Show transaction hist;  # nu  update  Update pkg list     ;  # nS  nas  nasrch;
# nfe fetch      Fetch fast mirrors 2 sPdup dnlOdz;  # ni  install Install pkgz         ;  # nau upgrade Upd8&& upgrade systM;  # nuu nau upgrade;
alias dC='dconf    ';alias dcl='dC list';alias dcw='dC write';alias dcd='dC dump';alias dcc='dC compile';alias dcR='dC reset';alias dcr='dC read  ';
alias dH='dC  help ';alias dcL='dC load';alias dcW='dC watch';alias dcdgt='dcd /org/gnome/terminal/legacy/profiles:/        ';alias dcu='dC update';
alias GS='gsettings';alias gsg='GS  get';alias gsls='GS list-schemas    ';alias gslk='GS list-keys';alias gslrs='GS list-relocatable-schemas';alias gse='GS';
alias GH='GS  help ';alias gss='GS  set';alias gslr='GS list-recursively';alias gslc='GS list-children ';alias gsR='GS reset';alias gsr='GS range ';
alias gsm='GS monitor';alias gset='gse ';alias gsw=' GS writable        ';alias gsd=' GS describe     ';alias gsRR='GS reset-recursively';alias gsrr='gsRR';
alias dch='dH';alias gsgtl='gsg org.gnome.Terminal.ProfilesList list    '; # HTTPS://Wiki.Gnome.Org/Apps/Terminal/FAQ#How_can_I_change_a_profile_setting_...
alias gsh='GH';alias gsgtd='gsg org.gnome.Terminal.ProfilesList default '; #   ...from_the_command_line.3F had info about using gsettings like these 4 profz;
alias gsgL='                gsg com.canonical.Unity.Launcher  favorites '; # from HTTPS://Help.Ubuntu.Com/community/UnityLaunchersAndDesktopFiles outputs on:
# K2LLCLau: ['unity://running-apps', 'application://org.gnome.Terminal.desktop', 'application://sakura.desktop', 'application://brave-browser.desktop',
#   'application://firefox.desktop', 'application://krita.desktop', 'application://gimp.desktop', 'application://inkscape.desktop',
#   'application://fontforge.desktop', 'application://audacity.desktop', 'application://update-manager.desktop', 'application://ccsm.desktop',
#            'unity://expo-icon', 'unity://devices', 'application://org.gnome.Nautilus.desktop']; # where .desktop files could be in (/usr|~/.local)/share/ap*;
alias emrg='emerge';alias em='emrga';alias es='ems'; #alias em='emu'; # fav emrg dfaltz:--colmz -va --kp-go -Du (+-N 4sys|wrld)
alias emcol='emerge --columns -v'; #ias eM='em     -v'; # --columns vert-alinz pkg-name,vers,use-flagz       (-v == --verbose      )
alias emrga='    emcol  -a';alias emrge='   emrga  -e'; # --ask                                              (-e == --emptytree    ) (eg,wrld4UsrModeLnux)
alias emrgk='emrga  --keep-going';alias eN='emrgd  -N'; # --ask --keep-going was my preferred emrg dflt optz (-i == --info         )
alias emrgd='    emrgD    ';alias emrgD='   emrgk  -D'; # --ask --keep-going --Deep          => -aD  --kp-go (-d == --debug        )
alias emrgu='    emrgD  -u';alias emrg1='   emrga  -1'; # --ask --keep-going --Deep --update => -auD --kp-go (-1 == --oneshot [+-a])
alias emrgsys=' eN @system';alias emrgwrld='eN @world'; # --ask --keep-going --Deep --update => -auD--k-g--Newuse sys && wrld
alias emrgn='    emrga  -n';alias emrgN='   emrga  -N'; # --ask --noreplace                                  (-N == --Newuse  [+-a])
alias emrgo='    emrga  -o';alias emrgO='   emrga  -O'; # --ask --onlydeps                                   (-O == --nOdeps  [+-a])
alias emrgs='    emcol  -s';alias emrgS='   emcol  -S'; # --search                                           (-S == --Searchdesc   )
alias emrgp='    emcol  -p';alias emrgP='   emrga  -P'; # --pretend                                          (-P == --Prune   [+-a])
alias emrgc='    emcol  -c';alias emrgC='   emrga  -C'; # --depclean (strongly prefr -c,don't use risky -C ) (-C == --unmerge [+-a])
alias eU='emrgd -U';alias eUsys='eU @system';alias eUwrld='eU @world'; # --changed-use (similar to -N Newuse but only whether use flagz changed by user)
alias eD='emrgd   ';alias eNsys='eN @system';alias eNwrld='eN @world'; # --newuse in similar form to eU above, remember 2 'eD --depclean' aftr sys|wrld;
alias edc='eD --depclean';alias eds='em --deselect';alias eUbdcg='eU --with-bdeps=y --complete-graph';alias eUbcw='eUbdcg @world'; # revdep-rebuild too;
alias emrgsync=' emerge --sync'; #... && othr useful utlz:glsa-ck -[pf] (new|all);revdep-rebld -ipv;perl-clnr (libperl|all) ask;python-upd8r -pv (-dm)?;
alias emrgupd8=' emrgsync; glsa-check -f new;    emrgsys; upd8db' # maybe this should be a nightly||weekly upd8 task scheduled b4 upd8db via cron(&&wo -ask)
alias ema='emrga';alias eme='emrge';alias emu='  emrgu';alias em1='   emrg1 ';alias emo='   emrgo   ';alias emO='   emrgO   ';alias emc='emrgc'; # wi-bdeps=y?;
alias emd='emD  ';alias emk='emrgk';alias emsys='eUsys';alias emwrld='eUwrld';alias emsync='emrgsync';alias emupd8='emrgupd8';alias emC='emrgC';
alias emD='emrgD';alias emn='emrgn';alias emN='  emrgN';alias ems='   emrgs ';alias emS='   emrgS   ';alias emp='   emrgp   ';alias emP='emrgP';
alias ChRootGen2LiveCD='mount /dev/sda3 /mnt/gentoo;mount /dev/sda1 /mnt/gentoo/boot;mount -t proc none /mnt/gentoo/proc;mount -o bind /dev /mnt/gentoo/dev;chroot /mnt/gentoo /bin/bash;env-update;source /etc/profile;export PS1="(ChRoot)$PS1"'; # A85MAfWf:tryng 2 get Akuma 2boot wi anythng othr than GenKrnlz is pain!
alias mknwkrnl='MkNwKrnl';alias mkmnucfg='mkMnuCfg      ';alias mkMnuCfg='mk menuconfig';alias mkModIns='    mk modules_install ';alias mkmodins='mkModIns';
alias MkNwKrnl='echo "em gen2-srcz;/usr/src/linux;mkMnuCfg;mk;mkModIns;bak.cfg;cp arch/x86_64/boot/bzImage /boot;cpS.map2/boot/smap;cnfGRUB;reboot"';
#En= [nN] -a[nN]      #-ask-noreplace(|Newuse)    #Esync=   --sync       #&&helpfulUtlz:glsa-ck -[pf] (new|all);revdep-rebld -vv;perl-clnr (libperl|all) ask`
#ED= [Dd] -an[Dd]     #-ask-noreplc-Deep(|debug)  #ESorW=auD system|world#-ask-update-Deep(Sys|Wrld)
#Ei=v[i1] -av1?--info?#-ask-verbose-info(|oneshot)#Eupd8=   --sync;glsa-check -f new;emerge -uD system;updatedb' # cron.(night|week)ly upd8 task2go b4upd8db?
#Eo= [oO] -a[oO]      #-ask-onlydeps(|nOdeps)     #Es=  [sS] -[sS]       #-search(deSc) #Ee= e   -ae        #-ask-emptytree(eg,wrld4UsrModeLnux)
#Ec= [cC] -[cC]       #-clean(|Clip|Cut|ChopUMrg!)#Ep=  [pP] -[pP]       #-pretend(|Prune!) -vp --depclean best2dpndntlyAware rmPkgz(prtndng1st)
alias vimuse='vim /usr/portage/profiles/use.desc /etc/make.conf /usr/portage/profiles/use.local.desc /etc/portage/package.use   /etc/portage/package.keywords';
alias vimUz=' vimuse                                                                                 /etc/portage/package.*mask /etc/portage/color.map';
#lias scp='noglob scp'; # still want to glob locally so just intentionally escape remote globs wi \* etc; #Rot13perLyn:`vim $fyl`Vg?; # hn=hostname; hn != hH ;
alias              ..='cd ..                 ';alias cdup='..';alias cd..='..                      ';alias SSH='sH';alias SSR='sR'; #ias nh='hN';alias nr='rN';
alias             ...='cd ../..                              ';alias cd...='...                    '; # mItBAbl2Uz -c wi && aftr sz zsh 2run rmSS as sngl cmd?;
alias            ....='cd ../../..                           ';alias cd....='....                  '; # 4 `sz` BlO fIl is Only rEmovd aftr `x` logz mE out thO;
alias           .....='cd ../../../..                        ';alias cd.....='.....                '; # so ReMove.SudoSuccessful fIl aftr most callz2 sudo BlO;
alias          ......='cd ../../../../..                     ';alias cd......='......              '; # aftr tryng2cmpIl new ~/dvl/m8/sudo tryng this now nstd:
alias         .......='cd ../../../../../..                  ';alias cd.......='.......            ';alias rmSS="rm -f  $HOME/.sudo_as_admin_successful";
alias        ........='cd ../../../../../../..               ';alias cd........='........          '; # folOng R my mAn supr-ters aliasz 4 per4mng almOst ...
alias       .........='cd ../../../../../../../..            ';alias cd.........='.........        '; #   ... evry core GNU/Linux sys Utl (&& some clasic DOS)
alias      ..........='cd ../../../../../../../../..         ';alias cd..........='..........      ';         alias mktst='   mtst';alias mkj=' mkjG   ';
alias     ...........='cd ../../../../../../../../../..      ';alias cd...........='...........    ';         alias mtst='mk  test';alias mkjg='mkjG   ';
alias    ............='cd ../../../../../../../../../../..   ';alias cd............='............  ';         alias mkck='mk check';alias mkjG='mk -j16';
alias   .............='cd ../../../../../../../../../../../..';alias cd.............='.............';         alias mkcl='mk clean';alias mkj8='mk -j8 ';
alias      mk='   make';alias mki='mk install';alias mi='mkin';alias smi='sudo make install;rmSS';alias smki='smi';alias mkin='mki';alias mkj4='mk -j4 ';
          cmk () { CMLT=0; if [[ -e cml ]]; then mv cml CMakeLists.txt; CMLT=1; fi;     # MB9LMkCM:setup cmake function to auto-compile SDL2_Tutorial projects;
                   if   [[ -e CMakeLists.txt && $# -eq 0 ]]; then cmake CMakeLists.txt; #  This also works on a 'cml' file which might need Link_Directories();
                     if [[ -e Makefile ]]; then make; fi;    else cmake $@; fi; if [[ "$CMLT" == "1" ]]; then mv CMakeLists.txt cml; CMLT=0; fi; }
export sd='sudo   ';export SD='shutdown';export Sh="$SD -h ";export SH="$Sh";export sH="$sd$SH";export Hn="$SH$NR";export HN="$Hn";export hN="$sH$NR";
export sD="$sd$SD ";export NR='now;rmSS';export Sr="$SD -r ";export SR="$Sr";export sR="$sd$SR";export Rn="$SR$NR";export RN="$Rn";export rN="$sR$NR";
export hH="$hN";export nh="$hN";alias Sd="$sd";alias SD="$SD";alias Sh="$Sh";alias SH='Sh';alias sH="$sH";alias Hn="$Hn";alias HN='Hn';alias hN="$hN";
export rn="$rN";export nr="$rN";alias sD="$sD";alias SS="$hN";alias Sr="$Sr";alias SR='Sr';alias sR="$sR";alias Rn="$Rn";alias RN='Rn';alias rN="$rN";
alias  sz="$sd -E zsh;rmSS";alias rn='rN ';alias SSHN='hN';alias SN='RN'; # EmergNC!!! Sudo Shutdown or Reboot *now*!!!  # N52MLiSZ:/usr/bin/[rs]z use ZModem 2
alias      pu='  pushd';alias  ua='un    ';alias SSRN='rN';alias sN='rN'; # aliasz4aftr`sz`whNIcanw8 1min4shutdn||rEbt;  #   du fIl transfrz && mAB nEd !my sz;
alias      po='   popd';alias una='un -a ';alias sus='sudo -E -s zsh'; # -c "rm $HOME/.sudo_as_admin_successful"'; # abrEV8nz 4 sys-info which call un();
                        alias unr='un -r '; # this shud probably B just curNtly runing krnl version number (eg, 5.15.0-91-generic) && my MpT un|ua callz -a;
alias     epc='  ep|b8clr'; #d8 e|cma!=epoc # rEgRdng sudo abov cannot run both -Intractiv && -Shell optz; # d8 e>epoc by~3.56528hourz 13Ksecz sOmABclOs2UTC?;
alias    epoc="   pab   'o8(cma($HTHi::time))'"; # alias 2 output non-colrd epoch float secz from Perl Time::HiRes wi cma int KMGT sepR8orz; epoc==`date +%s`;
alias      ep="   pab '\$t6=b64($HTHi::time);\$t6=~s/(%....).+\$/\$1/;o8(coma(\$t6))'"; # alias 2 gNr8 b64 trunc8d coma'd epoch float secondz && abov colrz;
# PerlMaven DscrIbz how -e executez cmd-lIn strng but -E Enablez all l8st fE8urez (lIk say && betr UniCode), -n wrapz -E strng in while(<>){ && } with -p just
#   -n looped with print $_ aftr Each iter8ion, && -i modifiez a supplId fIl in-place, so: `perl -ipE 's/badcode/foobarz/' file.txt` would rEplAc on evry lIn;
# `pdoc perlrun` suggests I mIt not want -CS on all thEs BlO (as perhaps othr optnz R betr, but mOst worried it will inhibit handling bInary d8a lIk f8 .psf?):
# As of Perl v5.8.1, -C can B folOd Ether by number or list of optn letrz. Letrz, numeric valUz, && Efects R as folOz; listng letrz is Equal2 summing numberz.
#   I    1  STDIN is assumed to be in UTF-8;     #   i    8  UTF-8 is the default PerlIO layer for  input streams          ;
#   O    2  STDOUT         will be in UTF-8;     #   o   16  UTF-8 is the default PerlIO layer for output streams          ;
#   E    4  STDERR         will be in UTF-8;     #   A   32  the @ARGV elements are expected to be strings encoded in UTF-8;     #  SDL  95  ?;tSt wi bIn d8a;
#   S    7  I + O + E                      ;     #   D   24  i + o; # 2du:mAB Iwant -CSDL nstd?(but mAstil nEd2disAbl somtImz4 bInary-d8a,if UTF8 conflictz?);
#   L   64  normaly "IOEioA" R unconditional,but L mkz thM conditional on lOcale NvIronmNt variablz: LC_ALL, LC_CTYPE, && LANG (in ordr of DcrEsing precedNc)…
#   a  256  Set ${^UTF8CACHE} to -1,to run UTF-8 caching code in Dbuging mOde;…(morDtailz4 L abov: -- if variablz indic8 UTF-8,thN sLectd "IOEioA" R in Efect;
#lias     pla="   pl  -M$HOa8         -M$HTHi -CS    -E"; #   ... but may need function to include "binmode STDOUT,':utf8'" somehow?
alias     plb="   pl          -M$HOb8 -M$HTHi -CS    -E"; # `m perlrun` described -CS as indic8ing UTF-8 for all 3 of STD(IN|OUT|ERR)
alias     pld="   pl                  -M$HOd8 -CS    -E"; # mAB shud mk plc 4 c8.pm && plf 4 f8.pm && plk 4 k8.pm etc.?; 2du:figUrout Y `d8 e` iz ~13K > epoc;
alias     pab="   pl  -M$HOa8 -M$HOb8 -M$HTHi -CS    -E"; # `pab "binmode STDOUT,':utf8';print b256(calQ('15xx63'))"` gets rid of ...
alias     pad="   pl  -M$HOa8         -M$HOd8 -CS    -E";alias pa='pabd'; # pb was already taken by pingb && pa can be all of a8,b8,d8;
alias    pabd="   pl  -M$HOa8 -M$HOb8 -M$HOd8 -CS    -E"; #   ... the warning about "Wide character in print at -e line 1."
alias     pea="   pl  -M$HOa8                 -CS   -pE"; # tried to add -Mutf8 to aliases but may need some more specific flag?
alias     peb="   pl  -M$HOa8 -M$HOb8         -CS   -pE"; # -CSDL is the same as just -C && gets all the STDz && i/o && @ARGV
alias     ped="   pl  -M$HOa8         -M$HOd8 -CS   -pE";alias pe='pead'; # mAnly just want 2 Uz pa 4 1lInr cOd && pe 4 pIpngin&&filtrng;
alias    pead="   pl  -M$HOa8 -M$HOb8 -M$HOd8 -CS   -pE";alias pep='pea';alias t2='t1 2';alias t3='t1 3';alias t4='t1 4'; # 3 && 4 R!yet;
alias      t1='   pla "o8(t1(@ARGV))"';alias pat1='t1'  ; # shO rEslts from a8 tStng wich 1-letr sKlRz it DfInd&&Xportz thN wich varz R frE(undF)2BUzd sepR8ly;
alias   qc="pe 's/0+\$// if s/(\\.\\d{63}).+/\$1/'"     ;alias b8cz='b2cz'; # alias b8ls='b2ls;ec'; # O1JLFUc8:shud trunc8+strip trAlng Zr0z lIk c8:`q 1/3|qc`;
alias b8ls="pla 'o8(d8c(join(qq( ),@sb256[0..63])). qq(\\n). d8c(join(qq( ),@sb256[64..127])). qq(\\n). d8c(join(qq( ),@sb256[128..191])). qq(\\n). d8c(join(qq( ),@sb256[192..255])))'"; # print 4 strIpd-spAcd d8-colrd lInez of 64 charz!;
alias b2ls="pla 'o8(d8c(join(qq(),@sb256[0..127])). qq(\\n). d8c(join(qq(),@sb256[128..255])))'"; # print 2 d8-colrd lInez of128 base256 charz (just a8.pm?);
alias b2cz="pa 'for(0..3){for my \$bn(0..63){\$ln.=b256(\$_ *64+\$bn)} o9(d8c(\$ln));\$ln=q()}'"; # print 4 d8-colrd lInez of 64 base256 charz 2 C thM alInd;
# abov tStng pa (pl all [abd]8) mAnly wi d8 dur8(ionz),but try -MTime::HiRes time too,to get fractnz2,alsO fix dur8 colr in d8c ordr but shud B dur8c nstd,
#   && alsO try Uzng just a8.pm && just join('',@sb256) && tSt $ENV{COLUMNS};
pewh() { wh  $@ | pe 's/;/$W;$y/g;s/-/$C-$y/g;s/:/\t$R/;s/:/$B:$Y/g;s/^/$G/;s/  +/ /;s/ to /$o to$Y /;s/\|/$M|$O/g;s/=/$B=$C/'; } # xmpl pRamz2 pe colr;
alias pad8="pa '\$ts=time;sub Od8n{return($HOd8->new(@_));};\$ds=Od8n();o8(qq(\${G}stRt:).\$ds->colr(q(a)).qq(\$G:\$ts:\$^T;\\n));aw8(q(D8));\$tm=time;
  \$dm=Od8n();o8(q(midl:).\$dm->colr(q(a)).qq(\$G:\$tm:\${M}D\${p}8\$Y:aw8dur8\$G;\\n));\$dw=$HOd8::dur8->new(q(8D));\$dw->w8();\$te=time;\$de=Od8n();
  o8(q(Nd8e:).\$de->colr(q(a)).qq(\$W:\$te:).\$dw->colr(q(a)).qq(\$C: w8dur8\$G;\\n));'"; # shud tAk about ~22secs 2 run; cudB betr az shL func&&!nEdblquOtz?;
# PerlDoc PipeExec PipeLess was orig called pelS, thN pdel B4 tAkng Ovr pdoc 4 colrng perldoc output thru less (2 hopefully look nIce lIk man pAgz in most);
# NAJMGYTB:running t1 just now said a8 (after d8bo RoYGCBMp && YGTBUDSN) leaves 20 undef for single use:ef hij l    q    v x  A   EF HIJ L    Q    V X Z;
#   abs, alarm, chomp, chop, chr, chroot, cos, defined, eval, evalbytes, exp, fc, glob, hex, int, lc, lcfirst, length, log, lstat, mkdir, oct, ord,
#   pos, print, printf, quotemeta, readlink, readpipe, ref, require, reverse, rmdir, say, sin, split, sqrt, stat, study, uc, ucfirst, unlink, unpack... ;
# 2du:stor sepR8 list of Perl keywordz && othr comon syntax LMNtz 4 Use hEr && simLR nEdz Lswher,loop thru $@ && skip -flagkeyz && valUz 2 get topic in $DT,
#   lern wut $/ iz && does 4 how 2 Uz OSC 6n getcursoryx mAB,export $DT mAB as HPDT 8shel "H" PerlDocTopic 2 rElOd if nO pRam givN (lIk v vim && m man du);
pdoc() { if [[ $# -gt 0 ]]; then DT="$1"; else DT='perldoc'; fi; # DocTopic; 4 longSt tIm I didn't rEalIz th@ `pe` runs cOde on evry lIn pIped thru! woops;
  pD     -T  $@ | pe "\$pR=$DT;"'$LG=S("La:GbBID");$LP=S("L:PBIO");$F=S("FbI");s/(^|\s)/$1$R/g if(/^[A-Z]+/);
    s/\b(\w+)(::)/$c$1$T$2$c/g; # had 2 B put B4 nXt pR(am) module name 4 Text::Diff::Config that stripped SKpz leaving overlapping long colr code d8a;
    s/(\s+)/$1$C/g if(s/^(\s{4})($pR\s+)(-)(\s+)/$1$LG$W$2$o$3$z$4/i);s/($pR)([^:])/$LG$1$z$2/gi;s/(\D[^m])(Perl)\b/$1$LP$2$z/gi;
    s/\b(if|elsif|else|die|new|use|my|not|while|defined|length|unless)\b/$Y$1$z/g; # sub-hedrz wi Only 2spAcz,mAin paragraphz wi 4spAcz,indNtz 8 && 9 BlO;
    $Hb=S("HbbI");s/(\s+)/$1$Hb/g if(/^  \S/       );s/(\|)(\w+)(\s|$)/$1$F$w$2$z$3/;s/(\w+)(\|)/$F$w$1$W$2$w/g;
    $Gb=S("A:Gb");s/(\s+)/$1$Gb/g if(/^    \S/     );s/(\s|\[)(-[A-Z])(\s[-A-Z0-9:_]+)?(\])?(\s|$)/$c$1$B$2$Gb$3$c$4$t$5/gi;
    $cB=S("A:cB");s/(\s+)/$cB$1/g if(/^        \S/ );
    $ti=S("D:ti");s/(\s+)/$ti$1/g if(/^         \S/);
    s/(\s|[^-\d])([A-Z_][A-Z0-9]*_[A-Z_0-9]+)\b/$1$o$2$z/g;
    s/(\s|[^-\d])([a-z_][a-z0-9]*_[a-z_0-9]+)\b/$1$Y$2$z/g;s/(" )([^" ]+? \s?[^" ]*?)( "   )/$p$1$M$2$p$3$z/gx; # intrlEvd sngl&&dbl-quOtzBlO2get singlz4regX;
    s/([*])([^*]{1,32})(\1)/$r$1$C$2$r$3$z/g;           s/(['"'])([^' ]+?\\s?[^' ]*?)(['"'])/$p$1$m$2$p$3$z/gx;s/([^m])(\{|\})/$1$W$2$z/g;
    s/(\()([^\)]{1,32})(\))/$O$1$B$2$O$3$z/g; # s/\b([a-z_]+)(\()([^\)]{0,32})(\))/$G$1$O$2$M$3$O$4$z/g;
    s/\b(\$)([A-Z][0-9A-Z_]+)\b/$S$1$C$2$z/gi;$Ab=S("AbBI");s/(\s)([0-9A-Z_]+)(;)/$1$Ab$2$z$w$3$z/gi;s/(-[A-Z])(\s|\.)/$o$1$z$2/gi;
    s/(\b|\d+m)(Yes)\b/$1$G$2$z/gi ;s/([-]{3,})/$c$1$z/g;my $U=S("A:U");s/^(    )(\*)(  \s+)(\S)/$1$U$z$3$w$4/g;
    s/(\b|\d+m)(No )\b/$1$F$2$z/gix;s/([.]{3,})/$W$1$z/g;s/([^\e])(\[|\])([^-\e])/$1$T$2$z$3/g;' | lS; } # lookz quIte nIce sO finished 4 now;
alias pdf8='pdoc Font::TTF::Manual'; # to hopefully learn how to gNr8 .f0x f8 fIlz into .tf0x into .ttf (but there's many 4-letr tAblz 2 lern how 2 manipul8);
alias       ra='   raku';alias rk='raku';alias ru='raku'; # should probably give each of these some good default flag options to make short && easy to use;
# abov loox bood in 80x25 term with cmnd to show xpandng many aliasz like this: `pewh ag agu aguu au auu agr agar aar ai ac acs h H D T Q N n grp psag pl pe` ;
alias     b102='en " 0 000";b8  0 10 2;ec;en " 1 000";b8  1 10 2;ec;en " 2 00" ;b8  2 10 2;ec;en " 3 00" ;b8  3 10 2;ec;
                en " 4 0"  ;b8  4 10 2;ec;en " 5 0"  ;b8  5 10 2;ec;en " 6 0"  ;b8  6 10 2;ec;en " 7 0"  ;b8  7 10 2;ec;
                en " 8 "   ;b8  8 10 2;ec;en " 9 "   ;b8  9 10 2;ec;en "10 "   ;b8 10 10 2;ec;en "11 "   ;b8 11 10 2;ec;
                en "12 "   ;b8 12 10 2;ec;en "13 "   ;b8 13 10 2;ec;en "14 "   ;b8 14 10 2;ec;en "15 "   ;b8 15 10 2;'; # echo alignd b8z; 2du:l8r 4loop nstd;
alias     ba='  bA'; bA() { if [[ "$1" == "" ]]; then unset MX; fi; # 2du:add 93k;
  MX="$1" pa '$wd=$ENV{"COLUMNS"} // 160;$mx = 255;$mx=$ENV{"MX"} if(exists($ENV{"MX"}) && length($ENV{"MX"}));$ml=length("$mx");$ls=0;
  @tz=(2,16,64,128,256);
  $cs=$ml+2;for(@tz){$cs+=length(cnv10__($mx,$_))+1;}
  for(0..$mx){o8(sprintf("%${ml}d:",$_));for $tb(@tz){
      $b8=cnv10__($_,$tb);$bl=length(cnv10__($mx,$tb));o8(sprintf("%${bl}s ",$b8)); # figure out why b8 2 b64 just does nothing
    } o8(" ");$ls+=$cs;if(($ls+$cs) >= $wd){o8("\n");$ls=0;}}'; } # simpl quik&&dirT runthru4prntng BinaryBits of AllAway-from-A(deci)&&othr fAvorit numbAsz;
#lias       gg='   perl ~/dvl/d8/bin/gg   '; # basic perl call to priv8 non-executable development utility to Gener8 G-mail stamps for Gerry (my Dad)
alias     drkh='   pa  "print drkh(@ARGV)"'; # HEX to RgbL with 8th intensities  # abov gg was alias but changed to shell function so 'p' pRam doesn't Xpand;
#lias     h2rl='   pa  "print h2rl(@ARGV)"'; # HEX to RgbLowbitz    # actually trying to reform these alias wrappers to standalone usable new ~/bin page2 utlz
alias h2='h2rl'; # HEXX-To(Rl) &&
alias r2='rl2h'; # RGBl-To(hX) 2-char (half-sized) aliasez 4 Stablishd 4-char conversion Utlz 2 B EZer 2 access wi breviT && hopefully stA mMorabl;
#lias     rl2h='   pa  "print rl2h(@ARGV)"'; #        RgbLowbitz to HEX
#lias     fctz='   plb "      fctz(@ARGV)"';
#lias     fibz='   plb "      fibz(@ARGV)"';
#lias     prmz='   plb "      prmz(@ARGV)"';
#lias     sumz='   plb "      sumz(@ARGV)"'; # printing these was just yielding an extra 1 at each end, after they printed output themselves instead of returnd
alias       dv='   dirs -v';
alias     dirp='   dirs -p|pe "\$_ = \$. - 1 . q. . . \$_"'; # sho lynz
alias      d2u='   dm2u   ';
alias      u2d='   dm2u  d';
alias      del='     rm';
alias     copy='     cp';
alias     move='     mv';
alias   attrib='     en "Forget MicroSoft-DOS. Please use \`man chmod\` instead! ;) "'; # just print advice for this, since calling semantics are so different
#lias     mutt='   mutt; ~/lib/Octology/f8/pal8/TIGSfAVS.pal8'; # mutt clears pal8 colors so at least restore favor8s afterward
# [pip@AkuJ28LIPsh~]en `source-highlight --lang-list`|pe 's/(\S+) = \1\.lang */$G$1$w;/g;s/(\S+) = ([^.]+)\.lang */$C$1$o=$g$2$W;$z/g'|sS; # old B4 BlO...
# asm,awk,bash,bib,c,changelog,conf,csh,css,d,dmd,errors,feature,fixed-fortran,free-fortran,glsl,go,groovy,islisp,java,javalog,json,  ## slItlyrE4m@d; ##;
#  ksh,log,lsm,lua,opa,outlang,oz,properties,r,s,scala,spec,sql,style,syslog,tcsh,tml,upc,vala,xorg,zsh;   ## shls=48;solz:88; B4 solz:64; B4 cut dn2: ##;
# ada:adb;applescript:scpt;bat:batch;clipper:prg;cobol:cbl;coffeescript:coffee;csharp:cs;desktop:ini;diff:patch;erlang:erl;haskell:hs;
#  haskell_literate:lhs;haxe:hx;html:htm;javascript:js;langdef:lang;ldap:ldif;lilypond:ly;lisp:el;logtalk:lgt;manifest:mf;nohilite:txt;
#  pascal:pas;pc:pkgconfig;perl:pm;po:pot;prolog:pl;proto:protobuf;python:py;ruby:rb;scheme:scm;sh:shell;sml:sig;tcl:tk;texinfo:texi;vbscript:vbs;
# caml:ml,mli;m4:ac,autoconf;makefile:am,in;postscript:eps,ps;slang:sl,slsh;  bison:y,yacc,yy;flex:l,lex,ll; latex:cls,dtx,sty,tex;php:ctp,php3,php4,php5;
# fortran:F77,F90,f,f77,f90; xml:docbook,kcfg,kdevelop,kidl,rc,ui,xhtml; cpp:C,H,cc,cxx,h,hh,hpp,hxx,moc;  ## multi-phase,multi-pass procSing 4 s8 ls; ##;
alias shls='ShlS|sS|pe "@lngz=split(/;/,\$_);\$prev=0;\$_=q(); #\$.=q(shls:);\$_.=q( src-hilite ls s8;lmapz:);
  for     my \$lang (@lngz){if(\$lang=~  /(\S+)=(\S+)/){\$lmsz{\$2}++;\$lmap{\$2}.=\$1.q(,);} #elsif(0&& !exists(\$lmsz{\$lang})){push(@solz,\$lang);}
      else{\$solo{\$lang}++;}} #\$_.=scalar(keys(%lmap)).q(;);\$_.=q(solz:).\$#solz.q(;); # these are mainly commented out intro header d8a now;
  for     my \$soln (sort(keys(%solo))){if(\$soln=~  /^(haskell_insmthng2reject)\$/){\$_=q(prepend:).\$soln.qq(\n).\$_;}
                                     elsif(                 !exists(\$lmsz{\$soln})){\$_.=\$G.\$soln.\$Y.q(,);}}s/,\$/\$W;\$z\n/;
  for     my \$fsiz (sort  {\$a <=> \$b} values(%lmsz)){if(\$prev!=\$fsiz){ # basic grouping && reformatting of language familiez by varE8ion size (160 colmz)
      for my \$faml (sort(keys(%lmap))){if(\$lmsz{\$faml}==\$fsiz){\$lmap{\$faml}=~ s/,\$/\$W;/;\$lmap{\$faml}=~ s/,/\$w,\$g/g;
          \$_.=\$G.\$faml.\$o.q(:).\$g.\$lmap{\$faml};\$_.=\$z.qq(\n) if(\$fsiz < 0);}} \$prev=\$fsiz; # basic spacing below to align;
      if(\$fsiz=~ /^(1|4)\$/){\$_.=\$z.qq(\n);}else{\$_.=q( );}\$_.=q( ) if(\$fsiz=~ /^(2|7)\$/);\$_.=q(    ) if(\$fsiz==5);}}s/ \$//;
  s/(java|haskell_literate|pascal)(\e)/\n \$1\$2/g;%smap=(perl=>\$P,xml=>\$M,json=>\$B,ini=>\$Y,js=>\$c,conf=>\$C,htm=>\$m,zsh=>\$R,py=>\$p,ly=>\$O);
  for my \$skey (sort(keys(%smap))){s/(\$skey)\e/\$smap{\$skey}\$1\$z\e/;}"'; # want 2 special-colr othr favr8z 2 4 l8r? `s zsh ~/.zshrc` hangz why?;
alias ShlS='en `shll`|pe "s/(\S+) = \1\.lang\s*/\$G\$1\$w;/g;s/(\S+) = ([^.]+)\.lang\s*/\$C\$1\$o=\$g\$2\$W;\$z/g;
                s/(perl)/\$P\$1/g;s/(xml)/\$M\$1/g;s/(json)/\$B\$1/g;s/(ini)/\$Y\$1/g;s/(lily)/\$m\$1/;s/(conf)/\$c\$1/g;s/(zsh)/\$R\$1/g;"';
alias    shll=' source-highlight --lang-list'; # just setup src-hili 4 Languages-List && l8r aut0-traverse thru all like ShlS abov but call s() belo on each
alias   srchl=' source-highlight -f esc --style-file=~/.shl.style'; # hopefully EvN2ally c8 can supplant shl for file && cmd auto-reformatting && color8ion
alias    shlp=' srchl -s perl -i';alias shlc=' srchl -s conf   -i'; # assume source code is Perl or Conf && expect next param 2B Input source-code filename
alias     shl=' s';alias sSd='sS d';alias sSe='sS e';alias sSE='sS E'; # abov srchl chngz Dfalt HTML output 4m@ 2 ANSI SKpz && setz compOnNt fEld colr style
#lias       s=' shlp'; # assume Perl sinc an upd8 2 source-highlight Cmz 2 nO longer correctly autODtect whN input fIlz R such code (2du:tSt4problMAgNl8r);
# Sun 02 Jun 2019 02:50:13 PM UTC, comment #6: Fixed. Tom Tromey <tromey> Project Administrator; K37L1shl:edited from HTTPS://Savannah.GNU.Org/bugs/?45299
# Tue 22 Aug 2017 04:47:33 PM UTC, comment #5: Problem in zsh.lang. The keyword clause ends with trailing vertical bar. Remove && it will work. Anonymous;
s(){  ifil="$1";synl='';if [[ "$#" -gt 1 && "$2" != "" && -e "$2" ]]; then synl="$1";ifil="$2" ; elif [[ "$#" -lt 1 ]]; then ifil="$HOME/bin/8ct";
  elif   [[ -e "$1" ]]; then # BlO 2 stRt adng elif tStz 4 XtNsion nAmz (mAB wi $(E) something too?) 4 autOpik lang; srchl --lang-list|g $XtNs;
    if   [[ ${(L)1} =~ \.sh$ ]]; then synl='bash'; elif [[ ${(L)1} =~ \.html$ ]]; then synl='htm'; elif [[ ${(L)1} =~ \.cfg$ ]]; then synl='conf';
    elif [[ ${(L)1} =~ \.py$ ]]; then synl='py'  ; elif [[ ${(L)1} =~  \.xml$ ]]; then synl='xml'; elif [[ ${(L)1} =~ \.8\.$ ]]; then synl='conf';
    elif [[ ${(L)1} =~ \.t2?$  ]]; then synl='perl'; # get test scriptz 2?;
    elif [[ ${(L)1} =~ \.raku$ ]]; then synl='perl'; # 2du:chng backtix 2 $(cmdz);
    elif [[ `cat "$1"|head -n 1|grep -l '^#!.*zsh' ` != "" ]]; then synl='bash'; fi; # tryd2Dtect Zsh script #! lIn2set syntax language,but zsh.lang hangz =(
    if   [[ `cat "$1"|head -n 1|grep -l '^#!.*perl'` != "" ]]; then synl='perl'; fi; fi;  # multi -i B4 othr pRam ls? used2question that at very end; YnEd if?;
  if     [[ "$synl" !=    "" ]]; then echo " source-highlight -f esc --style-file=~/.shl.style -s $synl -i $ifil;"; srchl -s $synl -i $ifil; # 2du:tStallsynlz;
  else                                echo " source-highlight -f esc --style-file=~/.shl.style          -i $ifil;"; srchl          -i $ifil; fi; }
#lias     bat='batcat --pager="less -RF" --style="header,grid" --theme="TwoDark"'; # N53M0bat:cat(1) clone with syntax-highlighting && Git integr8ion;
# N7LMNNPM:`bat --list-themes >/tmp/bat-themes.ls` 1337 DarkNeon GitHub OneHalfDark  "Monokai Extended"       "Monokai Extended Bright" ansi-dark
#   "Sublime Snazzy"                       base16    TwoDark zenburn    OneHalfLight "Monokai Extended Light" "Monokai Extended Origin" ansi-light
#   Used to have `ai bat` with v0.12.1 && /usr/bin/batcat but did `sz;apt remove bat;dpkg -i ~/dvl/t8/shl/bat-musl_0.23.0_amd64.deb` since orig was way old;
#   HTTPS://TmTheme-Editor.Glitch.Me/#!/editor/theme/GitHub seems to allow for online crE8ion of .tmTheme XML files which can go in ~/.config/bat/themes/ &&
#     then run `bat cache --build` to allow the new entries to be seen by `bat --list-themes`. HTTPS://GitHub.Com/svermeulen/text-to-colorscheme 4 nvim&&GPT4;
#   HTTPS://GitHub.Com/aziz/tmTheme-Editor HTTPS://GitHub.Com/jibsen/yamltotm (Python 2 gNr8 .tmTheme from .yaml HTTPS://GitHub.Com/pouyakary/themeX 2 gNr8?;
alias    d128='b10 `d8`|b128';alias d1='d128'; # bat mA nEd --paging=never 2skip `most` 2rendrANSIcolrz or less can with -R so that; ## Last theme: zenburn;
alias    d256='b10 `d8`|b256';alias d2='d256'; #   --list-themes: 1337 DarkNeon GitHub 'Monokai Extended' "Monokai Extended Bright" 'Monokai Extended Light'
alias    d93k='b10 `d8`|b93k';alias d9='d93k'; #   : 'Monokai Extended Origin' OneHalfDark OneHalfLight 'Sublime Snazzy' TwoDark ansi-dark ansi-light base16
bathm() { for BThm in 1337 DarkNeon GitHub OneHalfDark OneHalfLight TwoDark ansi-dark ansi-light base16 zenburn;do bat --theme=$BThm $@;ec $BThm;
  W8Ky=`w8k 88`;if [[ ${(L)W8Ky} =~ x ]]; then return 0;fi;done; }; alias bpl='bat -lpl'; # like shl && SynCat spl,nEd 2 mk VimDefault.tmTheme 4 bat 2;
bplc () { bpl -f $@ | bsc; }; # force bat coloriz8ion && Substitute the Colors to be closer to a shl or vim or spl (stil proly nEd2mk .tmT 4 mor colr c@z);
alias    d8pe='d8 e|pe "s/\\..*//"|b64'; # NCELEBR8:print epoch d8 now && pipe-eval stripping sub-second fractional part post-decimal; BlO addz pHASS;
alias    d8ep='d8 e|pe "\$f=q();if(s/(\\..+)//){\$d=q(0).\$1;\$f=q(%).b64(int(64*\$d)%64);};\$_=b64(\$_).\$f;"'; # try2apNdjust singl b64 pHASS char4fractnpRt;
alias    d8wf='d8=`d8`;en "d8:$d8;"|flet                     ;ec;ec "d8B4:$d8;";ec "d8af:`d8`;"'; # d8-timer Wraps Fusion of d8 thru Figlet Font Filez;
alias      fl='d8=`d8`;en "d8:$d8;"|flet > ~/.log/flet-"$d8".log;ec "d8B4:$d8;";en "d8af:`d8`;"'; # run flet as just fl && redirect STDOUT 2 .log file 2ck;
alias      wf='d8wf';FL() {  figlet -w $COLUMNS -f $1; # just Wrap   Flet in d8z;also mkFL just for auto d8 4 now,l8r any pipe2; # BlO can inXclud2&&mapb64+;
}; alias lsfl="ls /usr/share/figlet/*|gv -|pe 's{/usr/share/figlet/}{};s/\\.flf\\n/ /g;s/ \[0-9a-z_\]+ / /g;'"; # umm quik dope-as-fsck!  ;)
alias      S8='   shl8'; # my primitive c8:SourceHighLight8 Utl to hopefully eventually approach functional parity with source-highlight before surpassing it
export     d2="$HOME/dox/2du"; # K6LMLhot: `ai libgtkhotkey-dev libgtkhotkey1 sxhkd triggerhappy khotkeys-data khotkeys-dev khotkeys` to hotkey Octology demo;
export     gs="$HOME/gfx/sho"; # K6MMGFix: actually adding xe() to a8.pm to wrap `xte` for Octl dMO autom8ion seems better than above hotkey options (so far);
export     mv="$HOME/mvz/U2b"; # KA1MGAmv: add my main MoohVz directory as another shortcut ENV variable;
export     mu="$HOME/muz/U2b"; # K6NMD3AF: add my main MUzicz directory as another shortcut ENV variable;
export     mU="$HOME/muz/U2b";alias R='reset'; # Up-U! ;)
alias      LS="$HOME/mvz/U2b/vid/;mp -fs L*To* L*Sh* L*He*"; # LindseyStirling whom I dearly love && adore, doing SleepWalking(WayToo),Shadow,&&Heist(fItgAm);
#lias      ML="mplyr -nosound -ss 11 -endpos 299 -fs -geometry 1920x1080+0+0 $HOME/mvz/dvl/rec/PS-Octology-PerlConfer*-Take0-K6G*.mp4"; #run audio-less video;
alias      ML="mplyr          -ss  4 -endpos 310 ~/mvz/dvl/rec/PipStuart-Octology-PerlConferenceInTheCloud-LightningTalk-June24-26th_2020-Take2-K6OM84Me.mp4";
alias      GL='g3lt   '; # GoodLuck GodsLove GameLife GoneLong GrabLunch GetLadies GutLosers GiveLicense GoLast GraphicsLibrary Gr8Laser GroupLeaders GetLoud;
#lias    g3lt='cd; pu $mu;wh g3lt;gst123 -k  212 Oi*;g3 63 36 63 63 u*/El* ../f*/Bo*/T*/B* *br* c*/Gi* -v monoscope;ec;g3 ../wa*/Bo*/B*;ec;Hlt;ec;po';
alias    g3lt='cd; pu $mu;wh g3lt;gst123 -k  212 Oi*;g3 63 36 63 63 u*/El* ../f*/Bo*/T*/B* *br* c*/Gi*             ;ec;g3 ../wa*/Bo*/B*;ec;Hlt;ec;po';
alias     Hlt='g3  48 $mu/chl/Hack*Univ* -k 3420'; # add just 1st seconds of gr8 part 2 push above 4mins12secs right up against 5mins total 4 LightninTalk;
alias      HU='g3 188 $mu/chl/Hack*Univ* -k 3420 -vk'; # Fil_Far's HackrCodngMusic Universe rad Nd-pRt2 -k --sKip 2 (57mins==`q 57x60`secs) GooM2K1 -v(is);
           SC8() { d8=`d8`;lodH              >/tmp/S.H-$d8.ansi;sloc -b 262144 /tmp/S.H-$d8.ansi $gs/calN-160x50-K6GM*.ansi $gs/8plc-160x50-K6NMAPag.ansi ;
                                                                                                 rm /tmp/S.H-$d8.ansi; }
           SC()  { d8=`d8`;shlc $d2/cred.utf >/tmp/SCu-$d8.ansi;sloc -b   1146 /tmp/SCu-$d8.ansi;rm /tmp/SCu-$d8.ansi; }
           GG()  { pu $d2/.bak/.g6./.GG.;if [[ $# -gt 0 ]]; then ./GG $@; else ./GG -a; fi; po; } # GuyGooway's: GoodGames GoneGrooving GropingGirlies;
alias    g3BRO="cd ~/muz/U2b/nxt;ec 'g3 -vi -Z BtieBoys RammRage Obsidia8';g3 -vi -Z \$(ls ~/muz/flac/Rage*/*/*.flac ~/muz/flac/B*Boys/**/*.flac ~/muz/mp3/BadR*/*/*.mp3 ~/muz/mp3/RonD*/*/*.mp3 ~/muz/mp3/Rammstein/[12][90][90][5714]*/*.mp3 A* Bee* E*-[NRT][eaoh]* G* O* O* Ra* S[eh]* V* ../O* ../O* ../obs/*Nig* ../obs/*Nig* ../obs/*Meta* ../obs/*Dead* ../obs/*Dead* ../obs/*Die* | gv jpg | grp '.mp3$\\|.ogg$\\|.flac\\|.m4a$\\|.opus$' | gv 'Meister\\|Riechst\\|Sehnsucht\\|Tier\\|Spiel\\|Klavier\\|Alter\\|Eifersucht\\|English\\|Spieluhr\\|Zwitter\\|Rein_Raus\\|Adios\|Nebel\\|Morgenstern\\|Amour\\|Modell\\|Unit\\|80-85')";
alias    g3f='g3 11 -k 363 ~/muz/flac/Boo*/Boo*/14*Hell*'; # BBoyz-FknMthaFka!
alias     bj='blkjk|pe "s/Player\\d+\\s+cmp2D:\\s+\\S+\\n//g;s/(Player)(\\d+)/\$p\$1\$W\$2\$z/;s/(Dealer)(\\d+)/\$M\$1\$w\$2\$z/;s/(Purse)/\$C\$1\$z/;s/(\\s*\\d+\\s+)(hand)/\$W\$1\$r\$2\$z/;s/(Black)(Jack)(!)/\$K\$1\$R\$2\$W\$3\$z/;s/(Busted)(!)(Jk)(!)/\$Y\$1\$W\$2\$r\$3\$W\$4\$z/;s/( S)(c)(o\\w+)/\$C\$1\$c\$2\$C\$3\$y/;s/([: ])(\\w[hd])/\$W\$1\$R\$2\$z/g;s/([: ])(\\w[sc])/\$w\$1\$K\$2\$z/g;s/(:)(\\$)(\\s*\\d+)(\\.)(\\d\\d)/\$Y\$1\$B\$2\$G\$3\$O\$4\$P\$5\$z/g"';
# HTTPS://YouTu.be/J0TWTnYZBdM LimpBizkit-FuckinSong
# HTTPS://YouTu.be/UrgpZ0fUixs DenisLeary-AssHole
# Many of these Octology aliases should become special V8 via c8 coloriz8ion command wrappers or otherwise enhanced (&& simplified?) && unified funcs or cmdz:
alias       0=' ogg123'; # o 123 : zer0 lIke lc o audio-player # maybe l8r try to figure out better aliases 4 numbers here since they could be good shortcutz;
alias       1=' mpg321'; # m 321 :                audio-player # simple && light-w8 command-line MP3 player based on mad decoding library (drop-in 4: mpg123);
alias       2=' mpg123'; # m 123 :                audio-player which plays audio MPEG 1.0/2.0/2.5 streams (layrz 1, 2, && 3),was non-free unlike abov`mpg321`;
#lias       3='   g3  '; #  g3   :         gst123 audio-player wrapped with Expect manipul8ion layer (J29:3 now 3rd sepR8 varE8ion off g3 2get abit trickier);
alias       4='   x4t '; #  4    : xfce4-terminal xf4tm terminal emul8or where `x4t` is defined more elabor8ly to start with my preferred defaults elsewhere;
alias       5='perl   '; #  5    :          perl  (5.28.1 l8st perl5 in /usr/bin/ on Pip's $HOST Oni as of`d8 K2MLAUGH`=>"Sat Feb 22 10:30:16:17 -0600 2020")
alias       6='perl6  '; #  6    :          perl6 (which presumably should be renamed at some near future point to: "raku" for disambigU8ion && clarific8ion)
alias       7='    7z '; #  7    :              7z 7-Zip - file-archiver with high compression r8io format that implements LZMA algorithm && handlz many 4m@z
#lias       8='  viii '; #  8    : lc RomanNm viii vim alias (defined elsewhere in this file) which might eventually branch off into Octology editor varE8ion
alias       9='  c99  '; #  9    :            c99 (ANSI [1999] C compiler,where status of fE8urz in GCC described@: HTTP://GCC.GNU.Org/gcc-9/c99status.html )
alias    a='asciiview '; #  a    :           asciiview (An Ascii-Art imAge/Anim8ion browser depends on `aview --help` 4list of options thN filename.p[ngbp]m)
alias    A='asci      '; #  A    :           asci (Another AliAs2Auto-Aligned Ascii And Accentu8d ApprAisAl of Artistic Attributes of AvAilAble Acters[chAr])
alias    asci='   ASCI';alias AH='A -H'; #HitAdolf(default call U8.pm UTF8 to print just most of the first 256 characters, or take other params as UTF8 can)
alias    ASCI='   utf8'; #       :           UTF8 (default already 256 internally wi no $1) # BlO setup function to default $1 end indX 4 how many UTF8 chars
         utf8() { if [[ $# -gt 0 ]]; then UTF8 $@; else UTF8 4096; fi; } # hopefully GnomTerm, XTerm, STTerm, && Sakura can each stay mostly aligned up2 4096
#lias      u8='   utf8'; #       : made U8.pm u8; (renamed asci to UTF8 in U8.pm && ~/bin/, then made utf8 here a function 2take parameters or default hIghr)
alias      p6='perl6  ';
alias      bk='   b   '; #  bk   :            b   (originally Pip::Utl file BAcKup command) # this str8forwardly crE8z a .bak/ subdir&&copiez d8d fIlez in2it
            b() { bak  "$@"; }   # unalias    b   (redefining as simple function wrapper resolves parameter alias expansion problem [but still will glob ok])
alias       B='   b   ';         #                (above function probably needs dbl-quotes around parameter list to keep spaces in filenames from splitting)
alias      cm='cmatrix';
alias     cls='clear -x'; # cls  :          clear (like DOS command for CLearScreen)  # -x optnflag trIez 2 prEserv scrollbak && just blank $TERM in newlinez
alias       C='cls    '; #  C    :B4 clear was wc (Count charz,words,&&lines&&eventually bits,bytes,[KMGTPEZY]i?bits|Bytes,code points,paragraphs,subs,etc.)
alias      CC='cd;C   '; #       :                (combines Change directory back2 home ~ && then Clear screen,pretty easy2type 1-handed but Enter is a reach)
alias     CCC='CC;een "\e[3J"'   ; # special super Clear of scrollback too (goodaftr `kp` along wi xx 2clear paste buffers);CSI n J - ED(Erase in Display)
alias    dusb=' du -sb'; #  du   :             du|df|dfc     (Disk usage, free, etc.) with -sb to Summarize (only total4each arg) with block-size Bytes
alias     dus=' dusb  '; #                        it's often pretty useful to pipe the raw decimal size Summary in Bytes in2 `cma` 4isol8ing Thou,Mill,Bill...z
alias      ds=' dus   '; #                        might be nice to l8r offer parameter options to `b64` && `b256` to only oper8 on 1st decimal field(lIk `cma`)
alias     dub=' dusb  ';                        # maybe EvN2ally `dub` shudB realloc8d as somehow rel8d 2gr8 Obsidia|PegBoardNerds|Tristam|TutTut Dubstep mUzic
alias      db=' dub   ';                        # maybe EvN2ally `db`  shudB realloc8d as somehow rel8d 2 d8a-base (PostGreSQL?) queries, manipUl8ion,&& mngmNt
# no longer just d aliasing du above since better to apply to ~/bin/dic (my colorful enhanced `dict` wrapper, like piping thru `colorit`) since I Use it fR mor
#lias       F='   f   '; #  O3GM0SPF:thinking of f stayz find 4 fundamental but F->sprintf && P->pf->printf instead of pal8 wich is already fine wiot P? hmm…;
alias       f='   find'; #  f    :           find            (with combined interface to loc8?)
#lias       g='   grp '; #  g    :          sarep|(e|f)?grep (sed|awk too?)
            g() { grP   $@; }    # unalias    g   (redefining as simple function wrapper resolves parameter alias expansion problem [but still will glob ok])
alias      ga='   g -a'; #                              grep -a to   binary-As-text   (rEsolvz `g Brail ~/dvl/*/*.pm` "grep: k8/k8.pm: binary file matches");
alias      gi='   g -i'; #                              grep -i to      Ignore_case ## whN Uzng ga abov, B careful on just XtNsionz 4 UTF8 2 trEt az tXt ...
alias      go='   g -o'; #                              grep -o to      Only_matchz ##   not lIk:`gas Brail ~/dvl/*/*/*` Bcuz th@ trIz 2 prnt rEl bInaryz! =( ;
alias      gv='   g -v';alias gvg='gv grep';  #         grep -v to                     inVert_match_results (gs is already GhostScript so not aliased to g -s)
alias      gS='   g -s';alias grs='gS';alias gms='gS'; #grep -s to SupreSS warningS        ## -s also like gns a bit below;
alias      gH='   g -H'; #                              grep -H to sHow Header_file_name
alias      gT='   g -T'; #                              grep -T to make sure -n liNeNumber && -b Byteoffset && matchingtextline start on initial-Tab stopz2alIn
alias      gn='   g -n'; #                              grep -n to show liNe_Number
alias      gb='   g -b'; #                              grep -b to show Byte_offset && also want -u to Use-Unix-byte-offsets for MS-DOS or MS-Windows OpSystMz
alias     gai=' ga  -i';alias gia='gai';alias gas='ga -s';alias gan='ga -n';alias gain='gai -n';alias gaiv='gai -v';alias gainv='gain -v';alias gavin='gainv';
alias     gio=' gi  -o';alias goi='gio';alias gbu='gb -u';alias gnv='gn -v';alias gvn='gnv';alias ginv='gin -v';alias givn='ginv';alias gns='g -s'; #-no-mSgz;
alias     gin=' gi  -n'; #                              grep    to both Ignore_case && Only___match_include (but alreD was /usr/bin/gio 4 mAB GLib InptOutpt?)
alias     giv=' gi  -v'; #                              grep    to both Ignore_case && inVert_match_results
alias     gis=' gi  -s'; #                              grep -s to both Ignore_case && --no-messages suppress messages like glob * getting directories
alias     gvs=' gv  -s'; #                              grep -s to both                inVert_match_results && --no-messages  # gs already taken by GhostScript
alias    givs=' giv -s'; #                              grep -s to      Ignore_case && inVert_match_results && --no-messages  #   which is proly like evince
alias    gais=' gai -s';alias gains='gain -s';alias gaio='gai -o';alias gaios='gaio -s';alias gaso='gas -o';alias gaos='gaso';alias ganos='gaso -n';
alias   gaino='gain -o';alias gainos='gaino -s';alias gainosv='gainos -v';alias gainsov='gainosv';          alias gano='gan -o';alias gasno='ganos';
alias     gvH='  gv -H'; #                              grep -H permut8ionz... but all these should probably be re-grouped tightly near `ls` permut8ionz above
alias     gHs='  gH -s';alias    givH=' giv -H';alias    gvsH='  gvs -H';
alias     gsH='  gH -s';alias    gisH=' gis -H';alias   givsH=' givs -H';
alias    gcwd=" gnv '[ ?]?' ~/dox/Ppl/Dad/ChatWithDad-K43MJ000.utf|g '([KL][0-9A-C].[ML]|\\?)'"; # grep d8z && non-spAcd lone quStion-mRkz in Ch@WiDad;
alias    gadd='  gi "^ *[a-z8]*8[a-z8]* *[:#].* add.*8" ~/dox/2du/8.utf'; # early varE8ion wich didn't rEquIre pound after colon,lIk BlOw expecting both l8r
alias    gad8='  gi "^ *[a-z8]*8[a-z8]* *:.*#.* add.*8" ~/dox/2du/8.utf'; # utility alias 2 grep 8.utf 4 all comments describing potential words to add l8r
alias     gad='  gad8 '; # while the above 2 originally differed into more restricted result count, material text has been upd8d such that they match on I98
alias      eg='  egrep'; # eg    :                 e    grep
alias      zg='  zgrep'; # zg    :                     zgrep (like zcat for *.gz)      # below heX aliasing must get decimal input piped thru, can't du pRam
alias       G='  zg   ';                        # (if hX duz!wrk BlO,try`HEX|perl -pe 'lc'`or shL func.Note:had2unalias lc ls -ct ChngTime 2mk tr 4lowr&&uc.)
          heX() { HEX   $@ | lc; } #  heX  :  heX (shouldbe rel8ively equivalent 2old ~/bin/heX of Octology::b8->heX() 2turn decimal input in2 lowercase heX)
alias      hX='heX    '; #   hX  :              # (just more terse varE8ion with same pronunC8ion for lowercase  heX ) # might want to sepR8 implement8ions?
alias      bt='  btop ';
alias      ht='  htop ';
alias       H='  htop '; #       :       "H"  8sh (should EvN2ally be custom Octology shell instead of just UpperCase administr8ion access2 htop diagnostics)
alias       h='history'; #  h    :        history (built-in in zsh && probably needs to be built-in for 8sh too)
alias       I='   i   ';
alias       i='   info'; #  i    :           info
alias       J='   j   ';
alias       j='   jobs'; #  j    :           jobs (shell-built-in)
alias       k='kill   '; #  k    :           kill (maybe kill is too risky to abbreV8 this tersely?)
alias      ka='killall'; #  ka   :           killall
alias      k9='k -9   '; #  k -9 :           kill with -9 force
alias       K='k9     ';
           vm() { $HOME/.vim/bundle/vim-superman/bin/vman $@; } # cd ~/.vim;mc bundle;g8c https://github.com/jez/vim-superman.git vim-superman; 4betr-than-most
alias       M='   m   ';
#lias       m='   mn  '; #  m    :            man (mn() already zsh function below, but may soon extract to preserve parameter history like d8:dic)
alias m='mn'; # m() { mn   $@; }     # unalias   m && redefining as simple function wrapper resolves manpage param alias expansion problem (but still will glob)
alias      mm=' mikmod'; # prolly scream 3 times if you can read hahahaha !!! :)
alias      nf='neofetch';
alias      P0='pP 0';alias P1='pP 1';alias P2='pP 2';alias P3='pP 3';alias P4='pP 4';alias P5='pP 5';alias P6='pP 6';alias P7='pP 7'; # run 64 basic prOfIlez
alias      P8='pP 8';alias P9='pP 9';alias PA='pP A';alias PB='pP B';alias PC='pP C';alias PD='pP D';alias PE='pP E';alias PF='pP F'; # thru Picker all up-Pz
alias      PG='pP G';alias PH='pP H';alias PI='pP I';alias PJ='pP J';alias PK='pP K';alias PL='pP L';alias PM='pP M';alias PN='pP N';
alias      PO='pP O';alias Pp='pP P';alias PQ='pP Q';alias PR='pP R';alias PS='pP S';alias PT='pP T';alias PU='pP U';alias PV='pP V';
alias      PW='pP W';alias PX='pP X';alias PY='pP Y';alias PZ='pP Z';alias Pa='pP a';alias Pb='pP b';alias Pc='pP c';alias Pd='pP d';
alias      Pe='pP e';alias Pf='pP f';alias Pg='pP g';alias Ph='pP h';alias Pi='pP i';alias Pj='pP j';alias Pk='pP k';alias Pl='pP l';
alias      Pm='pP m';alias Pn='pP n';alias Po='pP o';alias Pp='pP p';alias Pq='pP q';alias Pr='pP r';alias Ps='pP s';alias Pt='pP t';
alias      Pu='pP u';alias Pv='pP v';alias Pw='pP w';alias Px='pP x';alias Py='pP y';alias Pz='pP z';alias P.='pP .';alias P_='pP _';
#lias       P='   pal8'; #  P    :2prntf?O3G pal8 terminal color setting utility from my Octology::f8 module ("f8ful 0per8ion" for handling f0nt && pal8 d8a)
alias       p='   CCC '; #  p    :            CCC (p used to be just 'ps' "Process Snapshot" but remapped to super Clear from above for easy one-hand entry)
alias     PPP='   ppp '; #  PPP  :  pull pushd, purge previous back to just a plain prompt, then popd so that past scrlbak wipez with working dir preserved;
alias      pl='   perl'; #  pl   :           perl (with the most common file-extension for typical Perl code as a way to invoke the interpreter itself also)
#lias      pL='pP L   '; #  pL   :           pP L (aidyLaicyLiteral LuciousLadyLumps LovelyLivelyLoudy LastLiasLpro); pPA triez 2 loop in Perl nstd of ZshL;
alias      pp='Pp';      #  pp   :pP p # pA() BlO is: profileAll 2 thrO out P PipStu d falt, pp, cc8, gg, jj8, ii, RR, BB, LL, OO, WW,   kk, &&        vv;
alias      pc='Pc';alias pg='Pg';alias pj='Pj';alias pi='Pi';alias pR='PR';alias pB='PB';alias pL='PL';alias pO='PO';alias pW='PW';alias pk='Pk';
#alias!pv='Pv'; don't alias this anymore since /usr/bin/pv is probably good PipeViewer Utl th@ cud B Useful && lernd from 4 my Own terminal appz l8r 2;
mX() { cd $HOME/dvl/Ppl/bep/mad-scientists-lab/ta;for Mrkt in BTC ETH EOS XRP;do bin/mexico -x bybit -m $Mrkt/USD -t 1m -s last -l 160 -v;done;};alias mx='mX';
# pA(){for HPrF in d p c g j i R   B L O W k v; do   echo -en "$W$HPrF ";pP "$HPrF";     d8 -a;echo -en "$z;"; # why did en && een aliasez hav probz?
#   if    [[ $COLUMNS -lt 160 && $HPrF == R ]]; then echo             ;fi;done;echo; # w8 W abov && belo NAbld almost all pP callz 2 finish B4 d8 -a stRtd2;
# for      HPrF in 0 1 2 3 4 5 6   7 8 9 A B C D E F  G H I J K L M N O P Q R S T U V  W X Y Z a b c d e f g h i j k l  m n o p q r s t u v w x y z '.' '_';
#                                               do   echo -en "$W$HPrF ";pP "$HPrF";     d8 -a;echo -en "$z;";if [[ $HPrF =~ ^([CPcp]) ]]; then echo;fi;
#   if    [[ $COLUMNS -lt 160 && $HPrF =~ ^([6JWjw]) ]]; then     echo;fi;done;pP  ;};alias ppa='pA';alias PPA='pPA'; # altrn8 3-char all UP or low aliasez;
#pPA(){if [[ $COLUMNS -lt 160               ]]; then # above does shell environment looping while this 1 below here passes all profile keyz as direct pRamz;
#          pP      d p c g j i R - B L O W k v - 0 1 2 3 4 5 6 - 7 8 9 A B C - D E F G H I J - K L M N O P - Q R S T U V W - X Y Z a b c - \
#                  d e f g h i j - k l m n o p - q r s t u v w - x y z . _ d;
#    else  pP      d p c g j i R   B L O W k v - 0 1 2 3 4 5 6   7 8 9 A B C - D E F G H I J   K L M N O P - Q R S T U V W   X Y Z a b c - \
#                  d e f g h i j   k l m n o p - q r s t u v w   x y z . _ d;  fi  ;}
#  a8:%cmap{8pal8} krOgcbPw KRYGCBMW  ehodtspi EHyDTSmI   .fuaznlj _FUAZNLJ  02468xvq 13579XVQ   # orig by 13z abov was nIc 4 alIning uc && lc but 16z betr;
pA() { for HPrF in k r O g c b P w  K R Y G C B M W  e h o d t s p i  E H y D T S m I  '.' f u a z n l j  '_' F U A Z N L J  0 2 4 6 8 x v q  1 3 5 7 9 X V Q;
         do echo -en "$W$HPrF";pP "$HPrF";d8 -a;echo -en "$z;";if [[ $HPrF =~ ^([WIJQ]) ]]; then echo;fi;
       if [[ $COLUMNS -lt 160  &&  $HPrF =~ ^([wijq]) ]]; then echo;fi;done;pP;}; alias ppa='pA';alias PPA='pPA'; # altrn8 3-char all UP or low aliasez;
pPA(){ if [[ $COLUMNS -lt 160               ]]; then # above does shell environment looping while this 1 below here passes all profile keyz as direct pRamz;
           pP k r O g c b P w - K R Y G C B M W - e h o d t s p i - E H y D T S m I - '.' f u a z n l j - '_' F U A Z N L J - \
              0 2 4 6 8 x v q - 1 3 5 7 9 X V Q; # chngd both to 8pal8 order && upd8d a8.pm:pP to not space after key anymore either so 2pal8z fit 160colmz;
     else  pP k r O g c b P w   K R Y G C B M W - e h o d t s p i   E H y D T S m I - '.' f u a z n l j   '_' F U A Z N L J - \
              0 2 4 6 8 x v q   1 3 5 7 9 X V Q;fi;pP;echo -e "$z";} # pPA is much faster looping in just perl than looping && calling out in pA above;
LK (){ if [[ $COLUMNS -lt 160               ]]; then # new LoKi StarLord Quill (Quest?) ChristopherNitzchke brother-man (not LiuKang) to show b10 of b64 LK;
    export lk='lOkI';       b10 $lk|cma|b8clr;ec "$W=${m}l${O}O${k}k${p}I$g as$B b10$w;$z"; # l8r substr/regex out sub-charz && auto y/// or UC($lk) 42 LK;
    export LK='LoKi';en ' ';b10 $LK|cma|b8clr;ec "$W=${M}L${o}o${K}K${P}i$G as$B b10$W;$z"; fi }
alias lk='LK'; # [pip@OniLC9L8jKm~]lk; en bAsic-f0numz; [pip@OniLC9L8jLw~]en '(920)636-6271' [pip@OniLC9L8lbj~]en '(920)637-8634'
# 12,422,034=lOkI as b10;              # b64 920; EO; b64 636; 9y; b64 6271; 1X_; b64 637; 9z; b64 8634; 26w;  en "(EO)9y(z)-1X_(26w);" # cud diff sectnz 2;
#  5,711,148=LoKi as b10;              # b10 EO; 920; b10 9y; 636; b10 1X_; 6271; b10 9z; 637; b10 26w; 8634; #[pip@OniLC9L8num~]en 'abov hybrid of both #z;';
alias     ppp='pu;p;po'; #  ppp  :       prepriv8 (same as single p for CCC cd,clear,cut scrollback but wrapped with pushd && popd aliases to undo the cd ~)
alias       T='   tee '; #  tee  :            tee (maybe can wrap into c8 with cut,cat,colored columns?); rEmMbr standRd `tr -d ...` is transl8 DlEt like subS
alias       t='   tmux'; #  tmux :           tmux|screen ... any other altern8ive multiplexers forked out there? (orig:  `tsgr b` shO xtrm256colr pal8 Blox)
alias       x='   exit'; #  x    :           exit
alias     lSX='   lS       -X'; # lSX:       lS-X (sAm azBlO Fitz,Kill(Ktrl-c2Kwit),RawRendition(ofSKpz),&&SizedScreenwrap with no init(just Xit) no rEstorng)
alias     lS='    less -F -RS'; # lS :       less (with Force auto-Xit if Fitz lS than1 Full scrn,Kill on Ctrl-c,Raw outpt4ANSI SKpz,Scrnwidth-wrap long lInz)
export PAGER="`which less` -FRS "; # O3QM1AUB:m mo man most must give way to lS less with way better vim && SKp stuf; aparNtly -FK can't retn2cmd prmpt4CtrlC!;
alias      mo='   most'; #  mo   :           most|more  (the color support in less abov may motiv8 me to chng my PAGER over to that instead of mo here... hmm)
alias      mdp=' md -p';alias mdv=' md -v'; # mkdir -p(arent) && -v(erbose) flagged basically wher -p cud probably B mAd Dfalt md && giv an mdP 2 !include ;
alias      md='  mkdir'; #  md   :          mkdir; O36LMDPV:mIt want2l8r mk fu md() nstd wi mAB autO Dfalt -p(arent) dir-crE8ion && -v(erbose) mIt B OK 2? ;
alias      rd='  rmdir'; #  rd   :          rmdir;
alias      DM='  dmesg';alias dmsg='DM'; #  dmesg <:> DM (this Used 2B just lOwrcAse 'dm' but was UperCased Bcuz nEdz sudo && 2mk room4 dmenu 2 tAk it Over)
alias      dm='  DmC  '; #  dm   : "DmNU"?  dmenu wrapper in Octology::a8.pm called DmC (since it was originally just to gNr8 the HEX from my Fb ColorCodes)
alias     dmn='  dmenu'; #  dmn  :          dmenu
alias     dmi='  dm -i'; #  dmi  :          dmenu case-insensitive
alias     dmb='  dm -b'; #  dmb  :          dmenu                  bottom;  # dmenu colr optnz 4 normal && selected, each FG && bg can B #RGB,#RRGGBB,or XnAmz
#lias     dmC='  dmi -nf #`r2 xf4` -nb #`r2 028` -sf #`r2 Fxy` -sb #`r2 0C4` -fn "MesloLGS NF Bold-32"'; #  dmC  : set custom colors && big font  # Meslo!work;
alias     dmC='  dmi xf4 028 Fxy 0C4'; # dmC : set custom colors && big font MesloLGS32(m) is now Dfalt; #  dmC  : hEre EquivalNt 2 above now?
alias     dmW=' dmC -w $(xdo id)    '; # dmw : dmenu window (curNtly active, does not seem 2 work yet why?);
alias     dmP=' dmC -p'; #  dmP  : take prompt string as nXt pRameter (wich may not work in DmC yet,sinc @1st it only acceptd -pPromptString wi nO spAcz);
#         dmc() {
# if       [[ "$#" -gt      0   ]]; then # print out some help text for -h as first parameter && then return
#   if     [[ "$1"  =~  ^--*h   ]]; then
# ec "dmc crE8d by PipStuart <Pip@CPAN.Org> to call dmenu with custom Octology::a8 and f8 pal8 color codes obtained from a8.pm DmC so try -h on that too.";
# ec " -h --help should display this Help text. Probably most parameter options given here will just be passed on through to : DmC since it handles more;";
#     return;
#   elif   [[ "$1"  !=    ""    ]]; then # 2du:handle paramz && call dmi with a8.pm converted colorz;
#   fi; fi; };             #      BlO -F<\w+> abbrEV8ionz shud Xpand 2 -font-name stringz in DmC th@ m@ch thOse comNtd aftr (only some of wich Cm2work yet,Y?);
alias     dmCB='dmC -FB' ; # -fn "Bitstream Vera Sans Mono Bold-32"';   # "Bitstream Vera Sans Mono               Bold"
alias     dmCc='dmC -Fc' ; # -fn "Cascadia Sans Mono-31"';
alias     dmCd='dmC -Fd' ; # -fn "Droid Sans Mono Bold-32"';            # "Droid          Sans Mono               Bold"
alias     dmCD='dmC -FD' ; # -fn "DejaVu Sans Mono Bold-32"';           # "DejaVu         Sans Mono               Bold"
alias     dmCF='dmC -FF' ; # -fn "Fantasque Sans Mono Bold-32"';        # "Fantasque      Sans Mono               Bold"
alias     dmCE='dmC -FE' ; # -fn "FreeMono Bold-32"';                   # "Free                Mono  *new_Dfault* Bold"
alias     dmCj='dmC -Fj' ; # -fn "JetBrains Mono Bold-32"';             # "JetBrains           Mono               Bold"
alias     dmCJ='dmC -FJ' ; # -fn "JetBrains Mono ExtraBold-32"';        # "JetBrains           Mono          ExtraBold"
alias     dmCl='dmC -Fl' ; # -fn "League Mono Extended ExtraBold-32"';  # "League              Mono Extended ExtraBold"
alias     dmCL='dmC -FL' ; # -fn "League Mono Wide ExtraBold-32"';      # "League              Mono Wide     ExtraBold"
alias     dmCI='dmC -FI' ; # -fn "Liberation Mono Bold-32"';            # "Liberation          Mono               Bold"
alias     dmCm='dmC -Fm' ; # -fn "MesloLGS NF Bold-32"';                # "MesloLGS   NF (Nerd Font) *was_Dfault* Bold"
alias     dmCM='dmC -FM' ; # -fn "Monoid Bold-32"';                     # "Monoid                                 Bold"
alias     dmCo='dmC -Fo' ; # -fn "Monoid Loose Bold-32"';               # "Monoid                   Loose         Bold"
alias     dmCt='dmC -Ft' ; # -fn "Monoid Tight Bold-32"';               # "Monoid                   Tight         Bold"
alias     dmCK='dmC -FK' ; # -fn "mononoki Bold-32"';                   # "mononoki                               Bold"
alias     dmCN='dmC -FN' ; # -fn "Nimbus Mono PS Bold-32"';             # "Nimbus              Mono PS            Bold"
alias     dmCO='dmC -FO' ; # -fn "Noto Sans Mono Bold-32"';             # "Noto           Sans Mono               Bold"
alias     dmCT='dmC -FT' ; # -fn "Tlwg Mono Bold-32"';                  # "Tlwg                Mono               Bold"
alias     dmCU='dmC -FU' ; # -fn "Ubuntu Mono Bold-32"';                # "Ubuntu              Mono               Bold"  # most look pretty similar so far;
alias      fm='fontm8rx';alias fontm8rx='fontmatrix'; # fm can filter Active&&Proportion:Monospaced to show several more than just these above;
alias      bf='birdfont';
alias     mnt='  mount'; #  mnt  :          mount
alias    umnt=' umount'; # umnt  :         umount
alias mshr='sudo mount -t vboxsf -o uid=$UID,gid=$(id -g) shr "/home/pip/.hst";rmSS';alias umshr='sudo umount shr;rmSS'; # 4sharngfIlzBtwEnOni&&Ubu&&gN2 VMz;
alias schu='sudo chown $USER:$USER *;rmSS'; # cho all unhidden filz && dirz in current directory to the normal user from any required super-user permissions;
alias     cho=' chown '; #  cho  :          chown
alias     chg=' chgrp '; #  chg  :          chgrp (a little confusing that I've aliased grp='grep --color=auto' so it could mean grep or group depending)
alias     chm=' chmod '; #  chm  :          chmod
alias     chr=' chroot'; #  chr  :          chroot
alias     chs=' chsh  '; #  chs  :          chsh  (follow with -s SHELL to autom8, or get interactive prompting without)
alias     chf=' chfn  '; #  chf  :          chfn  (changes user FullName, office room number, office phone number, && home phone number)
alias     cht=' chti  '; #  cht  :          chti  (changes terminal window title)
#lias      ct='   cht '; #                        (mAB consider `mv chti ct` && alias chti instead or add like noglob so Zsh stops Xpandng alias pRamz?)
           ct() { chti $@; }     # unalias  ct && redefining as simple function wrapper resolves title parameter alias expansion problem (but still will glob)
#          mc() already zsh function below
#lias      mc='  md;cd'; #  mc   :          md+cd (make sure to override MidnightCommander if found)
#          c8   already ~/bin/
#lias      c8='cut|cat'; #  c8   :        cut|cat (with columnar alignment, coloring, && command matching..)
alias      zc='   zcat';
alias       Z='   zc  ';
#lias      f8='   f80p'; #pal8   : should eventually be CLI && powerful interactive f0nt && pal8 selector && editor
alias      fp='     ls       ~/lib/Octology/f8/*   '; # fp was fontpal => fpal => f80p but none are presently functional
alias      f8f='    ls       ~/lib/Octology/f8/f0nt';alias lsf0nt='f8f'; # eventually these should switch to f8 cmdz
alias      f8p='    ls       ~/lib/Octology/f8/pal8';alias lspal8='f8p';alias duf='dusb ~/dvl/f8/ttf/nerd-fonts/patched-fonts/* |s8n|cma';
alias   fixfont=' etfp -s -f ~/lib/Octology/f8/f0nt/psf/rOMAN3.psf';  # these hopefully restore usable f0nts to full-screen console (or 8trm also eventually)
alias resetfont=' etfp -s -f ~/lib/Octology/f8/f0nt/psf/france9.psf'; # these maybe should be `setfont` instead of `etfp` for more reliable compatibility
alias      s8n='    s8 -n'; # "Prince of Darkness"  game eventually? or just simple Numeric Sorting alias until then
alias      s8r='    s8 -r';alias rvrs='shfl -r';alias lshf='$(ls|shfl)'; # tMporary plAc-holdr 4 `reverse` sinc sort rearranges all, just high to low; tryXpnd?
alias      s8='   sort'; #  s8   :           sort (maybe eventually a collection of my own custom sortings for orders beyond the default `sort` offerings)
#          d8   already ~/bin/               # apparently Zsh (like Bash) has inherent support for 2xx15 0..32767 $RANDOM on the range $((RANDOM % 8)) modulo;
#lias      d8='   date'; #  d8   :           date|time|pt
#          g8   already ~/bin/
#lias      g8='    git'; #  g8   :            git (was my much earlier attempt at wrapping to handle abbreV8ions && gener8 commits from .bak && vice-versa)
alias    g8c='     git clone    '; # another convenient quick common git command for when needing to clone a new repository probably needing lowercase URLs
alias    g8co='    git checkout ';alias gas='git add *';      alias g8f='g8 f';alias g8b='g8 br'; # short for git fetch && branch (just b does bisect first)
alias    g8st='    git status   '; # basic Octology-memorable combined rhyme 1-string altern8 way to call what should be effectively the same as: `g8 st`
alias    gaa='     git  add .* *'; # handy alias to Add All (Asterisk) changes, Commit by Message string below, then Push Origin Master (likely to GitHub)
alias    gcm='     git commit -m'; # tried to call each of these through g8 initially, but maybe -m flag wasn't passing on to git correctly so explicit now
alias    gac='     gaa; gcm     '; # should setup gcm to auto-commit basic gener8d d8-stamp message && maybe list biggest few file changes, if no mesg given
alias    gacm='    gac          '; # should maybe make as function which takes parameter or gener8d commit message then gpom with auto user Pip pRam or cnfg?
alias    gpom='    git push origin master';alias g8st8='g8st';alias g8s='g8 s';alias g8h='g8 h';alias g8l='g8 l';alias g8d='g8 d';alias g8p='g8 p';
         gap()  {  gac $1;gpom   } # above shortcuts are: status,           show,            help,            log,             diff,            pull
alias    dkr='  docker';alias dkrb='dkr build . -t oct';alias dkrun='dkr run';alias dkri='dkr images'; # Beppu-san did Docker, build ". -t oct", run "-it oct";
alias    dokr='   dkr ';alias dkrp='dkr ps'; #ias dkrn='dkrun --mount type=bind,source=/home/pip/.log,target=/home/pip/.log -it oct'; # 2du:prune imgz! ;
alias    dkrn="dkrun -e DISPLAY --mount type=bind,source=/home/pip/.log,target=/home/tst/.log -v /tmp/.X11-unix:/tmp/.X11-unix -it oct";alias dkra='dkrs -a';
alias       n=' ncal  ';alias dkre='dkr exec -it';alias dkrs='dkr system prune';dkrx(){dkre `dkrp|hl 2 1|c8 0-1` zsh} # && apNd fm`dkrp` "$id zsh"14hx-chrz;
alias       N='  calN '; #  N    :            calN (use `rsn` ReSize4calN 171x57 to show 19-Years, 2000-2018 solidly in slightly lRgr than Dflt 160x50 size)
alias    caln='  calN ';
alias      l8='  calN '; #  l8   :            cal|cron|at|batch
alias      sl='  ln -s'; #  sl   :             ln (maybe on this, since ln usually makes SymbolicLinks?)
alias      slf=' sl -f'; # force upd8 of already existing symbolic link which normally balks
alias       O='  o    ';
alias       o='  orpie';
alias       Q='  calQ '; #  cl   :            calQl8|bc|dc like my old calc && symlnk cln (maybe swapping so n reverses meaning to non-default append Newline?)
alias    calq='     q '; # all lowercase too
alias    calQ='     q '; # now q is just replacing old calQ
#lias       q='  cl   '; #     q was symlinkB4g8 - simple command-line calculator in Octology::b8 with BigFloat (orig:'perl -e "print eval join q( ),@ARGV"')
alias      cl='  cln  ';alias sct='syncat';alias spl='ec " syncat -l perl ...";sct -l perl';alias scd='spl --dev'; # syncat like batcat;
alias     cln='  calQ ';alias tsh='ts -h';alias thl='tshl';alias tpl='thl --scope source.pm'; # tree-sitter sub-commands:
alias    tsic='ts init-config   '; # Generate a default config file; `thl ~/bin/L`: ec 'No language '        .       'found for path "/home/pip/bin/L"';
alias    tsg=' ts generate      '; # Generate a parser             ; `tpl ~/bin/L`: ec 'No syntax highlighting config found for path "/home/pip/bin/L"';
alias    tsp=' ts parse         '; # Parse  files                  ;# not sure what's wrong with tree-sitter highlight for perl but @ least shl,spl,bpl work;
alias    tsq=' ts query         '; # Search files using a syntax tree query
alias    tstg='ts tags          '; # Generate a list of tags
alias    tsts='ts test          '; # Run a parser's tests
alias    tshl='ts highlight     '; # Highlight a file
alias    tsbw='ts build-wasm    '; # Compile a parser to WASM
alias    tspg='ts playground    '; # Start local playground for a parser in the browser
alias    tsdl='ts dump-languages'; # Print info about all known language parsers
alias  ts='tree-sitter'; # N7KMNVTS:~/dvl/t8/node/tree-sitr/ has faild atmptz 2 nstl CLI syntax-highlighting 4 all Tree-Sitter languages (in Emacs && NVim);
#lias     nv='nvim    '; # N53M3MIV:NeoVim is now an altern8ive to standard Vim;
alias       V='vim.tiny';
alias    viii='vim    '; #  viii : v8 v 8     vim (lowercased Roman Numerals for 8 for my vim-style editor command name)
#lias      v8='viii   '; #  v8  changing to Xport $Hv8f B4 calling vim on it, so that it can also be used by U8:upd8
alias       8='viii   '; # might try quoting 8 or just synhilite makes it seem wrong when it will work, eventually a c8-based clone that might also perform e
#lias       v='v8     '; # v8 and v might become an experimental varE8ion branch of my hopefully eventually standardized ~vim-compatible viii and 8 editor
            v() { v8   $@; }     # unalias   v && redefining as simple function wrapper resolves         param alias expansion problem (but still will glob)
alias     dif='vimdiff'; #  dif  :            vimdiff|diff|cmp|comm
alias      vv=' v v';alias  vl=' v l';alias  v2=' v 2';alias   vk=' v k '; # .vimrc .lrc dox/2du/2.du  know.ls
alias      vz=' v z';alias  vh=' v h';alias  vx=' v x';alias  vpm=' v pm'; # .zshrc .Hrc .Xrc dvl/\?\8/\?\8.pm
alias     nvv='nv v';alias nvl='nv l';alias nv2='nv 2';alias  nvk='nv k '; # sAm but NeoVim versionz;
alias     nvz='nv z';alias nvh='nv h';alias nvx='nv x';alias nvpm='nv pm';alias nvi='nv i'; # aded init.(vim|lua)
#   (upd|loc)8  already above near e (which should eventually wrap v8?)
#lias    loc8=' locate'; #  loc8 :             locate|find # f is already find above
# F5QMGkI3:while trying2`pmei Moose`a tSt sugSted PAR::Dist having an `up` so maybe unalias this in case && ck. u && up used2alias Pip:Utl:updt B4 U8:upd8;
#lias       u=' upd8  '; #  upd8 :           upd8 (U8 tool to cp dvl code into bin && lib, upd8 may eventually wrap g8 git && collabor8 2ease general sync)
            u() { upd8 $@; }     # unalias   u && redefining as simple function wrapper resolves         param alias expansion problem (but still will glob)
alias    updt='perl -MPip::Utl -e "updt @ARGV"'; # replace old tiny ~/bin/updt with alias in case newer upd8 fails
alias    uptm=' uptime'; #  uptm :           uptime
alias     uni='   uniq'; #  uni  :           uniq
#         dic   already ~/bin/
#lias     dic='   dict'; #  dic  :           dict     (reformatted for 160 or other columns, colored, with reviewable query history in ~/.log/dic.log file)
#lias       d='   dic ';
            d() { dic  $@; }     # unalias   d && redefining as simple function wrapper resolves         param alias expansion problem (but still will glob)
alias       D='   dfc '; #                            ("D" Used2alsOBshort4 pronunC8ion of "define" too, before realloc8ion to administr8ion DiskFreeColor)
alias       y='   yelp'; # J54MClip:Oni 2day had2 `sz;auu;ai dfc xclip irssi`;
alias       Y='   y   ';
alias      zp='    tar czvf'; #zp:            tgz|tar|zip|7z (eventually inspect parameters to detect which zip to use)
alias       z='     zp';
#          uz() already function below
#lias      uz='  unzip'; #  uz   :          unzip
alias      ev=' evince'; #  ev   :           evince (decent PDF document reader)
alias    cncl=' cancel'; #  cncl :         cancel
alias   comma=' cma   '; #  comma:            cma (like coma inserts by 4, these insert after 3)
#lias      hd='   head'; #  hd   :           head (hd is already HexDump, which maybe should be combined (&& hd is more crucial HardDisk LVM util too?)) 
alias      tl='   tail'; #  tl   :           tail
alias     tlf=' tl  -f'; #                   tail with --follow (&& can be =file or =descriptor, the latter being the default)
# O1ELINKS:from Angie (my Sister): HTTPS://Share.LibbyApp.Com/title/65667 LibraryAudioBook "Medit8ionForBeginners" by JackKornfield && ThichNhatHanh on d8:725
#   HTTPS://InSig.ht/xKeKPC1PmGb "Nothing Here But You" 18-minute,49-second dur8:In0 Guided-Medit8ion by Mooji && also HTTPS://InSig.ht/ea7CsraNmGb 4 the app?
alias    g3pa=' g3 $HOME/muz/mp3/PascalAuclair/PascalAuclair-TrueNorthInsight-AHeartThatReson8s-TruthOrThought-DharmaSeed.Org_talks_77854-dur8_-14V0-N5C.mp3';
                        alias eprd='epr ~/dox/med/RecoveryDharma-2.0-EBook-O1DLHARM.epub'; # RecoveryDharma.Org v2.0 `epr` instead of Tp;
                        alias tprd='Tp  ~/dox/med/RecoveryDharma-2.0-EBook-O1DLHARM.epub'; # RecoveryDharma.Org v2.0 (didn't work@1st wi termpub so epr abov);
alias      Tp='termpub';alias tplp='Tp  ~/dox/dvl/Perl/learning_perl_exercises.epub'; # could also read with Python3 `epr` or `epy` or gnome-books;
alias      tp='    top'; #  tp   :            top|htop
alias     htp='   htop'; # htp   :                (ht is already HyperText? in /usr/bin which appears to gener8 HTML from TeX input files, but H also is htop)
#          ss() already function below
#lias      ss='    ssh'; #  ss   :            ssh
alias      wd='    pwd'; #  wd   :            pwd # eventually rep this with new b8:wd in bin like width in wdht span for f(ib|ct)z (su|pr)mz sizing pRam linz
alias      pw=' passwd'; #  pw   :         passwd
alias      py=' python'; #  py   :         python
alias      py3='python3';
alias      pn=' ping  '; #  pn   :           ping
alias      pb=' pingb '; #  pb   :           pingb      (needed2`sz; echo net.ipv4.icmp_echo_ignore_broadcasts=0 >> /etc/sysctl.conf; sysctl -p`)
alias     ic='ifconfig'; #  ic   :       ifconfig
alias     ipc='ip   -c'; #  ip   :       ip  addr --color=always
alias     ipd='ipc  -d';alias     ipa='ipS   addr '; ipp(){ aors='addr';if [[ "$1" != "" ]]; then aors="$1";shift; fi; ip --color=never -d -s $aors | pet; };
alias     ipS='ipd  -s';alias     ips='ipS   stats'; # try2abov just stRt bAsic new ip pipe thru pet 2 perform -color filtering betr than Dflt ipc;
alias     ns=' netstat'; #         from: N7KMD51f:HTTPS://YouTu.be/ppmUsyafyoo "17 Linux Interview Questions && Answers" # N7K:0GE0 of MarkMcNally;
alias     nsn='ns   -natp '; # show open UDP && TCP ports a few ways
alias     sst='ss   -nutpl';
alias     lso='lsof -i -P '; # /etc/services shows ports;
alias     msg='   mesg'; #  msg  :           mesg|write
alias      ty='type   '; #  ty   :                type               # describe command-type like alias, built-in, or with path to bin, etc.;
alias      W=' whereis'; #  W    :                      whereis      # below replaced wh which alias with function nstd 2 avoid early pRam Xpansion
#lias      wh='which  '; #  wh   :     type|who|w|which|where|whence (like wi uptm prefix line ls of loggedin userz)  (tried whence -w for single word typez)
wh(){          which $@; } # maybe the original wh alias abov was expanding to an old Csh binary nstd of DsIrd Zsh biltin && thN alsO Xpandng pRam2or nahLswr2?
wr(){          where $@; } # might just be the same as `which` in most or all cases?
alias     whr='wr     '; #  wr   :                      where        # note that `what` remains free to be l8r alloc8d to some similar purpose as well
alias     lsh='  lshw '; #  lsh  :          lshw                     # useful when trying to get Ken setup with nVidia bin GeForce7 NV49 G71 driver, !nouveau
alias     lsm='  lsmod'; #  lsm  :          lsmod                    # HTTPS://Unix.StackExchange.Com/questions/85249/why-not-use-which-what-to-use-then DtAlz
alias     lsp='  lspci';alias lspn='lsp -nn';alias lspa='lspn|g Au'; # show both textual and numeric ID's (names && numbers) && grep Audio 4 pulse PCI DvIcez:
alias     lsc='  lscpu'; #  lsc  :          lscpu  # 2e:00.1 Audio device [0403]: …[AMD/ATI] Ellesmere  HDMI Audio [Radeon RX 580  4[78]0-5[789]0] [1002:aaf0]
alias     lsu='  lsusb'; #  lsu  :          lsusb  # 30:00.3 Audio device [0403]: …[AMD    ] Family 17h HD   Audio Controller (Models 00h-0fh)     [1022:1457]
alias     ren=' rename'; # might take just Perl quoted regex instead of $from $to before shell fileglob to alter;
alias     rens="ren 's/ /_/g' *"; # simply REName all Spaces to proper underscores within any non-hidden files && sub-directories in the current-working-dir;
alias     sho='cd ~/gfx/sho;shot -u'; # change to typical local Octology screenshot directory && take a shot of the focUsed window (no border) in 3 seconds
alias     br0='byzanz-record -a -c -d 122 -w 1920 -h 1080 Octl-ScrnCap-1080p-`d8`.webm &'; # Byz-Rec up-left monitor 0 zer0 for 2mins2secs to non-ogg .ogv 4m@;
alias     kaz='kazam';alias ssr='simplescreenrecorder'; # K6EMFMIC: HTTPS://ItsFOSS.Com/best-linux-screen-recorders with `obs` OpenBroadcasterSoftwareStudio;
alias     kam='kamoso --style        ddark >/dev/null 2>&1'; # KC8LDark:Avail:dsemilight,dsemidark,dlight,ddark,kvantum-dark,kvantum,cde  && try2sNd stderorz
alias     kad='kamoso --style kvantum-dark >/dev/null 2>&1'; #          Stylz:cleanlooks,gtk2,motif,plastique,qt5ct-style,Windows,Fusion  && stdoutpt2devnul;
alias    resp='   reso spec'; # joining like =~ /^respect/ shortcut to list resolution specific8ionz  # abovUsed2B S=shl,s=shl8 but S repurposed in a8 4 SKpz
alias    resg='   res  GA  ';alias res=' reso';alias re='res'; # basic a8.pm resolution HD limit8ion (not to get confused with resoLVE or resoURCE varE8ionz)
alias    resh='   re   HD  ';alias resa='re Andr';re16='re 16/9';alias re64='re 64/27';alias res9='re /9';alias rest='reso;res9;resp;re16;resg;resh;resa;re64';
alias    reph='re Pi|gi pi;re HD|gi hd'; # Xmpl alias IsOl8ng m@chz cAse-sNsitivly4 reso && grep,but not gi,so just Pixelz in tItl thN HighDef # RESoTesTz abov
alias    res8='reset;rest;w8 48;src8;rest'; # J12LFTst:wanting to test a bunch of resting && waiting instead of sleep within resetting the f8 pal8 col8 colr8n;
xir(){   Hxir='0.2';Hxia='16';Hxit='4'; # xiset Resolution Acceler8ion Threshold for mouse pointer;
  if       [[ "$#" -gt     0    ]]; then # print out some help text for -h as first parameter && then return
    if     [[ "$1"  =~  ^-*h    ]]; then
  en "xir crE8d by PipStuart <Pip@CPAN.Org> to wrap xinput for mouse 1:($Hxir)Resolution && xset for 2:($Hxia)Acceler8ion and 3:($Hxit)Threshold;";return 0;
    elif   [[ "$1"  !=    ""    ]]; then Hxir="$1";
      if   [[ "$2"  !=    ""    ]]; then Hxia="$2";
        if [[ "$3"  !=    ""    ]]; then Hxit="$3"; fi; fi; fi; fi;
  xi set-prop "Kensington Kensington Slimblade Trackball" "Coordinate Transformation Matrix" $Hxir 0 0 0 $Hxir 0 0 0 1; xset m $Hxia $Hxit; }
#  N7KMCxic:   xinput-calibrator switched before this d8 from dash to underscore below. Probably only was needed on Chun or an eventual Juri Fujitsu LifeBook;
alias   xical='xinput_calibrator';alias xic='xical';alias xbk='xbindkeys';alias xdt='xdotool';alias xd2='xdt'; # basic Chun touch-scrn&&X re-bind&&scrpt utlz
alias   xclic='xclip -se c'; # Dfltz: -i (in: read in2 X selection from STDIN or fIlez), -l 0 (loops of selection requests 2 w8 before exiting, 0 unlimited),
# -se [pscb] (selection used is primary [Dflt pAste from midl-click], secondary, clipboard [right-click context menuz, picked in abov alias], or buffer-cut?),
# -si (silent mode so run in background and output errors only); might instead wish to use -o to output selection for piping into another utility, -loops 1 so
#   whatever tmp d8a (lIk a pswd) is only held for a single l8r pAste EvNt, -o -t 'TARGETS' should list possible target atomz, -r (rmlastnl like Perl chomp),
# -f  (filter when accepting -i in to load selection by also printing back out to send elsewhere), -d ':0' (display [X] to connect to), -vers (version info),
# -n  (noutf8 so use old broken unicode handling for compatibility), && last 2 are instead of -s silent: -q (quiet info on foreground), -verb (verbose cmNtz);
alias   xcl1p='xclip -l  1'; # thEse also use Dflt -se p(rimary  middle-click-auto) with just 1 loop w8ing for a pAste before termin8ing && ...
alias   xcl1c='xclic -l  1'; #                 ... -se c(lipboard right-click-menu) with same 1 loop w8; # mAB othr sLectnz or special tRgetz cud B Useful 2?;
alias   vclip="v +'silent pu!+' +'$d' +'1' +'set nomodified' +'au BufWriteCmd vimclippy %y+ | set nomodified' vimclippy"; # this alias is hopefully the right
#   form of Rich Cheng's vimclippy at: HTTPS://NormalMo.de/posts/vimclippy which should allow just editing the clipboard directly (without needing any files);
alias d8xC='pa "\$d8=$HOd8->new();\$ds=qq(\$d8);\$ds=~s/....\$/J000/;\$df=\$d8->Dow().q( ).\$d8->monname().sprintf(q( %2d %4d),\$d8->DY());print qq(\`\$ds\` \x{2665}  \x{1F642} \n\`\$df\`\n\`1900 P / 2000 G\`);"|xclic -f'; # hOpfuly similR2old d8g pushng 3 baktikd lInz2BpAstd wi ♥️  <3 🙂 =) EmOji 4 7PM 1900 Chat;
alias d8xc='pa "\$d8=$HOd8->new();\$ds=qq(\$d8);                     \$df=\$d8->Dow().q( ).\$d8->monname().sprintf(q( %2d %4d),\$d8->DY());print qq(\`\$ds\` \x{2665}  \x{1F642} \n\`\$df\`\n\`).sprintf(q(%02d%02d P / %02d%02d G),\$d8->hm(),((\$d8->h()+1)%24),\$d8->m()).qq(\`);"|xclic -f'; # hEr closngch@curentime;
alias     xwi='xwininfo';alias xwid='xwi -id';alias xgaw='xdt getactivewindow';alias xiaw='xwid `xgaw`'; # from Unix.StackExchange.Com q 14159 find wndwdimz?
alias     xfs='xfontsel';alias ares='appres ';alias lsmo='fls|cut -f2 -d:|sort -u|gi mono';alias fls='fc-list'; # mIt l8r Bcome Able 2 s/cut/c8/ && s/sort/s8/;
alias    fcls='fls -b|g "fullname:"|cut -f2 -d:|sort -u';
alias      rx='ares  XTerm|gi UTF8Fonts|sort'; # HTTPS://AskUbuntu.Com/questions/161652/how-to-change-the-default-font-size-of-xterm 2get Xterm font Resources;
alias    xfds='xfd -fn "`xfs -print`"       ';alias lsmf='fls :scalable=true:spacing=mono: family'; # XFontDisplaySelectd && LiStMonospcd Fontz 4l8r terminalz;
alias      Xd='xxd';alias XD='Xd -c 40'; # CLI heXxdump && hexyl toolz here && 7 heX editorz BlO wi 2-char aliasez 2 be able 2 rely on whenever one is needed;
alias      Xr='hexer';alias   Xl='hexyl';alias Xc='hexcurse';alias Xn='  hexeditor'; # ncurses-HE;  # thEse 3 (!rl, just cn) have TUI && run in teXt terminalz;
alias      Xg='ghex ';alias   Xb='bless';alias Xo='okteta  ';alias Xw='wxHexEditor'; #"dl,cn,rgbow" # thEse 4 (+ hexer abov) have GUI && run graphical windowz;
alias      Xe="een '${R}heX${Y}editorz$W: ${o}CLI$c:${M}dl$z=${C}xx${M}d$G,${C}hexy${M}l$B; ${o}TUI$c:${M}cn$z=${C}hex${M}c${C}urse$G,$w(${M}n${c}c$K-$w)${C}hexeditor$B; ${o}GUI$c:${M}rgbow$z=${C}hexe${M}r$G,${M}g${C}hex$G,${M}b${C}less$G,${M}o${C}kteta$G,${M}w${C}xHexEditor$B;$z'"; # echo eSKpd colrd editorz 4 rFrNc;
alias    ctor='ctorrent -e 16 -z 64'; # abov: %eval $(xdotool getmouselocation --shell); %echo $X,$Y; will override Dflt $Y bright Yellow mapping with coordz
alias     sig='signal-desktop'; # I7GMFSIG:installed HTTPS://Signal.Org on my Android phone && Aku/Oni here as likely better than Slack or Discord 4the future;
alias    stdb='stdbuf -oL';alias sbam='stdb alsactl monitor'; # HTTPS://AskUbuntu.Com/questions/630564/cant-redirect-stdout-of-alsactl-monitor setz lIn-bufrd;
alias    st4w='speaker-test -l4 -c2 -twav'; # K1VL3PCM:loop 4 times on -Ddefault ~/.asoundrc device with 2-channel stereo test /usr/share/sounds/alsa/ .wavs;
alias      Es='ecasound';alias Eplay='Es -o alsa -i';alias Erec='Es -i alsa'; # wrap ECASound similarly to `aplay` && `arecord` ALSA equivalent utilities;
alias     pak='pulseaudio -k';alias pavl='pulseaudio -v --log-time';alias pavv='pavl -v'; # --kill running PA daemon && Verbose print with log-times 4Dbuging;
export  PULSE_LATENCY_MSEC='64'; # JC7LNice:HTTPS://AskUbuntu.Com/questions/392911/wine-sound-is-played-way-too-fast-and-crackles-horribly to avoid underruns;
#xport OpenGL_GL_PREFERENCE='GLVND'; # or 'LEGACY'; See `cmake --help-policy CMP0072` for FindOpenGL policy details which prefer GLVND when it's available;
alias     lvt='lv-tool'; # J28L8888:LibVisual 0.5 ~2014 > ~2006 0.4 && mAB w8,chti,thN fix ~/dvl/n8/viz/*plug* 4 bass kick snAr rEsponsz in hIgh contrastz;
alias     lvp='lv-tool    -i pulseaudio -s  888 -S 1200'; # setup LibViz 4 -vrbOs? -inpuls -seedrand;  ## BlO blursk dblfrEmM coredumpz aftr 2nd unlOd! ##;
export   lVSx=' -a lv_gltest -x lv_analyzer,lv_dump,madspin,nastyfft,nebulus,plazma,bumpscope,corona,gdkpixbuf,gforce,oinksie,blursk,goom2k4,jackdaw,lv_scope';
alias     cad='cadence &';alias qjc='qjackctl &';alias past='pasystray &';alias pav='pavucontrol &'; # old @Mptz2get JACK 2working&&PulseAudioSysTray indic8or;
alias     LVH='lVH -a lv_gltest -x lv_gltest,lcdcontrol,gdkpixbuf,nastyfft,bumpscope,goom2k4,blursk,madspin,gforce,lv_dump,nebulus,plazma,corona,flower';
alias     lVH='lvp -D  640x400 '; # above from madspin on can keep being cycled thru without leaking mem && core-dumping, but are Xcluded Bcuz barely visual;
alias     lvH='lvp -D 1280x800 ';alias lV="lvH $lVSx"; # upper-H 4 old HD720P, lower-h 4 dflt fullhd1080p, othrwIzkeptsAmsOfR; # only 6 lFt mAB nEd 4 2!segf?;
alias     lvh='lvp -D 1920x1080';alias lv="lvh $lVSx"; # oinksie... lv-tool: malloc.c:4023 coredumpd mAB bAsd on pRam ordr? #; # proly not inflwrgltestjess! ;
alias     LV='lvh -x lcdcontrol';alias sv='sonic-visualiser'; # K6BMGVis:just installed a new audio spectrum-analysis which is hopefully superior to libvis;
alias     Lv='lvh -a lv_gltest -x lv_analyzer,lv_dump,lv_scope,lcdcontrol,gdkpixbuf,gforce,nastyfft,nebulus,bumpscope,flower,goom2k4,blursk,oinksie,plazma';
#lias     Lv='lvh -a lv_gltest -x lv_gltest,lcdcontrol,gdkpixbuf,nastyfft,bumpscope,goom2k4,blursk'; # Xclude inactive plugins or mMlEkz causing core-dumpz;
alias     Lv8='lv-tool -i pulseaudio -f 60 -s 8 -S 8888 -D 1918x1040 -a jess -x lv_analyzer,lv_dump,lv_scope,lcdcontrol,gdkpixbuf,gforce,nastyfft,nebulus,bumpscope,flower,goom2k4,blursk,oinksie,plazma,madspin,jakdaw'; # K87M1Lv8:just loop jess,lv_gltest,corona,infinite each 4 pretty long but usually stealfocus still;
alias     p47='parsec47';alias a7='a7xpg'; # some of my favorite Kenta Cho Shmups ("Bullet-Hell") in /usr/games;  ## munmap_chunk(): invalid ptrstilcordumpdx;
alias      rr='rrootage';alias tt='torus-trooper';alias tf='tumiki-fighters'; # would be gr8 to study BulletML && explor own similRly themed varE8ions someday
alias      xb='xboard';alias xbsf='xb -fcp stockfish -fUCI'; # gr8 Chess program wi shortcut to top StockFish engine as FirstChessProgram (&& -scp 2ndChesProg)
alias    rune='pu ~/gmz/Rune;mv Jagex ~;S Kb;cat RS.pw;S ^;rs3-launcher/rs3-launcher;mv ~/Jagex .;po';alias RS='rune'; # K2HLIMMO:signdup4frE acct2plARSwiKyle;
alias    Rune=' rune ';alias RuneScape='rune'; # hopefully setting up the RuneScape.Com aliasez I'm most likely to remember && want to use l8r 2 call launcher;
alias    kpcl=' kpcli      --kdb=~/.kp/pswd.kdb --histfile=/dev/null --no-recycle'; # 2!stor any hist or entry changes in /Backup or "/Recycle Bin" old dfalts
alias    kp='  pu  ~/.kp;    kpc --kdb=pswd.kdb --histfile=/dev/null --no-recycle;chm 600 pswd.kdb;b pswd.kdb;po';  # alias2 kpcli-3.0 modwimor aliasz&&alInmNt
k8(){        KDBF='pswd';if [[ "$#" -gt 0 && "$1" != "" ]]; then KDBF=".$1"; fi; # if [[ $B64N =~ ^([a-zA-Z]w) ]]; then BNWH=${BNWH:s/  e    / e }; fi; # Xmpl
  if   ! [[ $KDBF =~ .kdb$  ]]; then    KDBF="${KDBF}.kdb"; #    KDBF=".${1:gs/\^./}"; orig atMpt abov was trying2 GloblStrip all anchord stRt dotz,but syntax?
    if ! [[ $KDBF =~  pswd  ]]; then    KDBF="${KDBF}."   ; fi; fi; # so now just any non-default param for d8abase name getz forced hidN prEpNded dot &&apNd2
  pu               ~/.kp; # it would just be so much simpler if shell variable regex syntax could optionally resemble Perl, but then less arcana to learn about
  if     [[       -e $KDBF  ]]; then # try to only load up whatever the default or priv8 specified file if it exists (&& should be read/writable to user alreD)
                             kpc --kdb=$KDBF    --histfile=/dev/null --no-recycle;chm 600 $KDBF   ; # might also want to chm 600 the file above before kpc too?
    if   [[ $KDBF =~  pswd  ]]; then b $KDBF; fi;     # ideally this should all behave quite similarly to just basic kp alias above && may replace it once same
  else   echo "k8 failed to loc8 ~/.kp/$KDBF;";   fi; # should print out passed in or manipul8d file when it didn't exist where it was expected to be openable
  po;} # simply popd back to the original working directory before the default home d8abase directory was pushd added above the standard shell directory stack
alias    Upc8='sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl;sudo chmod a+rx /usr/local/bin/youtube-dl;rmSS;hash -r';
alias    Upw8='sudo wget    https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl;sudo chmod a+rx /usr/local/bin/youtube-dl;rmSS;hash -r';
alias    Upi8='sudo      -H  pip install      --upgrade        youtube-dl   ;rmSS;hash -r'; # see pypi docUmNt8n4morin4m8n about popUlRPython`pip`package-tool
alias    UpU8='sudo                                            youtube-dl -U;rmSS;hash -r'; # Octology::U8::Upd8 && ~/bin/Upd8 are similR but for ~/bin versn;
alias    U8='  U2b8';alias U='U2b8   ';alias U2bk='Uk';alias u2bk='uk'; # shud l8r add 1-colm <98wId mOd&&some a8 autOcolrz 2furthr hIlIt mapngz
alias    U2BS='pu ~/dox/subs;rm BecomeABashScriptingPr0-FullCourse-U2b-4ygaA_y1wvQ-dur8-0Zx0-by_CodeIsEveryThing-O35-O3KMBash-*.subs;
         U23c  BecomeABashScriptingPr0-FullCourse-U2b-4ygaA_y1wvQ-dur8-0Zx0-by_CodeIsEveryThing-O35-O3KMBash.subs;po;';
alias    Ukey='en  "m c b : togl volMute Caption Bakgr colr [ U2b-hotKey ];  Dn Up : lowr 5%vol (arowkyz) rais 5%vol;
p f n : Prevplayls toglFulsc Nextplayls (Escap=2exitf);  Lt Rt : bkwd 5secs (arowkyz) 4wrd 5secs;
j k l : bkwd10secs toglpause 4wrd10secs (Space=2pause);   , .  : bkwd 1fram (ifpausd) 4wrd 1fram;
 0-9  : jump to N *10% playbak position (Home/End=0/9);   < >  : slow down< playbkspd >up> fastr;"';
alias    ukey='en  "m c b:volu Muted toglCaptn Bakgr cycl;(Home/End= 0/9 2)> 0-9 :jmp% \$n*10 plabakpos =r8io %abs; < > :slow down< plabakspd >upup fast;
j k l:bkwd 10sec toglpausd 10sec 4wrd<(Spacebar=pause2);Lt Rt:bkwd -5sec arrowkeys +5sec 4wrd; , . :bkwd -1frm whenpausd +1frm 4wrd;
p f n:Prev plals toglFulsc plals Next<(Escapkey=exitf2);Dn Up:dec% -5vol arrowkeys +5vol %inc;"';
alias    uky=' ec  "j k l:bkwd 10sec toglpausd 10sec 4wrd<(Spc=pausHmEnd0-9); 0-9 :jmp% \$n*10 plabakpos =r8io %abs;Lt Rt:bkwd -5sec +5sec 4wrd; < > :slow down< >upup fast;
p f n:Prev plals toglFulsc plals Next<(Escapekey=exitf2);m c b:volu Muted toglCaptn Bakgr cycl;Dn Up:dec% -5vol +5vol %inc; , . :bkwd -1frm +1frm 4wrd;"';
alias    Uk='  een "${R}m$G c$K b${W}:${B}togl${M}vol${R}Mute${G}Caption${K}Bakgr${C}colr${Y}[${G}U2b$C-${R}hot${r}Key${Y}]${W}${M}Dn$G Up${W}:${M}lowr${C}5${Y}%${w}vol${Y}(${O}arow${r}kyz${Y})${G}rais${C}5${Y}%${w}vol
${M}p$C f$B n${W}:${M}Prev${P}pla${c}ls${B}togl${C}Fulsc${B}Next${P}pla${c}ls${Y}(${O}Esc${W}=${g}2${R}exit${C}f${Y})${W}${Y}Lt$R Rt${W}:${B}bkwd${C}5${M}secs${Y}(${O}arow${r}kyz$Y)${R}4wrd${C}5${M}secs
${B}j$M k$R l${W}:${B}bkwd${G}10${M}sec${B}togl${M}pause${R}4wrd${G}10${M}sec${Y}(${M}Spc${W}=${g}2${M}pause${Y})${W}$B ,$M .$W :${B}bkwd${O}1${c}fram${Y}(if${M}pausd${Y})${R}4wrd${O}1${c}fram
$C 0$O-${R}9$W :${Y}jump${w}to$r N${C}*${G}10${Y}%${O}play${B}bak${P}position${Y}(${C}Hm${Y}/${R}End${W}=${C}0${Y}/${R}9${Y})${W}$M <$G >$W :${r}slow${M}down<${O}play${B}bk${c}spd${G}>up${K}fastr${W};"'; # squEzdout most spaces so whole keymap now fitz 80x4 term dimNsions,c turns Captions off but!togl on,no b bkgrnd
alias    Uk2=' ee  "${R}m$G c$K b${W}:${R}Mute${G}Caption${K}Bkgr${Y}[${G}U2b$C-${R}hot${r}Key${Y}]$W;${M}Dn$G Up${W}:${M}lowr${C}5${Y}%${w}vol${G}rais$W;${B}j$M k$R l${W}:${B}bkwd${G}10${M}secs${R}4wrd${Y}(${M}Spc${W}=${M}K${g}2${M}paus${Y})$W;$B ,$M .$W :${B}bkwd${O}1${c}frm${Y}(${M}pausd${Y})${R}4wrd$W;
${M}p$C f$B n${W}:${M}Prv${z}ls${C}Fulsc${B}Nxt${z}ls${Y}(${O}Esc${W}=${g}2${R}exit${C}f${Y})$W;${Y}Lt$R Rt${W}:${B}bkwd${C}5${M}secs${R}4wrd$W;$C 0$O-${R}9$W :${Y}jmp${R}N${C}*${G}10${Y}%${O}pla${P}pos${Y}(${C}Hm${Y}/${R}End${W}=${C}0${Y}/${R}9${Y})$W;$M <$G >$W :${r}slo${M}<down<${O}pla${c}spd${G}>up>$W;"';
# abov try2cram Uk in2 lt 160x2 (or 113x2 4now) wi just colrz 4 mAn Keyz
alias    uk2=' ee  "${R}m$G c$K b${W}:${B}togl${M}vol${R}Mute${G}Caption${K}Bakgr${C}colr${Y}[${G}U2b$C-${R}hot${r}Key${Y}]$W;${M}Dn$G Up${W}:${M}lowr${C}5${Y}%${w}vol${Y}(${O}arow${r}kyz${Y})${G}rais${C}5${Y}%${w}vol$W;${B}j$M k$R l${W}:${B}bkwd${G}10${M}sec${B}togl${M}pause${R}4wrd${G}10${M}sec${Y}(${M}Spc${W}=${g}2${M}pause${Y})$W;$B ,$M .$W :${B}bkwd${O}1${c}fram${Y}(if${M}pausd${Y})${R}4wrd${O}1${c}fram$W;
${M}p$C f$B n${W}:${M}Prev${P}pla${c}ls${B}togl${C}Fulsc${B}Next${P}pla${c}ls${Y}(${O}Esc${W}=${g}2${R}exit${C}f${Y})$W;${Y}Lt$R Rt${W}:${B}bkwd${C}5${M}secs${Y}(${O}arow${r}kyz$Y)${R}4wrd${C}5${M}secs$W;$C 0$O-${R}9$W :${Y}jump${w}to$r N${C}*${G}10${Y}%${O}play${B}bak${P}position${Y}(${C}Hm${Y}/${R}End${W}=${C}0${Y}/${R}9${Y})$W;$M <$G >$W :${r}slow${M}down<${O}play${B}bk${c}spd${G}>up>${K}fastr${W};"'; # try"2"cram Uk 80x4 in2 just 160x2 nstd (mAB 178+wId 2fit prmpt2wi -n)
alias    uk='een "${R}m$G c$K b$W:${M}volu$R Muted$B togl${G}Captn$K Bakgr$C cycl$W;$Y(${C}Home$Y/${R}End$W=$C 0$Y/${R}9$g 2$Y)$W>$C 0$O-${R}9$W :${O}jmp$Y%$G \$${r}n$C*${G}10$O pla${B}bak${P}pos$W =${R}r8io$Y %${P}abs$W;$M <$G >$W :${r}slow$M down<$O pla${B}bak${c}spd$G >upup$K fast$W;
${B}j$M k$R l$W:${B}bkwd$G 10${M}sec$B togl${M}pausd$G 10${M}sec$R 4wrd$W<$Y(${M}Spacebar$W=${M}pause${g}2$Y)$W;${Y}Lt$R Rt$W:${B}bkwd$g -${C}5${M}sec$O arrow${r}keys$G +${C}5${M}sec$R 4wrd$W;$B ,$M .$W :${B}bkwd$g -${O}1${c}frm$w when${M}pausd$G +${O}1${c}frm$R 4wrd$W;
${M}p$C f$B n$W:${M}Prev$O pla${c}ls$B togl${C}Fulsc$O pla${c}ls$B Next$W<$Y(${O}Escap${r}key$W=${R}exit${C}f${g}2$Y)$W;${M}Dn$G Up$W:${M}dec$Y%$g -${C}5${M}vol$O arrow${r}keys$G +${C}5${M}vol$Y %${G}inc$W;"'; # should consider making new 1-column Uk varE8ion which auto-resizes term @start && only needs rescaling2Bbig
alias    ukz='Uk;ec;uk'; # for clearest biggest, open Default 80x24 purple GnomTerm, resize to 97x5, scale up a couple times, then run just `Uk`
alias    U2b=' ec "U2b=youtube-dl 2save file2probably runthru U2b4 aftr orbetr2Use U2b8..."; youtube-dl'; # precede dl with some of my help text
alias    U2bm='U2b  -o "%(title)s-tItL-%(uploader)s-uldr-%(extractor)s-Xtrc-%(id)s-IdNt-%(epoch)s-epch-%(upload_date)s-uldt-%(autonumber)s-otnm.%(ext)s" --restrict-filenames';
#lias    U2b3='U2bm -x --audio-format=mp3  --audio-quality=0'; # just having --audio-format=mp3 was converting to just 32K quality =( hopefully 0 will improve
#lias    U2ba='U2bm -x --audio-format=best --audio-quality=0'; # gst123 works admirably on most formats, but `mpg123 -Cv` is much nicer interface-wise
#lias    mysrut='mysql -u root'; # used to also alias just my to the same, back when I was developing any MySQL code && had mysqld installed
#for ip in $( seq 1 254);             do ping -c 1 192.168.8.$ip>/dev/null; # NAbl pb rEspnsbyapNdng "net.ipv4.icmp_echo_ignore_broadcasts=0" 2/etc/sysctl.conf
  #[       $? -eq 0    ]              && echo     "192.168.8.$ip UP" || : ; # pb could probably `w8 4U` after each for a bit of welcome but forgot -c seconds?;
#done # instead of doing pingb below (or just pb), could run this for loop without needing to open systemz to DDoS thru configur8ion for broadcast response
export i19='192.168.9'; # hopefully this can mk LAN IPv4 addrz EZer?; # gvg added 2 psag BlO to autO lEave out any grep commandz themselves from rEsultz 1st;
alias psag='ps  aux | gvg |grP';alias pingb='ping  192.168.9.255 -b'; #   ...or lern2Use`nmap -sP 192.168.8.1/24`nstd? or`arp-scan -l --interface=(eth|wlan)0`
alias psgi='psag          -i  ';alias psagi='psgi                  '; # add another pair of aliases for Ignoring-case with the Grep on Process-Snapshots aux;
# 2du:maybe redefine psag as function instead of just alias since secondary expansion on parameter which is also an alias is annoying && potential disaster;
alias idmg='identify          ';alias idmv=' idmg     -verbose     '; # ImageMagick IDentify IMaGe utl && verbose probably needs | $PAGER
#lias ckya='w3m Mail.Yahoo.Com';alias gnuya='gnuyahoo -u=piptigger '; # !UsngYahoo!NEmor; Ubu brwsrz !inDflt rEpOz:Opera Vivaldi (mAB some othrz listed BlO);
#lias cktm='w3m HTTP://Time.Gov'; # need to enable JavaScript in w3m for redirect to /HTML5/ to work so maybe just use FireFox or Chrome
# 2du:ckot "QuteBrowser" non-plugin but minimal && fast Vim design, then Saka && WasaVi && Vimium for Chrom(e|ium) should offer small Vi emul8or in TextArea;
alias cu='  curl              ';alias cus='  cu       -s           ';alias cs='  cus'; # setup Silent Collectn ofURLz wich mItBpIpd2 STDIN Lswer or rEdIrctd;
alias lsbr='lsb_release       ';alias lsbc=' lsbr     -sc          ';alias lsba='lsbr -a '; # setupLinuxStandardsBase wiShrtCodnmz2quickckdistro; 2du:upd8LUT;
alias barr='barrier           ';alias barc=' barrierc              ';alias brc=' barc    '; #ias brs='bars'; # GitHub debauchee/barrier 4koffSymlesSynergy1.9;
alias bars='barriers          ';alias bar='  barr';alias br='bar   '; #ias bs='  bars    '; # bc taken others tapered almost consistently; N52MDbrs:don't use;
# mAB Ubu brwsrz:FireFox Chrom(e|ium) Epiphany Arora Dillo WebBrowser-App (cudinstl) QupZilla Konqueror NetSurf Links2 (!in acs) Yandex PaleMoon Midori Brave;
# nOt:crmm= chromium-browser requires snapd as of d8:K3DMIGHT so `apt-get remove`d both && will just rely on other web-browsers for now until no snapd DpNdNC;
# O3QMMnEW:HTTPS://GitHub.Com/Floorp-Projects/Floorp-private-components alsO!;  qb can Uz :config-write-py 2 thN v +'/colors.webpage.bg' ~/.config/qut*/co*.py
#   thN :w in vim, Alt-Tab bak2 qb && :config-source rElOdz upd8z nIcly sO thN mAB plan2 add DtAlz 2 new .Hrc sO .py canBgNr8d from a8.pm && map kEz2 :cfg-src;
# O3TM2FOX:ckot BetterFox LibreWolf edbrowse browsh chawan (wher ifUr term duz!rEspond2querying XTGETTCAP && $COLORTERM !set,Chawan falls back to ANSI colors);
alias crmm='chromium-browser  ';alias crom=' google-chrome';alias crm='crom';alias epip='epiphany';alias aror='arora';alias dilo='dillo';alias lnx2='links2';
alias brav='   brave-browser  ';alias brvb='brav';alias bb='brvb';alias tb='torb';alias ff='firefox'; # prEfer prv8 tb&&bb&&ff mor than old(WebKitbAsd?)abovz;
alias torb='pu ~/bin/.tst/.tor-brwsr-linux64-8.0_en-US-I98MKtor;./start-tor-browser.desktop;po';alias tor='tb'; # new d8d locl v8.0 instal of sepR8 brwzr methd
alias qtbr='qutebrowser';alias qb='qtbr';alias mido='midori';alias mb='mido';alias ffs='ff -screenshot'; # shudB Abl2giv ffs URL pRam 'HTTPS://BavL.Org' 4shot;
# abov ffs mIt nEd dbl-dash B4 ss optn && similR mA work 4 chromium-bAsd browsrz like: `vivaldi --headless --screenshot=/tmp/img.png   HTTPS://ReddIt.Com`mAB?;
# HTTPS://GitHub.Com/PwnWriter/haylxon is also anotherUtl4 chromium-bAsd browsrz 2 tAk headlS scrEnshotz (writN in Rust) fastr than GH.Com/SensePost/gowitness;
alias brwz='en "PipzBrwz: ff=FireFox, bb=Brave, qb=QtB, tb=Tor, crom=Chrome, crmm=Chromium, epip=Epiphany, aror=Arora, dilo=Dillo, lnx2=Links2;"'; # ec rEmIndr
alias 2lo=' perl -e "rename(\$_,lc) for @ARGV"'; # orig fIlnAm lOwrcAsng 1-lInr was ~/bin/tolo thN as 2lo but mAB zsh func can't stRt wi '2'? Alias workz tho!
alias j2k=' joy2key $TTY -terminal -rcfile ~/.joy2keyrc -axis Left Right Up Down -buttons a b c d e f g h i j &'; # IA6MAPJS:Reddit cmnt linkd map altrn8ive:
alias j2kx='joy2key      -X        -rcfile ~/.joy2keyrc                                                       &'; # HTTPS://GitHub.Com/jgeumlek/MoltenGamepad
alias glxg='glxgears -info -geometry 1920x1056+0+0'; # had to agi libssl-dev to configure opusfile, then below should be good to compress speech for Dad
alias opuse='echo    "opusenc --bitrate 32 --vbr --artist GerryStuart,PipStuart --genre Radio --album FixTheRadio-0 --title FixTheRadio-0.0 --date `date +%Y-%m-%d` in.wav out.opus";
             echo -n "opusenc --bitrate 32 --vbr --artist GerryStuart,PipStuart --genre Radio --album FixTheRadio-0 --title FixTheRadio-0.0 --date `date +%Y-%m-%d` in.wav out.opus"|xclip -si -se p -l 1';
#lias setfont='consolechars -f'; # fb lines on Gen:  # setfont is its own sepR8 command now, so don't alias over it
alias fb6=' fbset  640x480-60 '; #              30
alias fb8=' fbset  800x600-100'; #              37
alias fb10='fbset 1024x768-100'; #              48
alias fb12='fbset 1280x1024-75'; #              64
alias fb16='fbset 1600x1200-76'; #              75
alias moz='/usr/local/mozilla/mozilla -P Pip >/dev/null 2>&1 &'; # from way back when I used Pip Profile (likely before FireFox) with Mozilla spewing warningz
alias irc='irssi';
#lias    ircsdl='     irssi -c IRC.Perl.Org          -n Pip      '; #sdl         # no longer using any b(itch)?x, switched completely to Perl-based Irssi.Org
#lias    ircpl='      irssi -c IRC.Perl.Org          -n Pip      '; #perl  #yapc (which might be renamed after 2016 to just ThePerlConference #tpc?)
#lias    ircpl6='     irssi -c IRC.FreeNode.Org      -n PipStuart'; #perl6       # might need Chat.FreeNode.Net instead? Changing nick destroys config form@ing
#lias    ircrt='      irssi -c IRC.RT.Ru             -n Pip      ';alias irc='ircpl'; # probably wrapping in scrn like `sirc` below is preferred 2 any of these
#lias       sc='      irssi -c IRC.Prison.Net        -n PipStuart'; #soulcalibur # Uzd2Uz -n Pipsurugi  ## `sx $AgN` "Attaching from inside of screen?\n" ##;
#lias       srk='     irssi -c IRC.ServerCentral.Net -n PipStuart'; #srk         # can also do -w evl2003 to include pswd && might need -p to chng port BlO
#lias       srk='     irssi -c IRC.INet.Tele.Dk:6667 -n PipStuart'; #srk         # altern8 IRC servers to try to connect to if otherz are down or net-split
#  otherz:  EFNet.Demon.Co.UK  IRC.Nijenrode.Nl  HomeLien.No  QEast.Net          # for ScreenOctology*.pm editz BlO had2rEplAc e wi vim for multi-fIl OpNng
alias smok='en " `d8`" >> $d2/smok.ls'; # log a spaced current d8-stamp onto the end of my file listing all the times I'm about to go outside to smoke a cigar;
alias swip='screen -wipe   '; # learn how2 restore block cursor within multiplexed vim from the $TERM=screen.linux console (sEmz scrn mustXitB4 `curs` resetz)
alias scrn='screen -h 65535'; # might not need to temporarily change TERM for irc (or any of these if TERM becomes working screen.xterm-256color) below
alias s2du='pu ~/dox/2du;export TERM="xterm";scrn -S 2du -t 2du e 2;export TERM="xterm-256color";po';alias s2='s2du'; # Used2wrap2ovrId TERM=screen ,xterm betr
alias sirc='ct "irssi"  ;scrn -S irc -t irc irssi       ;  ';alias si='sirc';  # don't need -c IRC.Perl.Org or -n Pip since specified in ~/.irssi/config now
alias sbrs='ct "bars"   ;scrn -S brs -t brs       zsh   ;  '; # also screen in some barrier (Synrg+) server&&client 2detatch from standrd terminal debug output
alias sbrc='ct "barc"   ;scrn -S brc -t brc barrierc    ;  ';alias ssig='pu;scrn -S sig -t sig signal-desktop;po'; # might want to tst -x for cnfrm8 Xit !DtA?;
# since -x Screen refuses to attach from within itself, rejection can detect loop, but when cascading multiple screens,loopz R *NOT* auto-detected; take care!;
alias sfah='pu ~/.local/share/FoldingAtHome/;scrn -S fah -t fah zsh;po';alias sF='sfah'; # mIt want2just run`FAHClient`nstd of zsh 1st undr scrn,but not sure;
#/etc/fahclient/config.xml was aftr 9989 B4 runas # K3SMMJCo:wrapNrunyO!; # oye m8E arg I'm a pIr8 swabin the land-lubbr skalywag rum yOhO!
alias  FaH='FAHClient --child --lifeline 9989 \
               ~/.local/share/FoldingAtHome/config.xml --run-as fahclient --pid-file=/var/run/fahclient.pid --daemon';
#lias s2du='pu ~/dox/2du;scrn -S 2du -t 2du e     2     ;po';alias s2='s2du';  # reverted to exporting TERM=xterm around s2 2mk vim statusbar dRk AgN
alias s2.d='pu ~/dox/2du;scrn -S 2.d -t 2.d e     2.du  ;po';alias s2.='s2.d'; # mk new screen entry for editing 2.du as my current l8st ~/dox/2du/ list file
alias s28u='pu ~/dox/2du;scrn -S 8uf -t 8uf e     8     ;po';alias s28='s28u'; # leave legacy .txt below, from before proper switch to .utf since it holds afew
alias s28x='pu ~/dox/2du;scrn -S 8xt -t 8xt e     8     ;po';alias s2x='s28x'; # s8 is already aliased to sort; weird that e 8 didn't have e 2 problM
alias s8lc='pu ~/dox/2du;scrn -S 8lc -t 8lc e     8plc  ;po';alias s8l='s8lc'; # elabor8ing out2 tRget all sepR8 doQmNtz stil mAntAnd as 2du EvN2ally
alias satl='pu ~/dox/2du;scrn -S atl -t atl e     at.ls ;po';alias SA='satl';alias soa='pu ~/dvl/a8;scrn -S oa8 -t oa8 e a8.pm;po'; # OpenOctology *8.PlModulez
alias sb8a='pu ~/dox/2du;scrn -S b8a -t b8a e    b8a.ls ;po';alias sb='sb8a';alias sob='pu ~/dvl/b8;scrn -S ob8 -t ob8 e b8.pm;po'; # Screen_lib/Octology/\w.pm
alias sbxl='pu ~/dox/2du;scrn -S bxl -t bxl e   boox.ls ;po';alias sB='sbxl';alias scS='            scrn -S';alias sat=' sa      '; # kinda similR2old e fIl.ls
alias scm8='pu ~/dox/2du;scrn -S cm8 -t cm8 e   ckm8.utf;po';alias sc='scm8';alias soc='pu ~/dvl/c8;scrn -S oc8 -t oc8 e c8.pm;po'; #   ..2Elabor8Uni4m abrEV8z
alias skno='pu ~/dox/2du;scrn -S kno -t kno e   know.ls ;po';alias sk='skno';alias sod='pu ~/dvl/d8/lib/Octology;scS od8 -t od8 vim d8.pm d8/[df]??[8z].pm;po';
alias smul='pu ~/dox/2du;scrn -S mul -t mul e    muz.ls ;po';alias Sm='smul';alias som='pu ~/dvl/m8/xml         ;scS om8 -t om8 vim [MT][ei][rd]*[ey]/*.pm;po';
alias smvl='pu ~/dox/2du;scrn -S mvl -t mvl e    mvz.ls ;po';alias SM='smvl';alias sop='pu ~/dvl/p8;scS op8 -t op8 vim [tmnp]??[hx8s]/[tmnp]??[hx8s].pm   ;po';
alias sput='pu ~/dox/2du;scrn -S put -t put e   putr.ls ;po';alias sP='sput';alias sot='pu ~/dvl/t8/Octl/Octology;scS ot8 -t ot8 vim *.md;po;en oupd,gac,gpom';
alias scvi='pu ~/dox/2du;scrn -S cvi -t cvi e   scvi.ls ;po';alias sC='scvi';  # switching main fighting game emphasis from StreetFighterV to SoulCaliburVI;
alias ssfv='pu ~/dox/2du;scrn -S sfv -t sfv e   sfv.utf8;po';alias sf='ssfv';alias sof='pu ~/dvl/f8;scrn -S of8 -t of8 e f8.pm;po'; # mABl8r vary4asOC8d binz2
alias stab='pu ~/dox/2du;scrn -S tab -t tab e   tabz.ls ;po';alias sT='stab';alias sog='pu ~/dvl/g8;scrn -S og8 -t og8 e g8   ;po'; # not A sepR8 PlModule yet
alias stip='pu ~/dox/2du;scrn -S tip -t tip e   tipz.ls ;po';alias sI='stip';alias soU='pu ~/dvl/U8;scrn -S ou8 -t ou8 e U8.pm;po';alias sou='soU'; # bOthKsez
alias sud8='pu ~/dox/2du;scrn -S ud8 -t ud8 e    u.8.   ;po';alias sU='sud8';  # mAB 2du hLpr wi rEorg && chng prspctv upd8d wi paired 8trm prep code 2 preT;
alias sud2='pu ~/dox/2du;scrn -S ud2 -t ud2 e    ud2.ls ;po'; #ias sU='sud2';  # mAB 2du hLpr wi rEorg && chng prspctv on donez Ovrcomng prIOriTz?;
alias sdvl='pu ~/dvl    ;scrn -S dvl -t dvl             ;po';alias sd='sdvl';  # mAB some new sD can lOd Xtra Dvl lIk Utl Tk Time Math anythng else important
alias smuz='pu ~/muz    ;scrn -S muz -t muz             ;po';alias sm='smuz';alias SO=' ob ';alias mob='ob';alias Obs='ob';alias OBS='ob';alias sobs='   ob';
alias smvz='pu ~/mvz    ;scrn -S mvz -t mvz             ;po';alias sM='smvz';alias Ob=' ob ';alias ob=' pu ~/muz/U2b;scrn -S mob -t mob g3 **/*Obs*     ;po';
alias srut='pu  /       ;scrn -S rut -t rut sudo    bash;po';alias sr='srut';alias Ob8='lob';alias lob='pu          ;l              m[uv]z/**/*Obs*ate_*;po';
alias sadm='pu  /etc    ;scrn -S adm -t adm sudo -E  zsh;po';alias sA='sadm'; #abovOb8 orig just listed: (Annihil|Deso|Domin|InitE|Obliter)8 B4XtNdng2alldirz
# O1TLISTN:I changed my mind about using all these super-valuable names for a bunch of would-be PAGER programs && instead want them for gNral "sIz" c@egorEz;
#lias some='more'; # O1TLESMO:rEnAmd alias so abov 2 SO 4 scrn 2 Obsidia so th@ so can (in ordr 2 prEpAr 4 future Simp|c8|k8 wi fU && few pAgrz) B Uzd lIk so:
#lias so='  some';alias ma='  many';alias many='more';alias fU='   few';alias  few='some'; # lS is alreD less && mo set after exit && B4 mkdir 2 most alsO
#lias sO='  some';alias mA='  masv';alias masv='most';alias hU='  huge';alias huge='masv';alias tO='  tons';alias tons='masv';
#lias lO='  lots';alias lots='many';alias mO='  most'; # mAB mo shud gO 2 more && mO 2 most? mo duz !gO 2 PAGER && HPgr yet! ;
#lias sx='    scrn -x  ';   # would also B good 2 upd8 abov openingz of scrnz 2ck4 `scrn -ls $mtch` 4 already crE8d wich shud just B -x reattached 2 nstdofnew
      sx() {  scrn -x $@; } # unalias sx && redefining as simple function wrapper resolves parameter alias expansion problem (but still will glob), like ct;
scx() { if [[ "$#" -gt     0    ]]; then # print out some help text for -h (or l8r add --help) as first parameter && then return
    if     [[ "$1"  =~  ^-*h    ]]; then en 'sx crE8d by PipStuart <Pip@CPAN.Org> to wrap GNU screen -x multiplexing terminals;';return 0;
    elif   [[ "$1"  ==    2du   ]]; then s2du;export HsxF="$1";export HxjF='1';
    elif   [[ "$1"  ==    8uf   ]]; then s28u;export HsxF="$1";export HxjF='1';
    elif   [[ "$1"  ==    8xt   ]]; then s28x;export HsxF="$1";export HxjF='1';
    elif   [[ "$1"  ==    8lc   ]]; then s8lc;export HsxF="$1";export HxjF='1';
#   elif   [[ "$1"  ==    atl   ]]; then satl;
#   elif   [[ "$1"  ==    b8a   ]]; then sb8a;
#   elif   [[ "$1"  ==    bxl   ]]; then sbxl;
#   elif   [[ "$1"  ==    cm8   ]]; then scm8;
#   elif   [[ "$1"  ==    kno   ]]; then skno;
#   elif   [[ "$1"  ==    mul   ]]; then smul;
#   elif   [[ "$1"  ==    mvl   ]]; then smvl;
#   elif   [[ "$1"  ==    put   ]]; then sput;
#   elif   [[ "$1"  ==    cvi   ]]; then scvi;
#   elif   [[ "$1"  ==    sfv   ]]; then ssfv;
#   elif   [[ "$1"  ==    tab   ]]; then stab;
#   elif   [[ "$1"  ==    tip   ]]; then stip;
#   elif   [[ "$1"  =~ /^(2du|8uf|8xt|8lc|atl|b8a|bxl|cm8|kno|mul|mvl|put|cvi|sfv|tab|tip|ud8|dvl|muz|mvz|rut|adm|o[abcdfgmptu]8)$/ ]]; then ec "ARGV[0]=$1;";
    else                          eval("s$1");export HsxF="$1";export HxjF='1'    ; fi;
    if     [[ "$HxjF" ==  ""    ]]; then scrn  -x   $@    ;echo "Scrn-x here:$@   ;"; fi
  elif     [[ "$HsxF" !=  ""    ]]; then scrn  -x  "$HsxF";echo "Scrn-x HsxF:$HsxF;"; fi; }
      # if    scrn -ls has no $1 in Screen Sessions List, then dispatch to the correct screen session crE8or above, so more -x multipleXed can connect l8r;
# O1TLK00L: sO BlO indic8z . z w u r p k e e with  p = 0.8  sO du dur8ion:{13p} 4 almOst 64-secondz 2 autO-cap2r viDOz wi a countdown && autO-chop in2 8z;
alias b6d=' pa   "@prcz=(0.98, 0.96, 0.92, 0.88, 0.84, 0.8 , 0.72, 0.64, 0.63);for(@prcz){\$b6=int(64*\$_);o9(qq(\$_ : \$b6 b64 ) . b64(\$b6) . q(;))}"';
#lias sls=' scrn -ls'; # stuD screenie 2mkOwn version. wrapd `scrn -ls` BlObutl8r tAkthOs b8 && d8 rE4m@z as valid pRamz2reattach2. rEplAc scrn wi autO sx;
alias SLS=' pabd "\$u=0;\$v=q(screen -ls);\$v.=qq( @ARGV) if(@ARGV > 0);\$S=\`\$v\`;while(\$S=~ /\t((\d+)\.(\S+)\s+\((\d+)\/(\d+)\/(\d+)\s+(\d+:\d+:\d+)\s+
  ([AP])M\)\t\(([AD])[te]tached\)\n)/x){\$L=\$1;\$I=q();\$I.=q( ) if(\$2 < (64**2));\$I.=b8c(b64(\$2));\$H=\$3;\$N=\$4;\$D=\$5;\$E=\$6;\$T=\$7;\$n=\$8;\$t=
  \$9;\$x=S(q(Rr));\$d=2;\$t=\$x.\$t if(\$t=~ /D/);\$h=int(\$u++ / \$d)+1;if(!(\$u % \$d)){\$e=abs(\$d- 1)*abs(\$h- 0);\$S=~
  s/^(.*([^\\n]*\\n){\$e}[^\\n]*)\\n/\$1/;\$S.=qq(Logic4DivideNotBy2StillBuggy:e=\$e;) if(0);}
  if(\$n=~ /P/ && \$T=~ /^(\d+):/){\$h=\$1+12;\$h%=24;\$T=~ s/^(\d+):/\$h:/;} \$A= S(     q(Ab));\$x=q(XtracmNt:Repurposd RedOnRed detached in2filr text;);
  \$d=$HOd8->new(q(full)=>\$Mon[\$N-1].q( ).\$D.q( ).\$T.q( ).\$E);\$e=\$d->colr(q(a) );\$S=~ s/\Q\$L\E/\$I\$K:\$A\$H\$z\t\$e \$G\$t\$z\n/igixi;};
\$S  =~ s/(There)( are| is a)( screens?)( on)(:)/\$B\$1\$p\$2\$G\$3\$o\$4\$W\$5/gig;\$x=q(XtracmNt:sinc -ls tAk m@chpRam,1st passin ARGV B4wrap ZshLfunc;);
if(\$S=~ /(\d+)( Sockets?)( in )(.+)\..*/){\$s=b8c(b64(\$1));\$X=\$2;\$i=\$3;\$F=c8fn(\$4);\$x=q(XtracmNt:CmzlIk6.5solidsourclInz puttz mE undrpR4ashole;);
  \$S=~ s/(\d+)( Sockets?)( in )(.+)\..*/\$s\$C\$X\$p\$i\$Y\$F\$W;\$z/;} \$S=~ s/\\t/  /g; #\$S=~ s/\\n//g;
  chomp \$S;print \$S;"'; # 2du:migr8 SLS 2 proly U8.pm 4nEded [abd]8,    ## Xtra nOte on chomp-lIkBhAvior in shL(bash @lEst): str="${str%\\n}"; #rEmvzfromNd;
# proly chop-off "There * screen* on:" 1st unimportant line && join last 2 lines so counted socketz with path follows list's last detaild entry mor compactly,
# prEpNd DtAlz list Ntryz wi b64 ndxz wich can Bcom altrn8 wA 2 pik session 2 scrn -x rEconect 2,add scls BlO2 U8.pm also as sls ^-*h(elp)? duing bOth wi -*v,
# Xplor posibl or bSt wAz 2 autO-rEstor pal8z aftr Dtachng or Xiting from scrn sessionz (proly by trigering XeQt of just orig pal8 fIl or re-sourcing .zshrc);
alias sls='scls;SLS';alias lsl='scls;SLS';alias SL='SCLS;SLS'; # rEwrapd regUlR ScrnLiStDfltn@uralabrEV8nwitop21doQmNt8nmap prntBlOB4abov
alias SCLS='en "IA8ME8LS:LiSt ofL8St SCrnShortCut aLiaSeS: (scls lssc lscr lscrn lscreen):
2du: 2du.ls s2=s2du; put:putr.ls  sP=sput; (aLSoL8r aLiaSd:LS SL lsl sls):
8uf:8.utf  s28=s28x; sfv:sfv.utf8 sf=ssfv; # 2du:l8r sx \`scrn -x\` shudBcm
8lc:8plc*  s8l=s8lc; tab:tabz.ls  sT=stab; #   funcn from alias 2 storENV
atl:  at.ls sa=satl; tip:tipz.ls  sI=stip; #   of l8st titl pRam 2 Dfault;
b8a: b8a.ls sb=sb8a; irc:pl irssi si=sirc; ## P.S.this old varE8n deprc8d;
bxl:boox.ls sB=sbxl; rut:sudobash sr=srut; // pLuS my ob=obSidia pLaLiStS:
cm8:ckm8*tf sc=scm8; adm:sudo zsh sA=sadm; //\`sm;3 U*/Ob*ob*\`pLafvr8Cobra;
kno:know.ls sk=skno; dvl:cd ~/dvl sd=sdvl; // oblig8d Obscure && Obliter8,
mul: muz.ls Sm=smul; muz:cd ~/muz sm=smuz; // obsequious obtuse obviously,
mvl: mvz.ls SM=smvl; mvz:cd ~/mvz sM=smvz; // obov8 obrog8 obdur8 obfirm8,
// obfusc8 obimbric8 objectiv8 obsecr8 obcord8 obequit8 oblong observ8ion,
// obl8obluct8 obnoxious obnubil8 obscene obstetric8;"'; # 2du:mAB mv sa 2 sA && mk sa lIk ea 2 scrn OpN .zshrc && mk 1 4 .vimrc 2 && upd8 hLp tXtz,upd8 cmNtz;
alias lssc='scls';alias lscr='scls';alias lscrn='scls';alias lscreen='scls'; # 2du:contMpl8 bSt wA 2 Unify 234-char scrn session cmdz && cOdz&&crE8 or sx bak2;
alias scls='pabd "\$d=$HOd8->new(q(IAGMLsls));\$S=              ## everything is looking pretty tight && nicely color-highlighted for distinctions now
q[LiSt ofL8St SCrnShortCut aLiaSeS: (scls lssc lscr lscrn lscreen):    // also l8r 2du:Dtecting width alreD done; ## nowBcAm obvious solid 7blok;
2du: 2du.ls s2=s2du; put:putr.ls  sP=sput; (aLSoL8r aLiaSd:LS SL lsl sls):    bxl:boox.ls sB=sbxl; rut:sudobash sr=srut; // pLuS my ob=obSidia pLaLiStS:
8uf:8.utf  s28=s28x; cvi:scvi.ls  sC=scvi; # 2du:l8r sx \`scrn -x\` shudBcom    cm8:ckm8*tf sc=scm8; adm:sudo zsh sA=sadm; //\`sm;3 U*/Ob*ob*\`pLafvr8Cobra;
8lc:8plc*  s8l=s8lc; tab:tabz.ls  sT=stab; #   funcn from alias 2 stor ENV    kno:know.ls sk=skno; dvl:cd ~/dvl sd=sdvl; // oblig8d Obscure && Obliter8,
atl:  at.ls sa=satl; tip:tipz.ls  sI=stip; #   of l8st titl pRam 2 Dfault,    mul: muz.ls Sm=smul; muz:cd ~/muz sm=smuz; // obsequious obtuse obviously,
b8a: b8a.ls sb=sb8a; irc:pl irssi si=sirc; #  upd8 this list colr 4 cstmz;    mvl: mvz.ls SM=smvl; mvz:cd ~/mvz sM=smvz; // obov8 obrog8 obdur8 obfirm8,
// obfusc8 obimbric8 objectiv8 obsecr8 obcord8 obequit8 oblong observ8ion,    // obl8obluct8 obnoxious obnubil8 obscene obstetric8;];               \$e=S(Rc);
\$S=~ s/(; )/\$M\$1/g;  \$S=~ s/(\\@)/\$B\$1\$Y/g;\$S=~ s/(&&*) /\$e\$1\$z\$Y /g;\$S=~ s/(\`)/\$R\$1\$G/g;\$S=~ s/(\\w{1,4}\\.)(txt)/\$W\$1\$W\$2/g;\$e=S(Gr);
\$S=~ s/(;)(\\n)/\$e\$1\$z\$2/;\$e=S(Yb);\$S=~ s/(;)(    )/\$e\$1\$z\$2/;        \$e=S(Cb);\$S=~ s/(;)(\\n)/\$e\$1\$z\$2/; # custm cmNt termn8r semicolonz
\$S=~ s/(\\w{4}\\*)(xt)/\$W\$1\$W\$2/;\$S=~ s/(pLa\\w+)/\$Y\$1\$R/g;\$e=S(Or);\$S=~ s/(aLSoL8r aLiaSd)(:)/\$g\$1\$B\$2\$R/;\$S=~ s/(;)( ##)/\$e\$1\$z\$2/;
\$S=~ s/ (2du)(:)/ \$B\$1\$m\$2\$Y/g; \$e=S(Cb);  \$S=~ s/(##+) /\$e\$1\$z\$c /g;\$e=S(Rb);\$S=~ s/(;)\$/\$e\$1\$z/;\$e=S(Wb); # && final Nding semicolon
\$S=~ s/(,)/\$B\$1\$G/g;\$S=~ s/(\\*)/\$w\$1\$G/g;\$S=~ s/ (#) / \$e\$1\$z\$C /g;\$e=S(ob);\$S=~ s/(\\w{1,4}\\.)(ls )/\$C\$1\$C\$2/g;   ## nOt:manynotyetincl;
\$S=~ s/(\\s)(\\w{3})(:)/\$1\$e\$2\$z\$R\$3\$Y/g; \$S=~ s/(8plc)/\$G\$1/;        \$e=S(Yb);\$S=~ s/(\\()/\$p\$1\$R/g;\$S=~ s/(\\/)(Ob)/\$Y\$1\$G\$2/;
\$S=~ s/(\\s)(\\w+)(=)(\\w{4})/\$1\$e\$2\$z\$C\$3\$z\$4/g;                       \$e=S(yK);\$S=~ s/(\\))(:)/\$p\$1\$G\$2/g;\$S=~ s/(pl )/\$B\$1\$G/;
\$S=~ s/(cd )(~)(\\/)(\\w+)/\$c\$1\$B\$2\$Y\$3\$B\$4\$G/g;\$S=~ s/(\\/{2})/\$e\$1\$z\$Y/g ;\$S=~ s/(sudo)/\$r\$1\$G/g; \$S=~ s/(aLiaSeS)(:)/\$1\$o\$2/;
\$S=~ s/(l8r sx )/\$C\$1/;\$S=~ s/( shudBcom)/\$C\$1/;if(\$ENV{COLUMNS} < 160){\$S=~ s/ 7blok/14blok/;\$S=~ s/(\\s{4,})/\\n/g;@S= split(/\\n/,\$S);
  \$S=\$S[0].qq(\\n).\$S[2].qq(\\n).\$S[4].qq(\\n).\$S[6].qq(\\n).\$S[8].qq(\\n).\$S[10].qq(\\n).\$S[3].qq(\\n).\$S[5].qq(\\n).\$S[7].qq(\\n).\$S[9].qq(\\n).
      \$S[11].qq(\\n).\$S[ 1].qq(\\n).\$S[12].qq(\\n).\$S[13];} \$S=~ s/(-)/\$Y\$1\$G/g;\$S=~ s/(\\.)/\$M\$1\$G/g;print \$d->colr(q(a)),\$Y,q(:),\$C,\$S;"';
# 2du:upgrAd sls to buffer a quick DtachmNt LS rECv 2 C if last attached aftr mAB pull from wndO tItl aftr:colon 2 try wut 2 -x confirm if in rEcNt stil? ;
#There are screens on: #        17836.b8a       (10/03/2018 04:09:10 AM)        (Detached)  # /defhijlnqstuvx/i + AZ are sOlOz avAl 4 golf abov (aftr a8 sOlO color Xportz);
# cangiv m@chpRam now; #         5604.irc       (10/02/2018 07:48:46 PM)        (Attached)\n#2 Sockets in /run/screen/S-pip.  # SCreenLiStcmnd=S,ScreenLINe=L,PRocessIDnt=I,
#lias g3='   gst123 '; # replaced by Xpct XperimNt  # sux2havnOsyntxhIlIt  # ScreenTiTL(PID.TTY.Host)=H,moNth=N,Day=D,yEar=E,Time=T,afterNoon=n,deTached=t,
alias m3='   mpg123 '; # replace  wi Xpct l8r too   # butsumvrynIcalInmNt  # Hour=h,d8OBject=d,d8colrEskaped=e,Socketcount=s,soX=X,In=i,screenpathFilenm=F,
#lias m1='   mpg321 '; # replace  wi Xpct l8r too   # guessngaboutARGVthO  # eXtra_detached_color_with_red_background=x (mOmNtary modific8ionB4cmNt filrz);
#lias m0='   mpr0   '; # replace  wi Xpct l8r too;  already replaced by function below for now!   # OMG! Such consistNtly blockedout p@rnz of alInmNt abov;
alias dvdb=' dvdbackup -M -p';alias dvdbak='dvdb';  # default DVD backups -Mirroring full disc into current working directory && upd8ing d8a copy -progress
# H7IM3Qvo:mplyr -vo help; MPlayer 1.3.0 (Debian), built with gcc-6.3.0 (C) 2000-2016 MPlayer Team; Available video output drivers:  # pretty old optnz now
# vdpau      X11 VDPAU                                           fbdev    Framebuffer Device                        xvmc     XVideo Motion Compensation
# xv         X11/Xv                                              fbdev2   Framebuffer Device                        mpegpes  MPEG-PES to DVB card
# X11        X11 ( XImage/Shm )                                  aa       AAlib                                     yuv4mpeg yuv4mpeg output for mjpegtools
# xover      General X11 drvr4overlay capable vidout drvrz       caca     libcaca                                   png      PNG  file
# sdl        SDL YUV/RGB/BGR renderer (SDL v1.1.7+ only!)        v4l2     V4L2 MPEG Video Decoder Output            jpeg     JPEG file
# gl_nosw         OpenGL no software rendering                   directfb Direct Framebuffer Device                 gif89a   animated GIF output
# gl              OpenGL                                         dfbmga   DirectFB/Matrox G200/G400/G450/G550       tga      Targa        output
# gl_tiled   X11 (OpenGL) - multiple textures version            xvidix   X11    (VIDIX)                            pnm      PPM/PGM/PGMYUV file
# matrixview     (OpenGL) MatrixView                             cvidix   console VIDIX                             md5sum   md5sum of each frame
# dga        DGA (Direct Graphic Access V2.0)                    null     Null video output   # drvrz listd in likely most useful ordr(&&bak2 xv fixd stutr);
#    -fixed-vo only with xv, x11, xvidix, gl, gl_tiled, && svga (ignoring irrelevant Matrox); # swapping mp && mplyr alias dFinitionz due2frEquNC of use&&mM;
# K1DLDSDL:upd8d mp to use -ao sdl or openal since they don't seem to stutter, but alsa under-runs && stops right away && pulse skips quite annoyingly 4 now;
# O3FMDRIV:not sure why mplayer -ao alsa && oss were freezing after one buffer but could arrow skip then play another buffer but realized that pavucontrol
#   gave interface to see mplayer applic8ion as muted output for pulseaudio so now default sdl audio seems to work fine again so mAB mk betr pamix 4 whNAgN?;
alias mplyr='mplayer';alias mplr='mplyr';alias mplx='mpx -loop 0'; # EBIL4AcZ:upgrAded all putrs2 mplayer2 sO nEdz --no-keepaspect 2sKl 2full wndw dimNsionz;
alias mpp='  mplr -vo xv    -fixed-vo -ao pulse -cache 16384 -cache-min 64'; # shudtrydif -vo (xv was Dfalt) 4per4manc;`mplr -ao help`4list;
alias mpa='  mplr -vo xv    -fixed-vo -ao alsa  -cache 16384 -cache-min 64';alias ov='cd ~/mvz;mpx  $(ls **/*[OV][ob][sn]*|shfl)'; #Obs+Vnk;
alias mp='   mplr -vo xv    -fixed-vo -ao sdl   -cache 16384 -cache-min 64';alias vo='cd ~/mvz;mplx $(ls **/*[VO][ob][sn]*|shfl)'; #Vnl+Obs;
      mpls () { if [[ $# -gt 0 ]]; then mp $(ls $@|shfl); else mp $(ls|shfl); fi; } # MPlayer LiSting paramz piped thru basic ShfL. try2add -z && -Z options;
alias mpns='cd ~/mvz/U2b/nxt;mp $(ls B* Dr* *Tut* Ex* M* O*-Res* Var* *Trap* *Trap* *Boy*|shfl);cd ..'; # mk MPlyrNxtShfl 4quik favor8 mvz Drub&&Trap vidzls;
alias mpx='  mp   -fs';alias vnk='cd ~/mvz/U2b;mpx vnk/V?n?k*';alias vnl='cd;mvz/U2b/;mplx vnk/V?n?k*'; #-x 1920 -y 1080'; had -noborder but thN cud!mv wndw;
alias mplo=' mplr -vo xv    -fixed-vo -ao sdl   -cache 16384 -cache-min 88 -framedrop -delay -4 -autosync 30 -demuxer +lavfpref -vfm ffmpeg -lavdopts lowres=1:fast:skiploopfilter=all -v ~/mvz/U2b/nxt/O*On*'; # try to play Obsidia One_Winged_Angel thru SDL audio since Pulse stutters && ALSA totally freezes up;
alias mj='   mjoin'; mjoin() {ffmpeg -i $1 -i $2 -acodec copy -vcodec copy $3;};alias Vnk='cd ~/mvz/U2b/vnk;mpx *Doo* *Kob* *Str*'; # IB6LExci:in ~/.tmp/ aftr;
alias ffll='ffmpeg -loglevel verbose -i'; # should now just take single Input filename to do verbose logging of details about, mainly for me looking up dur8nz;
# IAIMFFMP:ffmpjoin.sh crE8d by PipStuart <Pip@CPAN.Org> to take 2 sepR8 file parameters of audio && video (probably from calls to U2b8) && join in2 cntAnr4m@;
# 2du:upd8 U2b8 autom8ion to test -F output first && harvest out best audio && video available then gener8 joined container name; nOt:out.avi did!work,mp4 did;
alias fml='ffll';alias smp='smplayer';alias aply='aplay';alias aplr='alsaplayer';alias hg='mplx ~/mvz/U2b/vnk/*Head*'; # not Mercurial! ;)  HeadGrindr bSt evR!
# in addition to mplayer, gst123, xine, qmmp, && xmms2, smplayer, vlc, mpv, aplay, alsaplayer, mikmod I've already been using, Oni did following apt install:
# ai gir1.2-rb-3.0 totem totem-plugins adplay ario-common ario audacious bplay clementine cmus-plugin-ffmpeg cmus cplay draai easyh10 faad gbemol glurp       \
#   gmerlin-data gmerlin libgrooveplayer-dev libgrooveplayer4 libgroove4 libsmpeg-dev libsmpeg0 smpeg-gtv smpeg-plaympeg libjs-mediaelement                   \
#   libjs-soundmanager2 libwildmidi-config libwildmidi-dev libwildmidi2 madplay melt moc moc-ffmpeg-plugin mpc123 mpd mpg123 mpg321 ncmpc ncmpc-lyrics        \
#   node-react-audio-player opencubicplayer openmpt123 parlatype quodlibet scrobbler showq silverjuke splay stretchplayer timidity yatm speex xmp icecast2    \
#   ices2 libadplug-dev libadplug-2.2.1-0v5 adplug-utils goattracker protracker modplug-tools bino libdmr-dev libdmr0.1 deepin-movie dragonplayer gmerlin     \
#   kaffeine kylin-video parole-dev parole ser-player termrec
# 2du:run `acs media|gi player` to find others without audio or video in their descriptions, then go thru list && rank && alias them;
alias kscr='k $(psag "/screeps_server\$"|g " Ssl "|head -n 1|cut -c10-14)'; # try2 kill prv8 screeps_server process easier than typing k $PID aftr psag Sc
alias kamp='ka -q -9 mplayer'; # -quiet (!warn if!mtch) && -9 kill force signal  ## du! actually kill any @all (if U can hLp it, plEz)!
alias kasd='ka -q speech-dispatcher'; # resolve Aku's buggy loud HDMI audio clicking loop from "cicero" tXt2sPch4 mbrola wich surfaced aftr watching Twitch vid
alias kisp='kasd';alias kasp='kasd';alias ksp='kasp';alias kspd='kasp'; # make a bunch of other good guesses at what the alias was when forgotten J5CMGnwN;
alias kafp='ka -q plugin-container'; #'kill `ps ax | grep firefox | grep flash | cut -d" " -f1`'; # Kill crashed adobe Flash plugin (altho bad if ever running additional firefox plugins && will have to restart those too). Could also use   | c8 0'; #now instead.
#/usr/lib/firefox/plugin-container /usr/lib/flashplugin-installer/libflashplayer.so -greomni /usr/lib/firefox/omni.ja 1881 true plugin
# sudo modprobe pcspkr;say 'you have a speaker voice'; # ALSA lib pcm_dmix.c:1108:(snd_pcm_dmix_open) unable to open slave; espeak 'you have a speaker voice';
# zsh: command not found: espeak [pip@OniK2HL78q9~]acs espeak;acs beep;  HTTPS://YouTu.be/M0eEwqUpKDc "How to Haunt a Computer Using SSH" # K2HL7Lr0:19m09s;
alias kas=' kasd'; # KillAllStupidScratchySpeechSoundStaticShockSparkSpaz
alias  klok='dclock -date "%A %B %d, %Y" -geometry 256x88-1920-0 -miltime -bg "#03071B" -led_off "#031B0B" -fn Fixed &';
alias xklok='xclock -digital -fg yellow -bg black -rv -geometry 512x64 -update 1 &'; # stuD fdclock gworldclock osd_?clock twclock tzwatch 2add more good here
alias tklok='tclock -sbBcC 2 -d 0 -a 199899799';alias tclock='tty-clock';alias tclk='tklok'; # -s show-seconds, -r rebound, -C [0-7] Color [krgobmcw], -b bold,
# -B Blinking-colons, -d delay-seconds, -a delay-nanoseconds (billionthz), -c toggle-centering, -S ScreenSaver-mode (any key quitz), -x show-box, -t 12h-time,
# -u use-utc, -T <TTY-TargeT>, -f <strftime-format>, -n no-key-quitz (needs signal sent nstd), -D hiDe-Date-Display, -v version, -i info, && -h help-on-usage;
alias echoe='echo -e'; #  enable interpret8ion of backslashed escapes (default is -E to disable)
alias echon='echo -n';alias cppa='c8 ~/.log/PPA.ansi'; # disable trailing NewliNe
alias echos='echon  ';alias ewh="ene '${C}$COLUMNS${w}x$O$LINES'"; # echo (with -NoNewliNe) colrd curNt term NvIronmNt varz 4 Width x Height (like `wdht`);
alias eqx='/home/pip/dvl/m8/clda/eqx/eqx-0.9.4.26/equinox3d-0.9.4.26-Linux64bit/eqx &'; # Gabor Nagy's awesome EQuinoX3D
alias fstat='  pl -MTime::PT -E "@s=split(/ /,scalar(localtime((stat(shift))[9])));print   \"@s\"      ;"';
#lias fstatpt='pl -MTime::PT -E "@s=split(/ /,scalar(localtime((stat(shift))[9])));print `pt @s`,\"\n\";"'; #pt(@s) not exported,so try shell,leav Nwln?
alias fstd8='  pl -M$HOd8    -E "@s=split(/ /,scalar(localtime((stat(shift))[9])));print $HOd8->new(\"full\"=>\"@s\");"'; 
alias wmc='  wmctrl ';alias gtt=' gnome-tweaks  '; # Uzd2B gt-tool scAling all fontz2 1.5&&mkCapsLock Ctrl;XperimNt wiCaps2:Hyper,Menu,orWin 2CwutLsIcan map2;
alias gt='   env TERM_PROGRAM=gt  gnome-terminal'; # wrap GnomTerm wi ENV var to be l8r capable of determining the actual term apart from just xterm-256color;
# nOt:xrg BlO had g wi multiple -e expressionz but I changed g() to call grP for -P Perl PCRE so had to chng this to be grp 4 regUlR grep th@ handlz multi -e;
alias xrnr='xrandr';alias xrg="xrnr|grp -e '^[DH][^ ]*' -e ' connected' -e primary"; # mk func tkng [dhp]\d* wich ndx2cfg r8z whN cRd,Kbl,&&displAsuportz144?;
alias xr='xrnr --output DVI-D-0 --mode 1920x1080 --rate 60';alias cx='ct "init";xr'; # nEd2set ViotekGN32C over DVI from Dflt 144 rEfresh down2cAbl suportd 60
#    `xr` abov was DVI-1 thN DVI-D-1 thN DVI-D-0 && had --mode 1920x1080 B4 just --rate 60; # new50"TV was H3WideFormat set above as $H3WF to booleon flag it;
#    `xt` used to be a sym-link to ~/bin/xmltidy (or l8r just xtidy) but is more consistent with st, at, gt, et, etc. to have it alias for XTerm now instead;
alias xt='   env TERM_PROGRAM=xt   xterm          -geometry 160x50 -fa        "Monospace" -fs 12              &'; # N52MCKit:instld kitty && tilix +somothrz;
alias xtm80='env TERM_PROGRAM=x80  xterm          -geometry 80x25  -fa        "Monospace" -fs 24              &'; # atMpt2mk big dbl-sIz xt wi FontSize pRam;
alias gtm80='env TERM_PROGRAM=g80 gnome-terminal --geometry=80x25 --window-with-profile=Pips8025GnomTerm-NiceFont-K2FL8025  2>/dev/null &'; # mk dbl-sIzd gt;
alias gtm40='env TERM_PROGRAM=g40 gnome-terminal --geometry=40x12 --window-with-profile=Pips40x12GnomTerm-NiceFont-L66MGG40 2>/dev/null &'; # mkquad-sIzd gt;
alias uxtrm='env TERM_PROGRAM=uxt uxterm          -geometry 160x50 -bc -bcn 512 -bcf 256                      &'; #`appres XTerm|gi utf8font`shOwz mNU fontz;
alias utm80='env TERM_PROGRAM=u80 uxterm          -geometry  80x25 -bc           &'; # setup consistNtly 2 or 3-char aliases for almost all usable termz;
alias lxtrm='env TERM_PROGRAM=lxt lxterm          -geometry 160x50               &'; # =lxterm is sepR8 sh scrpt wich tStz locale&&wrapz plain uxterm 4 UTF-8;
alias lxt80='env TERM_PROGRAM=l80 lxterm          -geometry  80x25               &';
alias lxtmn='env TERM_PROGRAM=lxm lxterminal     --geometry=160x50               &'; # =lxterminal LXDE lItw8 GTK+ term MUl8r wi dox frm`d8 86S`;`d8 4CJ`BlO;
alias lxm80='env TERM_PROGRAM=L80 lxterminal     --geometry=80x25                &';
alias sakra='env TERM_PROGRAM=sak sakura          -c     160 -r 50 -f  "Ubuntu Mono,monospace 13" 2>/dev/null &'; # mk Ech similR 2my prEferd Dfalt dimNsionz;
alias sak80='env TERM_PROGRAM=S80 sakura          -c      80 -r 25 -f  "Ubuntu Mono,monospace 28" 2>/dev/null &'; # mk sepR8 160x50 &&dbl-sIz 80x25 Sak alias;
alias sak40='env TERM_PROGRAM=S40 sakura          -c      40 -r 12 -f  "Ubuntu Mono,monospace 48" 2>/dev/null &'; # mk sepR8         quad-sIz 40x12 Sak alias;
alias roxtm='env TERM_PROGRAM=rox roxterm        --geometry=160x50 -c  "Default" &'; # anothr VTE-bAsd xterm (-z $ZoomFrom1.0 [want 0.8333] CRIT assert pango);
alias rox80='env TERM_PROGRAM=r80 roxterm        --geometry=80x25  -c  "Default" &'; # had 2 add-apt-repository for ppa:h-realh 2 get roxterm installed again;
alias tmn8r='env TERM_PROGRAM=t8r terminator     --geometry=1458x920 -T t8r -b 2>/dev/null &'; # geom pixLz,!charz wi dmNsnz 10x18 1608x932pixLz+bordr&&tab-bR;
alias xf4tm='env TERM_PROGRAM=x4t xfce4-terminal --geometry=160x50   -T x4t    2>/dev/null &'; # like rox, x4t && m8t accept --zoom=$ZOOM level varyng from ...
alias x4t80='env TERM_PROGRAM=X80 xfce4-terminal --geometry=80x25    -T X80    2>/dev/null &'; #   -7 to 7 with 0 as norml sIz or   $ZOOM factor with ...
alias m8trm='env TERM_PROGRAM=m8t mate-terminal  --geometry=160x50   -t m8t      &';           #      1.0         as norml sIz as float scAle;
alias m80tm='env TERM_PROGRAM=m80 mate-terminal  --geometry=80x25    -t m80      &'; # tmg BlOhas -c=$BOOL CursorBlink && -G=$BOOL VisualBell && -B Borderless;
alias tmnlg='env TERM_PROGRAM=tmg terminology    --geometry=160x50   -T tmg -2    ';alias Re='pu ~;rd -p .elementary/config/standard;po 2>/dev/null'; # no & so
alias tmg80='env TERM_PROGRAM=T80 terminology    --geometry=80x25    -T t80 -2 2>/dev/null   ;pu ~;rd -p .elementary/config/standard;po 2>/dev/null'; # rd aftr
alias qterm='env TERM_PROGRAM=qtm qterminal                     1>/dev/null 2>&1 &'; # DsIgnd 4 LXQt dsktp NvIrnmNt Cmz 2 hv almOst nO cmd-lIn optnz 2 adjust;
alias qt240='env TERM_PROGRAM=q24 qterminal       -p qt240x67   1>/dev/null 2>&1 &'; # HTTPS://GitHub.Com/lxqt/qterminal/issues/488 says must be in ~/.config/
alias qt160='env TERM_PROGRAM=q16 qterminal       -p qt160x50   1>/dev/null 2>&1 &'; #   as .conf files that are manually configurd but thN sAv st8 whN editd;
alias qtm80='env TERM_PROGRAM=q80 qterminal       -p qt_80x25   1>/dev/null 2>&1 &'; # can I customize an 80x25 qterminal somehow? proly hv2mk -p profilez4it;
alias qtm40='env TERM_PROGRAM=q80 qterminal       -p qt_40x12   1>/dev/null 2>&1 &'; # still need to mk a 40x12 qterm profile for this 2 eventually work rite;
alias Trmnl='env TERM_PROGRAM=Trm Terminal                      2>/dev/null      &'; # looks lIk Terminal app so old that it can hardly render prmpt or colrz;
alias liltm='env TERM_PROGRAM=ltm lilyterm        -g        160x50   -T ltm    2>/dev/null &'; # lily&&termit spew lots ofGTK warnz2STDERR;
alias lil80='env TERM_PROGRAM=i80 lilyterm        -g         80x25   -T i80    2>/dev/null &'; # lily in 80-column mode getz 'i80' Title since l80 && L80 tAkN;
alias konsl='env TERM_PROGRAM=kon konsole        --profile  PipProfile0-K2ELGANT &'; # qterminal && konsole cfgz in ~/.config/ && ~/.local/share/;
alias trmit='env TERM_PROGRAM=tit termit    -i "$HOME/.config/termit/rc.lua"   2>/dev/null &'; # cud -T tit 2set TITle of TermIT, but thN can!`ct` in it l8r;
alias tit80='env TERM_PROGRAM=T80 termit    -i "$HOME/.config/termit/rc80.lua" 2>/dev/null &'; # try 2 mk termit with 80x25 config
alias Pterm='env TERM_PROGRAM=ptm pterm           -geometry 160x50 -fn             "Monospace 12"             &'; # pterm has lotz of .Xrc && CLI optz 2 add;
alias ptm80='env TERM_PROGRAM=p80 pterm           -geometry  80x25 -fn             "Monospace 24"             &';
alias Urxvt='env TERM_PROGRAM=urx urxvt           -geometry 160x50               &'; # Unicode-Rxvt cnfigd nEr botm of ~/.Xrc wi `xrc` 2lOd xrdb d8a B4hand;
alias urx80='env TERM_PROGRAM=U80 urxvt           -geometry  80x25               &';
alias rxvtu='env TERM_PROGRAM=rxu rxvt-unicode    -geometry 160x50               &';
alias rxu80='env TERM_PROGRAM=R80 rxvt-unicode    -geometry  80x25               &';
alias st='   env TERM_PROGRAM=st  stterm          -g        160x50   -T st  -f "Ubuntu Mono:size=14"          &'; # also SimpleTerminal (or SucklessTerminal);
alias s80='  env TERM_PROGRAM=s80 stterm          -g         80x25   -T s80 -f "Ubuntu Mono:size=28"          &'; # dbl-sIz varE8ion but nEd2 fix lsd8 colrz2;
alias s40='  env TERM_PROGRAM=s40 stterm          -g         40x12   -T s40 -f "Ubuntu Mono:size=48"          &'; #quad-sIz varE8ion but nEd2 fix lsd8 colrz2;
alias to='   tio';alias et=' Et';alias s3t='s3dvt  &'; # tio is just simple TTY term I/O app,not a ful term by itsLf; s3dvt nEdz S3D && a TCP servr2connect2?;
alias ATM='  atm';alias atm='At'; # `pt` stil ~/bin/ Time::PT.pm PipTime but othrz can shrnk 3 to 2-char aliasz;
alias crt='cd ~/dvl/c8/trm8;CRT'; # CoolRetroTerm nEdz2cfg termrc 2Uz smalr font; # Terminal cfg in ~/.GNUstep/ (aftr chgz mAd2 /etc/ .conf 2mk dir dot-fIl);
alias stp='cd ~/dvl/c8/trm8/st;patch -Np1 -i'; # SucklessTermPatch with No attempt to reverse 1st failed hunk && stripping 1st slash from Path B4 Input fIl;
alias smci='sudo make clean install'; # HTTPS://BrianBuccola.Com/how-to-build-and-install-st-suckless-simple-terminal-from-source-on-arch-linux `d8 H3J`;
alias vtst='vttest'; # `vtst` might be good to run all termz thru 2 see which have what fE8urez; BlO echo compact term alias mapingz;
alias xT='x80';alias x80='xtm80'; # tSt setng all my 3-char && smaller aliasez 2 prefix larger 5-char aliasez with ENV var lIk GNUstep_Terminal.app has;
alias GT='g80';alias g80='gtm80';   # I'm not sure yet if each of these are detected as different behaviorz bAsd on $0;
alias g4='g40';alias g40='gtm40';   # new 40x12 profile;
alias ut='uxt';alias uxt='uxtrm';   #lrwxrwxrwx 1 root root       5 Sep  5 06:08 /usr/bin/rxvt         -> urxvt
alias uT='u80';alias u80='utm80';   #lrwxrwxrwx 1 root root       5 Sep  5 06:08 /usr/bin/rxvt-unicode -> urxvt
alias lt='lxt';alias lxt='lxtrm';   #lrwxrwxrwx 1 root root       5 Sep  5 06:08 /usr/bin/rxvt-xpm     -> urxvt
alias lT='l80';alias l80='lxt80';   #lrwxrwxrwx 1 root root       5 Sep  5 06:08 /usr/bin/rxvt-xterm   -> urxvt
alias Lt='lxm';alias lxm='lxtmn';   #-rwxr-sr-x 1 root utmp 1423512 Sep  5 06:08 /usr/bin/urxvt
alias LT='L80';alias L80='lxm80';   #-rwxr-xr-x 1 root root   97056 Sep  5 06:08 /usr/bin/urxvtc
alias sa='sak';alias sak='sakra';   #-rwxr-xr-x 1 root root      86 Jun  9  2016 /usr/bin/urxvtcd
alias SA='S80';alias S80='sak80';   #-rwxr-sr-x 1 root utmp 1431704 Sep  5 06:08 /usr/bin/urxvtd
alias S4='S40';alias S40='sak40';alias s4='s40'; # basic Sakura && stterm 40x12 floor of quarter-quarter of my main 160x50 term dimensions for quad-sIz EZ2rEd;
alias rt='rox';alias rox='roxtm';
alias rT='r80';alias r80='rox80';
alias T8='t8r';alias t8r='tmn8r';
alias Xt='x4t';alias x4t='xf4tm';
alias XT='X80';alias X80='x4t80';
alias Mt='m8t';alias m8t='m8trm';
alias mT='m80';alias m80='m80tm'; # OMG! EFL terminology BlO is so fscking awesome with the beautiful VisualBell alarm alert in the lower-right corner;
alias Tt='tmg';alias tmg='tmnlg'; # `tt` is already mapped to the gr8 KentaCho of BulletML fame's ported DMD game: Torus-Troopers so can't remap that!;
alias tT='t80';alias t80='tmg80'; # I am unabashedly heels-over-head reeling in love with the puls8ing glittery cursor of terminology && its esthetics;
alias qt='qtm';alias qtm='qterm'; # qt should be almost identical to qt160 (with -p profile ~/.config/qt160x50.conf that's not in qterminal.org/ path);
alias q2='q24';alias q24='qt240';
alias q1='q16';alias q16='qt160';
alias q8='q80';alias q80='qtm80'; # Damn! ~/.GNUstep/ Terminal.app is so horribly broken with all the settings I could try to saddle it wi sOfR.4getit?
alias q4='q40';alias q40='qtm40'; # new 40x12 profile that still needs a config file to be capable of running;
alias TT='Trm';alias Trm='Trmnl'; # mAB this 1 will get overridden by GNUstep so shud vary,or mAB all varz shud just B shrunk 2 only TERM_(PROG|ALIAS)?
alias it='ltm';alias ltm='liltm'; # it might also be betr 2 rEwrIt all thEz az shL functionz wich can pass argz in2 term programz B4 & thM 2 bkgr jobz?
alias iT='i80';alias i80='lil80';
alias ko='kon';alias kon='konsl';
alias It='tit';alias tit='trmit';
alias IT='T80';alias T80='tit80';
alias pT='ptm';alias ptm='Pterm';
alias p8='p80';alias p80='ptm80';alias wez='wezterm'; # wezai is AppImage in /usr/local/bin
alias Ut='urx';alias urx='Urxvt';alias wezfp='flatpak run org.wezfurlong.wezterm';
alias UT='U80';alias U80='urx80'; # also study tio 4 anythng useful?
alias Rt='rxu';alias rxu='rxvtu'; # should l8r go through `trmz` list below && re-order the major groupz to prioritize displaying the best onez first
alias RT='R80';alias R80='rxu80'; # BlO trmz usez echo -e on SKpd colr-coded terminal MUl8orz mapng lstz of alIgnd 2 && 3-char aliasz fitng in 160-char lInz;
alias trmz='ee "${R}xt$w,${o}st$w,${Y}gt$w,${G}at$w,${C}et$W => ${R}xterm$w,${o}s${w}[${O}imple${w}]${o}tterm$w,${Y}gnome-terminal$w,${G}aterm$w,${C}E${w}[${c}nlightenment${w}]${C}term$W; ${R}uxt$w,${o}lxt$w,${Y}lxm$w,${G}sak$w,${C}tmg$w,${B}t8r$w,${M}tit$w,${p}s3t$w,${R}urx$w,${o}rox$w,${Y}crt$w,${G}x4t$w,${C}m8t$w,${B}Trm$w,${M}kon$w,${p} to$w,${R}ltm$w,${o}ptm$w,${Y}qtm$W =>";
            ee "${R}uxterm$w,${o}lxterminal$w,${Y}lxterm$w,${G}sakura$w,${C}terminology$w,${B}terminator$w,${M}termit$w${p}s3dvt$w${R}urxvt$w${o}roxterm$w, ${Y}CoolRetroT*$w,${G}xfce4-terminal$w,${C}mate-terminal$w,${B}Terminal$w,${M}konsole$w${p}tio$w${R}lilyt*$w${o}pt*$w${Y}qterminal$W;";
            ee "${R}it$w,${o}Pt$w,${Y}qt$w,${G}At$w,${C}Rt$W => ${R}lilyterm$w,${o}pterm$w,${Y}qterminal$w,${G}aterm$w,${C}rxvt-unicode$W;${B}Lt$W =>$B lxterminal$W;$C 80${K}x${o}25$G varE8ionz$W:$R x80$w,${o}X80$w,${Y}l80$w,${G}L80$w,${C}r80$w,${B}R80$w,${M}s80$w,${p}S80$w,${R}i80$w,${o}p80$w,${Y}q80$w,${G}u80$w,${C}U80$w,${B}g80$w,${M}m80${K}...";
            ee "${G}      l8r  alsO$W:$w t80$w,T80$w,G80$w,M80$w,k80$w,I80 && sa, Tt, Xt, Mt, Ut, ut, ko, lt, rt$W;$z also note most first letters followed by \"T\" do 80x25 varE8ionz of lowercase-t;"';
alias  Etrm='env TERM_PROGRAM=et Eterm --geometry 160x50 --scrollbar-width 15 --cmod 227 -L 65536 &';alias Et='Etrm';alias E='Et'; # Used 2B 'Eterm -t E &' ...
#xport ETERM_THEME_ROOT="~/.Eterm/themes"; # wuz ~/.Eterm/themes/Eterm                # ... but it looks like I don't even need that plain old  E theme anymore
#lias E=' Eterm -t E --scrollbar-type motif --scrollbar-width 15 &'; # --cmod 227 &';
#lias Et='Eterm --background-pixmap mits1024.jpg -c orange -T PipzEtrm --scrollbar-type motif --scrollbar-color blue --scrollbar-width 15 --scrollbar-right --path /home/pip/.Eterm/ --default-font-index 4 &'
#lias Et='Eterm -c #FFA404 -T PipzEtrm --scrollbar-type motif --scrollbar-color blue    --scrollbar-width 15 --scrollbar-right --default-font-index 4 &'
#lias Et='Eterm -c #FFA404 -T PipzEtrm --scrollbar-type motif --scrollbar-color #071531 --scrollbar-width 15 --scrollbar-right --default-font-index 4 -F andalemo.ttf --proportional --cmod 195 --double-buffer &'; "-*-*-*-*-*-*-$1-*-*-*-*-*-*-*"
#/usr/share/texmf/fonts/afm/adobe: avantgar bookman courier helvetic         ncntrsbk palatino         symbol times zapfchan zapfding
#/usr/share/texmf/fonts/tfm/adobe: avantgar bookman courier helvetic mathppl ncntrsbk palatino pslatex symbol times zapfchan zapfding
#/usr/share/texmf/fonts/vf /adobe: avantgar bookman courier helvetic mathppl ncntrsbk palatino pslatex        times zapfchan
#lias Et='Eterm -c #FFA404 --scrollbar-type motif --scrollbar-width 15 --scrollbar-right --cmod 227 &';
#lias Et='Eterm -c #FFA404 -T PipzEtrm --scrollbar-type motif --scrollbar-width 15 --scrollbar-right --buttonbar --cmod 227 -L 4095 --double-buffer -x &'; #\
#                                                       --font1 "-adobe-helvetica-medium-r-normal-*-10-100-75-75-p-56-iso8859-1" \
#                                                       --font2 "-adobe-helvetica-medium-r-normal-*-10-100-75-75-p-66-iso8859-1" \
#                                                       --font3 "-adobe-helvetica-medium-r-normal-*-10-100-75-75-p-76-iso8859-1" \
#                                                       --font4 "-adobe-helvetica-medium-r-normal-*-10-100-75-75-p-96-iso8859-1" \
#                                                  --bold-font  "-adobe-helvetica-medium-r-normal-*-10-100-75-75-p-96-iso8859-1" &';
#lias gtd0='gnome-terminal --display=:0.0'; # these were old Ryu gN2 GT aliasz which I keep around for l8r rFerence
#lias gtrm='    gtd0 --class=gtrm     --geometry  80x46-0+0      --hide-menubar --window-with-profile=GT80x46Terminus18           --title=zsh          &';
#lias gterm='   gtd0 --class=gterm    --geometry 160x64+0+0      --hide-menubar --window-with-profile=GT160x64Courier14                                &';
#lias gnomterm='gtd0 --class=gnomterm --geometry  80x51+0+0      --show-menubar --window-with-profile=GT80x39CourierBold20        --title=zsh          &';
#lias gtpt='    gtd0 --class=ptok     --geometry  27x1-0-0       --hide-menubar --window-with-profile=GT27x1AndaleMonoBold40-ptok --title=ptok -e ptok &';
#lias gtpto='   gtd0 --class=ptok     --geometry  27x1+3002+1141 --hide-menubar --window-with-profile=GT27x1AndaleMono40-ptok     --title=ptok -e ptok &';
#lias gtpm='    gtd0 --class=pmix     --geometry 160x3+1921+1141 --hide-menubar --window-with-profile=GT67x3Lincoln12-pmix --title=pmix -e pmix&'; #160,180,282
if       [[ "${(L)HHst}" ==  oni    ]] || # nOt:looks lIk sleep from GNU CoreUtils v8.30 of September 2019 accepts floating-point numbers or dhms suffixes;
         [[ "${(L)HHst}" ==  aku    ]]; then  alias gtss='sleep 1'; # GnomeTerminal SleepSeconds 2 delay 4 gti init   # only Akuma was fast Enuf2kEp up with 1
else                                          alias gtss='sleep 2'; fi            # ... second before && hopefully Ryu, Ken, && Chun can all handle just 2 now
# below set 8sh "H" Viewport Width 1..3 | Height 1 defaults of all 3840x1080 then override as approprE8 for host-specific display resolution varE8ionz
# maybe l8r try to load HWd0 && HHt0 below in some autom8d way from `xrg|g -? '\d+x\d+'` that only returnz the integer digitz for resolution dimensionz;
#if      [[ "${(L)HHst}" ==  oni*   ]] || [[ "${(L)HHst}" ==  aku*   ]]; then                    export HVW2='7680' ;export HVW3='11520'; # new50"TV is 3wide
# if     [[     "$H3WF"  ==  "1"    ]];                                  then export HVW1='5760';export HVW2='11520';export HVW3='17280';               fi
#elif    [[ "${(L)HHst}" ==  ryu*   ]] || [[ "${(L)HHst}" ==  ken*   ]]; then export HVW1='1920';                    export HVW3='5760' ;                 fi
# M8IM3MIM:could probably just export HVH1=`TI 4` && HVW123=`TI 1` 2 && 3 without needing per-machine config like this below but I think I'm leaving this4now;
export HWd0='1920';export HHt0='1080';                                        export HVW1='3840';export HVW2='3840' ;export HVW3='3840' ;export HVH1='1080';
if       [[ "${(L)HHst}" ==  oni*   ]] || [[ "${(L)HHst}" ==  aku*   ]]; then                    export HVW2='7680' ;export HVW3='11520';export HVH1='2160';
  if     [[     "$H3WF"  ==  "1"    ]];                                  then export HVW1='5760';export HVW2='11520';export HVW3='17280';                  fi
elif     [[ "${(L)HHst}" ==  ryu*   ]] || [[ "${(L)HHst}" ==  ken*   ]]; then export HVW1='1920';                    export HVW3='5760' ;                    fi
if       [[ "${(L)HHst}" ==  ryu*   ]];                                  then                                                            export HVH1='1200'; fi
if       [[ "${(L)HHst}" ==  chun*  ]] || [[ "${(L)HHst}" ==  taki*  ]]; then export HVW1='1280';export HVW2='2560';export gtss='sleep 3';export HVH1='800'; fi
#alias mpx='  mp      -fs'; #-x 1920 -y 1080'; # originally quite a long time ago, I used to include -noborder optn abov but thN cud!mv wndw... rEdFIning rL8iv
alias Mply='  en "er -vo xv  -fixed-vo -nosound -loop 0          -geometry  1916x$(q $HVH1 - 28)+0+0"   '; # try Mply echo dbl-quOtd ...?
alias mply=' mplayer -vo xv  -fixed-vo -nosound -loop 0          -geometry "1916x$(q $HVH1 - 28)+0+0"    '; #-x 1916 -y 1052' # mplayer canOnly stRt wi1920maxBcuzXinerama?
alias mpb='  mpr0    -speed 0.025                 -keepaspect    -geometry   640x1024+1928+8  ~/mvz/.pr0/mp4/Bl*'; # O3QMHaru:ckot haruna vs mp && sxiv 4imgVw;
#lias mpr0=' mplayer                   -nosound --no-keepaspect  -geometry "1920x$(q $HVH1 - 28)+0+0"    '; # still needs vid file params like: ~/mvz/U2b/**/*Obsidia*.opus
alias mpr0=' mplayer -vo xv  -fixed-vo -nosound -nokeepaspect    -geometry "1920x$(q $HVH1 - 28)+0+0"    -loop 0'; # this 4 MPlayer && above 4 MPlayer2 (wich I had4 awhIl)
alias mpr1=' mplayer -vo xv  -fixed-vo -nosound -nokeepaspect    -geometry "1920x$(q $HVH1 - 28)+888+88" -loop 0'; # this 4 same as mpr0 but on Aku's  middle   24" display
alias mpr2=' mplayer -vo xv            -nosound -nokeepaspect    -geometry "1920x$(q $HVH1 - 28)+1919+0" -loop 0'; # this 4 same as mpr0 but on Aku's far right 50" display
alias mpr0t='mplayer -vo xv  -fixed-vo -nosound -msgcolor -noborder -cache 16384 -cache-min 99 -geometry "1916x$(q $HVH1 - 28)+0+0" -msglevel all=0:identify=4 ~/mvz/.pr0/tst/Aut0pr0-9AS4gTn/pr0-*/*'; # test if messages can report desired details; # for some reason,above mpr1 won't take geom 2full midl display so just offset a bit?
alias mpfb=' mplayer -vo fbdev -vf scale=640:400   -loop 0'; # ~/mvz/U2b/* for some old scaled FrameBuffer modes
alias mpfbs='mplayer -vo fbdev -vf scale=1920:1200 -loop 0'; # ~/mvz/muV/*
alias mpf8=' mplayer -vo fbdev        -nosound --no-keepaspect  -vf scale=1920:1080 '; # still needs vid file params to follow
m0() { # mplayer pr0n function, but called aliases reloc8d to below host tests DfIning dimNshnz && mAB mk prv8 Xtractd Xtrnl mor? ;
  if       [[ "$#" -gt   0 ]]; then # print out some help text for -h (or l8r add --help) as first parameter && then return
    if     [[ "$1"  ==  *h ]]; then echo 'm0 crE8d by PipStuart <Pip@CPAN.Org> to wrap mpr0 for streamlining calls to mplayer on my pr0n;'
      echo                               ' h - print this Help text && exit;  No pRam runs mpr0 on mpg,wmv,avi * (left scrn,mpr1 right).'
      echo                               ' 1 - runs mpr1 on     wmv,avi,mpg ht*;    (this 1 && v below ignore any l8r pRameters so far)'
      echo                               ' 2 - runs mpr2 on mpg,wmv,avi     ht*;'
      echo                               ' s - runs mpr2 on mpg,wmv,avi shfl   ;'
      echo                               ' v - runs  vp  in   .VelvetPound/    ;    Other pRams will just be passed on to mpr0 for now;';return 0;
    elif   [[ "$1"  ==  *v ]]; then                                                cd ~/mvz/.pr0/.VP/     ;vp
    elif   [[ "$1"  ==  *1 ]]; then                                                cd ~/mvz/.pr0/         ;mpr1 mpg/ht* wmv/ht* avi/ht*
    elif   [[ "$1"  ==  *2 ]]; then                                                cd ~/mvz/.pr0/         ;mpr2         wmv/*   avi/*   mpg/*
    elif   [[ "$1"  ==  *s ]]; then                                                cd ~/mvz/.pr0/         ;mpr2 $(ls    wmv/*   avi/*   mpg/* | shfl)
      # & \ abov just bkgrndz 0 procS so nEd2du smthng lIk vp 2spawn 2sepR8 windOz && 4nO pRamz else BlO  ;mpr0 wmv/ht* avi/ht* mpg/ht*
    else                                                                                                   mpr0 $@;fi # assume othr pRamz mEn alreD in fIn dir
  elif     [[ `pwd` ==  *pr0/mpg/   ]] || [[ `pwd` ==  *pr0/wmv/   ]] || [[ `pwd` ==  *pr0/avi/   ]]; then mpr0 *
  else                                                                             cd ~/mvz/.pr0/         ;mpr0 mpg/*   wmv/*   avi/*;fi }
# NCCLAsTm: HTTPS://AskUbuntu.Com/questions/1103540/why-is-there-a-steampath-in-my-home-directory XplAnz why my ~ has brOkN symlink .steampath 2 sdk32/ !ther;
alias m1='m0 1'; # could also try to add |g -v "_server /home/" or |g steam|g " Ssl " below to inVert match to try to not get child processes first
alias m2='m0 2'; #   Screeps was below, but for some reason spawning server process was uniquely showing up with space for second 's' but no longer
chvp() { # CHange ViewPort ("virtual desktop") thru wmc -o ... based on host dimz && Compiz 8 viewportz in 4x2 grid
  if     [[ "$1"         ==     ""  ]] ||
         [[ "$1"         ==    "0"  ]]; then wmc -o     0,0;
  else
    if   [[ "$1"         ==    "1"  ]]; then wmc -o $HVW1,0;
    elif [[ "$1"         ==    "2"  ]]; then wmc -o $HVW2,0;
    elif [[ "$1"         ==    "3"  ]]; then wmc -o $HVW3,0;
    elif [[ "$1"         ==    "4"  ]]; then wmc -o     0,$HVH1; # 2du:figure out why Chun can't chv4,proly Compiz desktop Cube restrictz from lower row
    elif [[ "$1"         ==    "5"  ]]; then wmc -o $HVW1,$HVH1;
    elif [[ "$1"         ==    "6"  ]]; then wmc -o $HVW2,$HVH1;
    elif [[ "$1"         ==    "7"  ]]; then wmc -o $HVW3,$HVH1; fi; fi }
alias chv0='chvp 0';alias chv1='chvp 1';alias chv2='chvp 2';alias chv3='chvp 3';
alias chv4='chvp 4';alias chv5='chvp 5';alias chv6='chvp 6';alias chv7='chvp 7';
alias   gt3='gt --geometry=+0+0         --show-menubar --window-with-profile=PipsTestGnomTerm-DiffFont-D1NBxCf  --role=test                                 &;
        gtss;wmc -r :ACTIVE: -T test                ;
             gt --geometry=-0+0         --show-menubar --window-with-profile=PipsOthrGnomTerm-TestFont-CCIHPS8  --role=othr                                 &;
        gtss;wmc -r :ACTIVE: -T othr                ;
             gt --geometry=+0-0         --show-menubar --window-with-profile=PipsCkm8GnomTerm-NiceFont-DC9LDaPt --role=ckm8                                 &;
        gtss;wmc -r :ACTIVE: -T ckm8               '; # slower now calling sleep between every spawn to give wmctrl time to grab active && set title
alias   gt4='gt3;
             gt --geometry=-$HWd0+0     --show-menubar --window-with-profile=PipsOthrGnomTerm-TestFont-CCIHPS8  --role=Othr                                 &;
        gtss;wmc -r :ACTIVE: -T Othr               '; # so far, only Aku has multiple displayz in default configur8ion, with room for these 2 xtra terminalz
alias   gt5='gt4;
             gt --geometry=-$HVW1+0     --show-menubar --window-with-profile=PipsOthrGnomTerm-TestFont-CCIHPS8  --role=othr                                 &;
        gtss;wmc -r :ACTIVE: -T othr               '; # so far, it's too bad that Othr background dark green looks just black with l8st Sony TV settingz
alias   gt8='gt4;
             gt --geometry=+0+$HHt0     --show-menubar --window-with-profile=PipsTestGnomTerm-DiffFont-D1NBxCf  --role=test                                 &;
        gtss;wmc -r :ACTIVE: -T test                ;
             gt --geometry=+$HWd0+0     --show-menubar --window-with-profile=PipsTestGnomTerm-DiffFont-D1NBxCf  --role=test                                 &;
        gtss;wmc -r :ACTIVE: -T test                ;
             gt --geometry=+0-$HHt0     --show-menubar --window-with-profile=PipsCkm8GnomTerm-NiceFont-DC9LDaPt --role=ckm8                                 &;
        gtss;wmc -r :ACTIVE: -T ckm8                ;
             gt --geometry=-$HWd0+$HHt0 --show-menubar --window-with-profile=PipsOthrGnomTerm-TestFont-CCIHPS8  --role=othr                                 &;
        gtss;wmc -r :ACTIVE: -T othr                ;
             gt --geometry=-0+$HHt0     --show-menubar --window-with-profile=PipsOthrGnomTerm-TestFont-CCIHPS8  --role=othr                                 &;
        gtss;wmc -r :ACTIVE: -T othr                ;
             gt --geometry=+$HWd0+$HHt0 --show-menubar --window-with-profile=PipsTestGnomTerm-DiffFont-D1NBxCf  --role=test                                 &;
        gtss;wmc -r :ACTIVE: -T test                ;
             gt --geometry=+$HWd0-0     --show-menubar --window-with-profile=PipsCkm8GnomTerm-NiceFont-DC9LDaPt --role=ckm8                                 &;
        gtss;wmc -r :ACTIVE: -T ckm8               '; # had gt5 for temporary 3-Wide setup for Aku, but now moving to gt8 for Oni with quad 2x2 setup instead;
alias rs=' resize'; # also able to pass '-s $rowz $colz' to set term dimNsionz,sO mAB cnvrt this alias in2 function wi pRam optnz l8r Dtectng ${W}x$H 4m@z too
alias rsN='noglob eval `resize -s 57 171`';alias rs171='rsN'; # N for 171-wide (for calN to show 19-Years slightly lRgr than Dflt 160x50 standRd Used Lswhere)
alias rsZ='noglob eval `resize -s 67 240`';alias rs240='rsZ'; # Zdflt 240-wide (wich is what full-screen 1080p consoles fit && some small font term sizes too)
alias rsz='noglob eval `resize -s 50 160`';alias rs160='rsz'; # zdflt 160-wide (not sure how necessary noglob, eval, or backtix are, but they make cmnd quiet)
alias Rs8='noglob eval `resize -s 25  80`';alias rs80=' Rs8'; # 8 for  80-wide (might want to make these only 24 high, like Default Gnome-Terminal profile)
alias Rs4='noglob eval `resize -s 12  40`';alias rs40=' Rs4'; # 4 for  40 && also 2 for 20 as good halvingz 2l8r suport4low-reso nEdz (thO int(25/2)= just 12)
alias Rs2='noglob eval `resize -s  6  20`';alias rs20=' Rs2'; # if ever capable of displaying on large 4K HD monitorz, may want to try out a huge 320x100 too
alias Rs1='noglob eval `resize -s  3  10`';alias rs10=' Rs1'; # continue halving standards to obtain dimensions all the way down to just 30 characters total
alias Rs3='noglob eval `resize -s  1  33`';alias rs33=' Rs3'; # 3 for  33-wide d8ok termz (somewhat more straightforward && brief 2 use char dimz versus pixlz)
alias Rs9='noglob eval `resize -s  1  49`';alias rs49=' Rs9'; # 9 for  49-wide d8ok termz with -1 or -4 or -9 (to show multi-formatz on single line together)
alias rs160x50='rsz';alias rs80x25='Rs8 ';alias rs33x1='Rs3'; # HB1MBPrr:just removing Ubu17.10 deprec8d -e && -x + pRams to popul8 in GT d8ok profls && this;
alias rsd8ok='noglob eval `resize -s 1 8`; d8ok -8'; #   && a few more for d8ok; 2du:mAB mk nIc litl rEsIz Utl 2 just grO/shrink Ech bordr && call in wdht 2?;
alias rsd8ok9=' Rs9;d8ok -d -9';alias rs9='rsd8ok9'; # NCALMING:tryng 2 mk clOn of d8k4 GnomTerm prOfIl Abl2stRt1of thEs but mA segfalt&&nEd 'reset;src'aftr?;
alias rsd8ok4=' Rs9;d8ok    -4';alias rs4='rsd8ok4';alias rs8=' rsd8'; # du thEsnEd'noglob eval'orjust wmctrl -e nstdof resize isbetr4thEs purposzhEr anywAy?;
alias rsd8ok2=' Rs9;d8ok    -2';alias rs2='rsd8ok2';alias rsd8='rsd8ok'; # -8;# ReddIt.Com/r/zsh/comments/18f52gy/parameter_expansion_flags_f_vs_0_differences
# files=( /var/tmp/**/*(ND.) );ec "N NAblz nullglob, D NAblz dotglob, and . rEstrictz glob 2 regUlR fIlz. When Using print it's almOst alwAz necSary2Use -r.";
# print -rC1 -- $files;ec "Without -r produces incorrect results for files with literal \\n (backslash followed by 'n') and the lIk in their names. -RomKatV";
# printf '%s\n' $files;ec "Also, it's betr 2 Use -C1 nstd of -l Bcuz it works as U wud Xpect whN nO aRgUmeNtz aRe giveN. Using printf instd is ofteN Easier;";
alias rsd8ok1=' Rs9;d8ok    -1';alias rs1='rsd8ok1'; # -1duz!work yet sOfixit;
alias rsd8okf=' Rs3;d8ok    -f';alias rsf='rsd8okf'; # -9nEdz2chop3spAcz2fit2;
alias rsec='ec "ReSizECho(rsec) echOing rEsIzingz ( rs[8f3 1249] ) -- rs8:just d8,  rsf:33 full,  (rSt all 49) rs1:b128,  rs2:b256,  rs4:Yk4m, and rs9:b93k;"';
alias rs3='rsf'; # mk 3 for 33 -full alsO
# HC3L0DNV:noglob eval around backticks may try to reach out to propag8 exported upd8 dimensions to invoking parent environment && variables, workz without?;
if       [[ "${(L)HHst}" ==  oni    ]] ||
         [[ "${(L)HHst}" ==  aku    ]]; then # 664||-1882,-e2586 1294w 3840-1958=-1882 wmc -r :ACTIVE: -e 0,664,-1,-1,-1;wmc -r:ACTIVE:-e 0,-1882,-1,-1,-1;
  # Most of these below originally had --title= parameters like d8ok,d8ok-f,othr,2du,muz,mvz but current version no longer supports it. I've run s/title/role/g
  #   since their purpose is similar but I wish GT would just enable titles&&less than 4 rowz again like B4. Lookz like wmctrl is Able2resolv all these issuez.
  #     gtss;wmc -r :ACTIVE: -b add,sticky,below; # this was all linez aftr any d8ok (B4Itried2set -Titlez,add skip_(pager|taskbar) && upd8 geom wi -e rEsize)
  # Apparently 1st resize field is gravity:0-WinMngr shud use grav specified in WM_SIZE_HINTS.win_gravity,1-NW,2-N,3-NE,4-W,5-cNtr,6-E,7-SW,8-S,9-SE,10-static.
  # Same page: HTTPS://SuperUser.Com/questions/576057/bash-resize-terminal-xterm has `echo -e "\e[8;1;34t"` which also workz nicely 2 resize my d8ok terminalz.
 if      [[ "$DISPLAY"               !=  "" ]] &&    # K3EMJoke:nEded 2 tSt for X.Org DISPLAY so that full-screen console linux TERM doesn't print warnings;
         [[ `xrg|g -c ' connected '` == "4" ]]; then # K3EM2x2H:crE8d new condition for grid monitor layout that tries2auto-detect connected count from `xrg`;
  alias gtI='gt --geometry=+1620-$HHt0  --hide-menubar --window-with-profile=d8k8                               --role=d8k8                                 &;
   gtss;gtss;wmc -r :ACTIVE: -T d8k8                ;wmc -r :ACTIVE: -b add,skip_pager,sticky;
             wmc -r :ACTIVE: -e  10,1620,1008,300,72;wmc -r :ACTIVE: -b add,skip_taskbar,below;
             gt --geometry=+1620-0      --hide-menubar --window-with-profile=d8k8                               --role=d8k8                                 &;
        gtss;wmc -r :ACTIVE: -T d8k8                ;wmc -r :ACTIVE: -b add,skip_pager,sticky;
             wmc -r :ACTIVE: -e  10,1620,2088,300,72;wmc -r :ACTIVE: -b add,skip_taskbar,below;
             gt --geometry=-0-$HHt0     --hide-menubar --window-with-profile=d8k4                               --role=d8k4                                 &;
        gtss;wmc -r :ACTIVE: -T d8k4                ;wmc -r :ACTIVE: -b add,skip_pager,sticky;
             wmc -r :ACTIVE: -e 10,1921,1006,1919,74;wmc -r :ACTIVE: -b add,skip_taskbar,below;
             gt --geometry=+0+$HHt0     --show-menubar --window-with-profile=PipsTestGnomTerm-DiffFont-D1NBxCf  --role=test                                 &;
        gtss;wmc -r :ACTIVE: -T test                ;
             gt --geometry=+$HWd0+$HHt0 --show-menubar --window-with-profile=PipsTestGnomTerm-DiffFont-D1NBxCf  --role=Test                                 &;
        gtss;wmc -r :ACTIVE: -T Test                ;
             gt --geometry=+$HWd0+0     --show-menubar --window-with-profile=PipsTestGnomTerm-DiffFont-D1NBxCf  --role=test                                 &;
        gtss;wmc -r :ACTIVE: -T test                ;
             gt --geometry=+0-$HHt0     --show-menubar --window-with-profile=PipsCkm8GnomTerm-NiceFont-DC9LDaPt --role=ckm8                                 &;
        gtss;wmc -r :ACTIVE: -T ckm8                ;
             gt --geometry=+$HWd0-0     --show-menubar --window-with-profile=PipsCkm8GnomTerm-NiceFont-DC9LDaPt --role=Ckm8                                 &;
        gtss;wmc -r :ACTIVE: -T Ckm8                ;
             gt --geometry=-$HWd0+0     --show-menubar --window-with-profile=PipsOthrGnomTerm-TestFont-CCIHPS8  --role=othr                                 &;
        gtss;wmc -r :ACTIVE: -T othr                ;
             gt --geometry=-0+$HHt0     --show-menubar --window-with-profile=PipsOthrGnomTerm-TestFont-CCIHPS8  --role=Othr                                 &;
        gtss;wmc -r :ACTIVE: -T Othr                ;
             gt --geometry=-$HWd0+$HHt0 --show-menubar --window-with-profile=PipsOthrGnomTerm-TestFont-CCIHPS8  --role=8xt                                  &;
        gtss;wmc -r :ACTIVE: -T 8xt                
             gt --geometry=+0-0         --show-menubar --window-with-profile=PipsCkm8GnomTerm-NiceFont-DC9LDaPt --role=2du                                  &;
        gtss;wmc -r :ACTIVE: -T 2du                 ;
             gt --geometry=-0+0         --show-menubar --window-with-profile=PipsOthrGnomTerm-TestFont-CCIHPS8  --role=sys                                  &;
        gtss;wmc -r :ACTIVE: -T sys                '; # might want to experiment with 5-centered or 10-static gravity to see if they're any better than S && SE
  alias gtm='gt --geometry=+0+$HHt0     --show-menubar --window-with-profile=PipsTestGnomTerm-DiffFont-D1NBxCf  --role=test                                 &;
        gtss;wmc -r :ACTIVE: -T test                ;
             gt --geometry=+0-0         --show-menubar --window-with-profile=PipsCkm8GnomTerm-NiceFont-DC9LDaPt --role=ckm8                                 &;
        gtss;wmc -r :ACTIVE: -T ckm8                ;
             gt --geometry=-$HWd0+$HHt0 --show-menubar --window-with-profile=PipsOthrGnomTerm-TestFont-CCIHPS8  --role=othr                                 &;
        gtss;wmc -r :ACTIVE: -T othr                ;
             gt --geometry=+0+0         --show-menubar --window-with-profile=PipsTestGnomTerm-DiffFont-D1NBxCf  --role=test                                 &;
        gtss;wmc -r :ACTIVE: -T test                ;
             gt --geometry=+$HWd0+0     --show-menubar --window-with-profile=PipsTestGnomTerm-DiffFont-D1NBxCf  --role=test                                 &;
        gtss;wmc -r :ACTIVE: -T test                ;
             gt --geometry=+$HWd0+$HHt0 --show-menubar --window-with-profile=PipsTestGnomTerm-DiffFont-D1NBxCf  --role=test                                 &;
        gtss;wmc -r :ACTIVE: -T test                ;
             gt --geometry=+$HWd0-0     --show-menubar --window-with-profile=PipsCkm8GnomTerm-NiceFont-DC9LDaPt --role=ckm8                                 &;
        gtss;wmc -r :ACTIVE: -T ckm8                ;
             gt --geometry=-0+$HHt0     --show-menubar --window-with-profile=PipsOthrGnomTerm-TestFont-CCIHPS8  --role=othr                                 &;
        gtss;wmc -r :ACTIVE: -T othr                ;
             gt --geometry=-0+0         --show-menubar --window-with-profile=PipsOthrGnomTerm-TestFont-CCIHPS8  --role=Othr                                 &;
        gtss;wmc -r :ACTIVE: -T Othr                ;
             gt --geometry=-$HWd0+0     --show-menubar --window-with-profile=PipsOthrGnomTerm-TestFont-CCIHPS8  --role=muz    --working-directory=~/muz/U2b &;
        gtss;wmc -r :ACTIVE: -T muz                 ;
             gt --geometry=+0-$HHt0     --show-menubar --window-with-profile=PipsCkm8GnomTerm-NiceFont-DC9LDaPt --role=mvz    --working-directory=~/mvz/U2b &;
        gtss;wmc -r :ACTIVE: -T mvz                '; # Aku gti below fully loadz GTz in all 8 ViewPortz
  alias gti='gtI;gtss;chv1;gtss;gtm;gtss;chv2;gtss;gt8;gtss;chv4;gtss;gt8;gtss;chv5;gtss;gt8;gtss;chv6;gtss;gt8;gtss;chv7;gtss;gt8;gtss;chv3;gtss;gt8;chv0';
 elif    [[ "$DISPLAY"               !=  "" ]] &&
         [[ `xrg|g -c ' connected '` == "3" ]] && [[ "$H3WF" == "1" ]]; then # H78M19EK:insertd new H variable test for whether using Sony50"1080iTV or ...
  #   ... 32"Viotek display as 3-Wide-Flag 4Aku; # Below used to just have "-e ~/bin/d8ok" before appending the -d parameter so needing the -x instead.
  # I71M8wxh:Maybe Ubu18.04 upd8d GnomTerm or GnomTwekTool gone dropd scaling so old d8ok32->36 && main8->7.9 nEdz x664,4504,2584 chopd 4 4mor char widthz;
  # q 1306/34=38.41176470588235294117647058823529411765
  # 1306-1292=14 mAB scrlbR widt; 4x38=152; 512,4352,2432; mIt nEd2scAl 1306 wIdr2 1458; try even shorter 1268, wi each of 34 char widz 38px or 33 wo padspc?
  # q 1458/34=42.882352941176470; 4x42=166; 496,4336,2416; othr was +306+0 up2 466;
  alias gtI='gt --geometry=+784-0     --hide-menubar --window-with-profile=d8ok                               --role=d8ok                                   &;
        gtss;wmc -r :ACTIVE: -T d8ok                ;wmc -r :ACTIVE: -b add,skip_pager,sticky;
             wmc -r :ACTIVE: -e  10,824,1006,1108,74;wmc -r :ACTIVE: -b add,skip_taskbar,below;
             gt --geometry=-0-0       --hide-menubar --window-with-profile=d8ok                               --role=d8ok                                   &;
        gtss;wmc -r :ACTIVE: -T d8ok                ;wmc -r :ACTIVE: -b add,skip_pager,sticky;
             wmc -r :ACTIVE: -e 10,4504,1006,1268,74;wmc -r :ACTIVE: -b add,skip_taskbar,below;
             gt --geometry=-0-0       --hide-menubar --window-with-profile=d8fd                               --role=d8fd                                   &;
        gtss;wmc -r :ACTIVE: -T d8fd                ;wmc -r :ACTIVE: -b add,skip_pager,sticky;
             wmc -r :ACTIVE: -e 10,2416,1006,1458,74;wmc -r :ACTIVE: -b add,skip_taskbar,below;
             gt --geometry=+466+0     --show-menubar --window-with-profile=PipsOthrGnomTerm-TestFont-CCIHPS8  --role=othr                                   &;
        gtss;wmc -r :ACTIVE: -T othr                ;
             gt --geometry=-1920+0    --show-menubar --window-with-profile=PipsOthrGnomTerm-TestFont-CCIHPS8  --role=sys                                    &;
        gtss;wmc -r :ACTIVE: -T sys                 ;
             gt --geometry=+0-0       --show-menubar --window-with-profile=PipsCkm8GnomTerm-NiceFont-DC9LDaPt --role=2du                                    &;
        gtss;wmc -r :ACTIVE: -T 2du                '; # might want to experiment with 5-centered or 10-static gravity to see if they're any better than S && SE
  alias gtm='gt --geometry=+0+0       --show-menubar --window-with-profile=PipsTestGnomTerm-DiffFont-D1NBxCf  --role=test                                   &;
        gtss;wmc -r :ACTIVE: -T test                ;
             gt --geometry=-1920+0    --show-menubar --window-with-profile=PipsOthrGnomTerm-TestFont-CCIHPS8  --role=Othr                                   &;
        gtss;wmc -r :ACTIVE: -T Othr                ;
             gt --geometry=-3840+0    --show-menubar --window-with-profile=PipsOthrGnomTerm-TestFont-CCIHPS8  --role=muz    --working-directory=~/muz/U2b   &;
        gtss;wmc -r :ACTIVE: -T muz                 ;
             gt --geometry=+0-0       --show-menubar --window-with-profile=PipsCkm8GnomTerm-NiceFont-DC9LDaPt --role=mvz    --working-directory=~/mvz/U2b   &;
        gtss;wmc -r :ACTIVE: -T mvz                '; # Aku gti below fully loadz GTz in all 8 ViewPortz
  alias gti='gtI;gtss;chv1;gtss;gtm;gtss;chv2;gtss;gt5;gtss;chv4;gtss;gt5;gtss;chv5;gtss;gt5;gtss;chv6;gtss;gt5;gtss;chv7;gtss;gt5;gtss;chv3;gtss;gt5;chv0';
 else # back to older Aku GnomTerm aliases for just 2 24-inch Asus displays, before adding SonyTV or new curved as 3rd display
  alias gtI='gt --geometry=-1882-0    --hide-menubar --window-with-profile=d8ok                               --role=d8ok                                   &;
        gtss;wmc -r :ACTIVE: -T d8ok                ;wmc -r :ACTIVE: -b add,skip_pager,sticky;
             wmc -r :ACTIVE: -e  10,664,1006,1306,74;wmc -r :ACTIVE: -b add,skip_taskbar,below;
             gt --geometry=-0-0       --hide-menubar --window-with-profile=d8fd                               --role=d8fd                                   &;
        gtss;wmc -r :ACTIVE: -T d8ok-fd             ;wmc -r :ACTIVE: -b add,skip_pager,sticky;
             wmc -r :ACTIVE: -e 10,2584,1006,1306,74;wmc -r :ACTIVE: -b add,skip_taskbar,below;
             gt --geometry=-1920+0    --show-menubar --window-with-profile=PipsOthrGnomTerm-TestFont-CCIHPS8  --role=othr                                   &;
        gtss;wmc -r :ACTIVE: -T othr                ;
             gt --geometry=-0+0       --show-menubar --window-with-profile=PipsOthrGnomTerm-TestFont-CCIHPS8  --role=sys                                    &;
        gtss;wmc -r :ACTIVE: -T sys                 ;
             gt --geometry=+0-0       --show-menubar --window-with-profile=PipsCkm8GnomTerm-NiceFont-DC9LDaPt --role=2du                                    &;
        gtss;wmc -r :ACTIVE: -T 2du                '; # might want to experiment with 5-centered or 10-static gravity to see if they're any better than S && SE
  alias gtm='gt --geometry=+0+0       --show-menubar --window-with-profile=PipsTestGnomTerm-DiffFont-D1NBxCf  --role=test                                   &;
        gtss;wmc -r :ACTIVE: -T test                ;
             gt --geometry=-0+0       --show-menubar --window-with-profile=PipsOthrGnomTerm-TestFont-CCIHPS8  --role=Othr                                   &;
        gtss;wmc -r :ACTIVE: -T Othr                ;
             gt --geometry=-1920+0    --show-menubar --window-with-profile=PipsOthrGnomTerm-TestFont-CCIHPS8  --role=muz    --working-directory=~/muz/U2b   &;
        gtss;wmc -r :ACTIVE: -T muz                 ;
             gt --geometry=+0-0       --show-menubar --window-with-profile=PipsCkm8GnomTerm-NiceFont-DC9LDaPt --role=mvz    --working-directory=~/mvz/U2b   &;
        gtss;wmc -r :ACTIVE: -T mvz                ';
  alias gti='gtI;gtss;chv1;gtss;gtm;gtss;chv2;gtss;gt4;gtss;chv4;gtss;gt4;gtss;chv5;gtss;gt4;gtss;chv6;gtss;gt4;gtss;chv0'; # Aku loadz GTz in left 6 ViewPortz
 fi
else # following settings will hopefully work well for single-screen Ryu, Ken, && Chun (Taki's hard drive failz && she runz slow && hot, she's pretty dead)
  if     [[ "${(L)HHst}" ==  ken*   ]]; then # should be almost the same as Aku's left screen, but mAB 10-static like Chun will also position best?
    alias gtI='gt --geometry=-0-0     --hide-menubar --window-with-profile=d8ok                               --role=d8ok                                   &;
        gtss;wmc -r :ACTIVE: -T d8ok                ;wmc -r :ACTIVE: -b add,skip_pager,sticky;
             wmc -r :ACTIVE: -e  10,664,1006,1306,74;wmc -r :ACTIVE: -b add,skip_taskbar,below;
             gt --geometry=-0+0       --show-menubar --window-with-profile=PipsOthrGnomTerm-TestFont-CCIHPS8  --role=othr                                   &;
        gtss;wmc -r :ACTIVE: -T othr                ;
             gt --geometry=+0-0       --show-menubar --window-with-profile=PipsCkm8GnomTerm-NiceFont-DC9LDaPt --role=2du                                    &;
        gtss;wmc -r :ACTIVE: -T 2du                ';
  elif   [[ "${(L)HHst}" ==  ryu*   ]]; then # Ryu should just resize to Aku's d8ok y-offset + 120    (for display pixel heightz 1200 - 1080)
    alias gtI='gt --geometry=-0-0     --hide-menubar --window-with-profile=d8ok                               --role=d8ok                                   &;
        gtss;wmc -r :ACTIVE: -T d8ok                ;wmc -r :ACTIVE: -b add,skip_pager,sticky;
             wmc -r :ACTIVE: -e  10,664,1126,1306,74;wmc -r :ACTIVE: -b add,skip_taskbar,below;
             gt --geometry=-0+0       --show-menubar --window-with-profile=PipsOthrGnomTerm-TestFont-CCIHPS8  --role=othr                                   &;
        gtss;wmc -r :ACTIVE: -T othr                ;
             gt --geometry=+0-0       --show-menubar --window-with-profile=PipsCkm8GnomTerm-NiceFont-DC9LDaPt --role=2du                                    &;
        gtss;wmc -r :ACTIVE: -T 2du                ';
  elif   [[ "${(L)HHst}" ==  chun*  ]]; then # d8ok resize geometry to fit Chun best, starting 421 602 886 198, each row is 49 pixlz high so less 147 for 3
    alias gtI='gt --geometry=-0-0     --hide-menubar --window-with-profile=d8ok                               --role=d8ok                                   &;
   gtss;gtss;wmc -r :ACTIVE: -T d8ok                ;wmc -r :ACTIVE: -b add,skip_pager,sticky;
             wmc -r :ACTIVE: -e    10,420,749,886,51;wmc -r :ACTIVE: -b add,skip_taskbar,below;
             gt --geometry=-0+0       --show-menubar --window-with-profile=PipsOthrGnomTerm-TestFont-CCIHPS8  --role=othr                                   &;
        gtss;wmc -r :ACTIVE: -T othr                ;
             gt --geometry=+0-0       --show-menubar --window-with-profile=PipsCkm8GnomTerm-NiceFont-DC9LDaPt --role=2du                                    &;
        gtss;wmc -r :ACTIVE: -T 2du                ';
  fi
  alias gtm='gt --geometry=+0+0       --show-menubar --window-with-profile=PipsTestGnomTerm-DiffFont-D1NBxCf  --role=test                                   &;
        gtss;wmc -r :ACTIVE: -T test                ;
             gt --geometry=-0+0       --show-menubar --window-with-profile=PipsOthrGnomTerm-TestFont-CCIHPS8  --role=muz    --working-directory=~/muz/U2b   &;
        gtss;wmc -r :ACTIVE: -T muz                 ;
             gt --geometry=+0-0       --show-menubar --window-with-profile=PipsCkm8GnomTerm-NiceFont-DC9LDaPt --role=mvz    --working-directory=~/mvz/U2b   &;
        gtss;wmc -r :ACTIVE: -T mvz                ';
  alias gti='gtI;gtss;chv1;gtss;gtm;gtss;chv2;gtss;gt3;gtss;chv3;gtss;gt3;gtss;chv0'; fi; #xport Hm='muz';export HM='mvz'; # can I even use these 4 anythingd?;
alias cti='ct   ti'; # ChangeTitle 2 Init as quick simple similar command B4 gti or ti to call right after booting up && starting my first default GnomTerm;
alias cTI='ct   TI';
alias  ti='cti;gti'; # maybe l8r mk a custom TermInit alias here wich spawnz more than just GTz but mAB some alpha'd Sakuraz|LilyTermz|QTerminalz etc. too;
#lias  ti='cTI; TI'; # ch title && call my new TI perl script instead of gti alias;
#lias gti='gtI;sleep 3;wmctrl -o 1280,0;sleep 3;gt3;sleep 3;wmctrl -o 2560,0;sleep 3;gt3;sleep 3;wmctrl -o 3840,0;sleep 3;gt3;sleep 3;wmctrl -o 0,0';
# abov are new Ubu14.10 GT aliasz tstd on Chun; mA nEd geom chgz 4 Akuz 2 monitorz; tryd 2 ch d8ok profile 2 autorun d8ok nstd of zsh but can't figure out yet;
#   mIt also want 2 try 2 figure out how 2 autom8 dangling d8ok over edge && Dflt visible on all wrkspcz && hide wndw bordr tItlbar;
# according 2 HTTP://AskUbuntu.Com/questions/41093/is-there-a-command-to-go-a-specific-workspace I can send Ckm8+Othr GTz 2> wrkspcz wi wmctrl or xdotool:
#   Chun:`wmctrl -d`:0  * DG:  5120x800   VP: 0,0  WA: 73,24 1207x776   N/A; thN wmctrl -o 0,0 or 1280,0 or 2560,0 or 3840,0 for 4Compiz ViewPorts in1 DsktpGrp
#    Aku:`wmctrl -d`:0  * DG: 15360x2160  VP: 0,0  WA:  0,24 3840x1056  N/A; thN_1920, 3840, _5760, 7680, _9600, 11520, _13440, 15360; rEspAcd2alIn both dimz
#     add`wmctrl -b add,sticky,below` after -r IdNtify d8ok window or just :ACTIVE: after spawnd;d8ok wmctrl -e -1,664,1004 [geom +664(-0|+1004)] &&-e +2586-0;
# M8HMHpix:Wanting to start updating above gti stuff to use an entirely new system that just reads connected monitors dimensions && layout from xrg then cfgz
#   d8okz with wmc mapping to displays easily then throws GTz in all vcz around the d8okz for any known layout. Will probably start just re-aliasing ti 1st;
# Wish I could parse xrg in perl. Maybe can?
At() { # ec "At params without residue: 11,12,17,18,20,22,23,28,31,32,40,41,49 \n mixr bar Gen: At 17, 44x3+0+950 Eiji: 105x3;"; # no border, always top;
  # aterm just wraps rxvt-unicode-256color   # -fn "-ttf-DejaVu Sans-*-*-*-*-18-*-*-*-*-*-*-*" -fb "-ttf-..."   # had old WindowMaker wharf ATerm buttons
  if   [[ "$1" ==   "" ]]; then env TERM_PROGRAM=at aterm -geometry 160x50 -color3 "#FFAA33" -color13 "#9933BB" -bg "#03071B" -fg "#88F8B0" --cursorColor "#30D0F0" --cursorColor2 "#204080" -pr "#D8D870" -vb -fn "-*-*-*-*-*-*-18-*-*-*-*-*-*-*" -fb "-*-*-*-*-*-*-20-*-*-*-*-*-*-*" -tr -sh 31 -fade 63 -sb -sr -sl 65536 &;
  elif [[ "$1" == "80" ]]; then env TERM_PROGRAM=at aterm -geometry  80x25 -color3 "#FFAA33" -color13 "#9933BB" -bg "#03071B" -fg "#88F8B0" --cursorColor "#30D0F0" --cursorColor2 "#204080" -pr "#D8D870" -vb -fn "-*-*-*-*-*-*-36-*-*-*-*-*-*-*" -fb "-*-*-*-*-*-*-40-*-*-*-*-*-*-*" -tr -sh 31 -fade 63 -sb -sr -sl 65536 &;
  else                          env TERM_PROGRAM=at aterm -geometry 160x50 -color3 "#FFAA33" -color13 "#9933BB" -bg "#03071B" -fg "#88F8B0" --cursorColor "#30D0F0" --cursorColor2 "#204080" -pr "#D8D870" -vb -fn "-*-*-*-*-*-*-$1-*-*-*-*-*-*-*" -fb "-*-*-*-*-*-*-$1-*-*-*-*-*-*-*" -tr -sh 31 -fade 63 -sb -sr -sl 65536 >/dev/null 2>&1 &; fi}
alias tStl='tStc R;ec;tStc R d;ec;tStc R a;ec;tStc R l'; # loop all 4 colr layrz,leaving Lite last,calling just Reverse to pretend lower L indic8s bkgrounds
alias tStL='tStc F;ec;tStc F D;ec;tStc F A;ec;tStc F L'; # loop all 4 colr layrz,leaving Lite last,calling just Fraktur wich rarely duz anythng,Xcept in 8trm
tStc() { # tSt 8pal8 colrz (this is a very slow precursor to ~/bin/tstc since many sub-processes need to load zsh,perl,&&a8 d8a just to manipUl8 eScApe valUez)
  if       [[ "$#" -gt 0 ]]; then # print out some help text for just h or -h or --help as first parameter && then return
    if     [[ "$1" == *h ]] || [[ "${(L)1}" == *help ]]; then # this function was originally named 'tS8()' but has been renamed to reflect similarity to `tstc`
      echo 'tStc crE8d by PipStuart <Pip@CPAN.Org> to tSt the display of 8pal8 (64-of-256) colors && terminal attributes;'
      echo " h - print out this Help text && then return; This version is a zshell function meant to be similar to tstc."
      #cho "     Any number of the parameter options below can be combined together (without spaces) as a single string.";  # not yet!
      echo "     Only one parameter is checked for so far, but l8r combin8ions may behave more like tstc (using regexes)."
      echo " s -             Squeeze each of the 4 2pal8s onto a single line (if terminal has at least 160 columns)"
      echo " z -             check roundtripZ of each 8pal8 color code going through S && c to be back to the same (slo)"
      echo " b - call S '^'  reset Bold making all fonts normal 4 colrs gr8rthan 15 (dfalt is Bold for all gr8rthan 7)"
      echo " A - call S ':A' set fAint SelectGraphicRendition attribute on all colrs printed after the 1st 2pal8"
      echo " I - call S ':I' set Italics             (most parameter flags can be combined like 'IFDOCURL' top8)"
      echo " U - call S ':U' set Underline           (see 'tsgr' for my typical mapping of all these attributes)"
      echo " L - call S ':L' set bLink               (slow,lessthan 150/min) # can give second param 'DAL' layer"
      echo " K - call S ':K' set blinK               (fast,morethan 150/min) ever supported?"
      echo " R - call S ':R' set Reverse             " # 2du:xtnd main gener8ion thru FDAL;" # or mAB optn 2 invrt 2 bdal nstd
      echo " V - call S ':V' set inVisible"  ; # lookz like var form uses fnmatch where '*' is like a glob, not prev mod && `man regex` DscrIbz the =~ 4m@
      echo " C - call S ':C' set Crossed-out"; # pure bash: HTTP://StackOverFlow.Com/questions/13043344/search-and-replace-in-bash-using-regular-expressions
      echo " F - call S ':F' set Fraktur  font       (hardly ever supported)"; #hello=ho02123ware38384you443d34o3434ingtod38384day
      echo " D - call S ':D' set underline Double    (!Gnome-Term supported)"; #re='(.*)[0-9]+(.*)'; # zsh has just $match versus $BASH_REMATCH
      echo " M - call S ':M' set fraMed              (hardly ever supported)"; #while [[ $hello =~ $re ]]; do hello=${BASH_REMATCH[1]}${BASH_REMATCH[2]}; done
      echo " E - call S ':E' set Encircled           (hardly ever supported)"; #echo "$hello"; # yields just letters
      echo " O - call S ':O' set Overlined           (!Gnome-Term supported)"; #   or        | perl -pe  's/[a-z]/X/gi and s/[0-9]/N/g' for even more familiar
      echo " H - call S ':H' set ideogram line rigHt (hardly ever supported)"; # echo $MyVar | sed -e 's/[a-zA-Z]/X/g' -e 's/[0-9]/N/g' should be even easier
      echo " T - call S ':T' set ideogram line lefT  (hardly ever supported)"; # might be able to loop all paramz && construct ordrd flagz from pasd SGR codz
      echo " G - call S ':G' set ideoGram stressmark (hardly ever supported)";return 0;fi;fi # ${variable//pattern/replacement} basic shL regX from StakOvrflO
  for B64N in k r O g c b P w K R Y G C B M W   e h o d t s p i E H y D T S m I   '.' f u a z n l j '_' F U A Z N L J   0 2 4 6 8 x v q 1 3 5 7 9 X V Q;do
      LAYR="F"; # setup some default && optional equals  =altern8 8pal8 64 Layer from Foreground through Dark, Avrg, Lite
    if     [[ "$#"        -ge   2 ]] && [[ "${(L)2}" == *d  ]]; then LAYR="D"; # could just give F first param && also OH layers as second
    elif   [[ "$#"        -ge   2 ]] && [[ "${(L)2}" == *a  ]]; then LAYR="A";
    elif   [[ "$#"        -ge   2 ]] && [[ "${(L)2}" == *l  ]]; then LAYR="L";
    elif   [[ "$#"        -ge   2 ]] && [[ "${(L)2}" == *o  ]]; then LAYR="O"; # trying Orig && High layerz too
    elif   [[ "$#"        -ge   2 ]] && [[ "${(L)2}" == *h  ]]; then LAYR="H"; fi
                                           S "$LAYR:$B64N"    ; # inject new layer codes which will collide with available renditions Doublundrlin,fAint,bLink
    if     [[ "$#"        -ne   0 ]] && [[ "${(L)1}" == *s  ]]; then # check for Squeeze rowz parameter to try to fit each 16 2pal8 on just 4 linez instead
                           echo     -n       "$B64N=";      # parameter testz BlO wrapd in starz so they can then all be combined together within 1st arg
    else                   echo     -n       "$LAYR:"; fi   # when in Short mode, skip layer colon && just try to show Base64 Name of single color abbreV8ionz
    if     [[ "$COLUMNS"  -ge  96 ]]; then                  # if terminal should be wide enough to not wrap the linez, then show duplic8 code 4 comparison
      if   [[ "$#"        -eq   0 ]] || [[ "${(L)1}" != *s  ]]; then # check for Squeeze rowz parameter to try to fit each 16 2pal8 on just 4 linez instead
        if [[ "$#"        -eq   0 ]] || [[ "${(L)1}" != *z  ]]; then # normally echo initial duplic8 fast unless -z flag given to check roundtripZ slowly
                           echo     -n       "$B64N="; #*z* really need to learn shell regexes instead of trying double-glob, or send through g grep or sed?
        else                               S "$LAYR:$B64N"|c  ; echo -n '=';fi;fi;fi # didn't nEd2 ec -n wi bktix around S abov or BlO4 Bold&&fAint&&etc pRamz
                           printf "%-8s"  `S  $LAYR:$B64N |sS d`; # just substitute out && show intrnl Digitz && semicolonz from current colr's eScape code
    if     [[ "$#"        -gt   0 ]]; then # starting non-1st 8 row on next loop iter8ion && a parameter was given
      if   [[ "${(L)B64N}" ==  w  ]] || [[ "${(L)B64N}" == i ]] || [[ "${(L)B64N}" == j ]] || [[ $B64N == q ]]; then
        if [[ "${(L)1}"    =~  b  ]]; then S '^'     ;fi       # reset Bold making all fontz normal 4 colrz gr8rthan 15 (dfalt is Bold for all gr8rthan 7)
        if [[     "$1"     =~  A  ]]; then S ':A'    ;fi       # set fAint SelectGraphicRendition attribute on all colrz printed after the 1st 2pal8
        if [[     "$1"     =~  I  ]]; then S ':I'    ;fi       # set Italics                   (&& accept upper or lowercased parameterz for any of these)
        if [[     "$1"     =~  U  ]]; then S ':U'    ;fi       # set Underline                 (see `tsgr` for my typical mapping of all these attributez)
        if [[     "$1"     =~  L  ]]; then S ':L'    ;fi       # set bLink                (slow,lessthan 150/min)
        if [[     "$1"     =~  K  ]]; then S ':K'    ;fi       # set blinK                (fast,morethan 150/min)
        if [[     "$1"     =~  R  ]]; then S ':R'    ;fi       # set Reverse
        if [[     "$1"     =~  V  ]]; then S ':V'    ;fi       # set inVisible            # would be nicer to regex on these to more easily allow combind flagz
        if [[     "$1"     =~  C  ]]; then S ':C'    ;fi       # set Crossed-out
        if [[     "$1"     =~  F  ]]; then S ':F'    ;fi       # set Fraktur font         (hardly ever supported)
        if [[     "$1"     =~  D  ]]; then S ':D'    ;fi       # set underline Double     (hardly ever supported)
        if [[     "$1"     =~  M  ]]; then S ':M'    ;fi       # set fraMed               (hardly ever supported)
        if [[     "$1"     =~  E  ]]; then S ':E'    ;fi       # set Encircled            (hardly ever supported)
        if [[     "$1"     =~  O  ]]; then S ':O'    ;fi       # set Overlined            (hardly ever supported)
        if [[     "$1"     =~  H  ]]; then S ':H'    ;fi       # set ideogram line rigHt  (hardly ever supported)  (this just uprcase2provide help at top)
        if [[     "$1"     =~  T  ]]; then S ':T'    ;fi       # set ideogram line lefT   (hardly ever supported)
        if [[     "$1"     =~  G  ]]; then S ':G'    ;fi;fi;fi # set ideoGram stress mark (hardly ever supported)
    if     [[ "$#" -gt 0 ]] && [[ "${(L)1}" == *s  ]] && [[ "$COLUMNS" -ge 160 ]]; then # check AgN for Squeezed rowz parameter to only newline aftr each 2pal8
      if   [[      $B64N   ==  W  ]] || [[      $B64N   == I ]] || [[      $B64N   == J ]] || [[ $B64N == Q ]]; then echo;fi
    elif   [[ "${(L)B64N}" ==  w  ]] || [[ "${(L)B64N}" == i ]] || [[ "${(L)B64N}" == j ]] || [[ $B64N == q ]]; then echo
    elif   [[ "$COLUMNS"  -ge 110 ]]; then                       # maybe above testz could be replaced with a regex like =~ /^[wij]$/i && just q still sepR8?
      if   [[      $B64N   !=  Q  ]]; then echo -n '  ';fi       # only dblspace them out if term is wide enough
    elif   [[      $B64N   ==  Q  ]]; then echo        ;fi;done} # && finish with newline if term is narrow (although wrapping at likely 80 should look same)
  # 2du:contMpl8 adng au, agr, && ee ene around en; # O1TLFEWU:`wh fU few lS less sO so some more mo mO most lots many tons huge masv` 2 C pAgrz (mAB wi 2z)?;
wh8()   {  LP_F='0'; # same as wh64  BlO but wi 8rows flipd2 8columns,othrwIz very similR (mAwant2add pRamz2du mor than just disabl colr,sinc sS duzfIn)
  # 2du:contMpl8 adng au, agr, && ee ene around en;  ## note that execution is really rather slow for all the sub-shells, taking around 40-seconds to run;
  if       [[ "$#" -gt   0 && "${(L)1}" =~  h  ]]; then echo -n " wh8 - show WHich primary single b64 && other valued commands by:$Auth Vers:$Vers d8VS:$d8VS;
  h  - print out this basic Help text message then return; Any parameter other than h right now just strips colors && SGR attributes out;";return 0;fi
  for B64N in 0 8 G O W e m u   1 9 H P X f n v   2 A I Q Y g o w   3 B J R Z h p x   4 C K S a i q y   5 D L T b j r z   6 E M U c k s '.'   7 F N V d l t '_'   mk sz pu po pD ka pe  pa pla plb pab  drkh gg dv ac acs apts  ag auu aar ai ic  s8 d2u u2d del copy move attrib  s8n grp asci utf8 u8 CC CCC cls  eg zg hX k9 pp lS mo md rd  dm ct chm cho chg chr chs chf cht  mnt umnt bk c8 zc d8 fp  fixfont g8 gaa gcm gac  gacm gpom caln l8 sl calq calQ cln  cl comma dif loc8 dic zp ud  updb up updt uptm ec en  uni cncl tl tp wd pw pn pb msg  ren wh lsm lsc lsp lsu xical shlc  srchl shlp shl sho S8  p47 a7 rr tt tf gtt viii  lc chv0  uc chv7 ss wmc resp ctor scrn sx gt xt st uxtrm uxt lxt lxtrm tmn8r  sakra sak xf4tm rox Etrm x4t roxtm Et un ev pl xbk dirp  xb xbsf kp xdt s2 s28 sb sd si au agr  .. ......... mkjg mtst rmSS  ... ........ mkjG mkck SS SN  .... ....... mkj8 mkcl SSR  ..... ...... mkj4 mki mi SH  pabd m80 SR  pep  L80 r80 S80 q80  T80 X80 p80 R80 u80 g80 i80 l80  s80 t80 U80 x80  Hlt GL shll  HU;do
 # crmm='chromium-browser  ';alias crom=' google-chrome         ';alias epip='epiphany';alias aror='arora';alias dilo='dillo';alias lnx2='links2';
 # brav='brave';brvb='brave';alias brv='brave';alias bb='brvb';alias irc='irssi'; # prEferprv8bb&&ffmornow
 # 2lo=' perl -e "rename(\$_,lc) for @ARGV"'; # orig fIlnAm lOwrcAsng 1-lInr was ~/bin/tolo thN as 2lo but mAB zsh func can't stRt wi '2'? Alias workz tho!
 # glxg='glxgears -info -geometry 1920x1056+0+0'; # had to agi libssl-dev to configure opusfile, then below should be good to compress speech for Dad
    if     [[ "$#" -eq   0                                 ]]; then echo -n `S $B64N`; # also below tries to strip out all contained newlines
      if   [[ $B64N =~ ^([bk]|pp|rr|ss|CC|[ag][ag]|tt|\\.) ]]; then echo -n `S  w   `; # 4many dbld nAmz,try wHITE unlS 2nd char is w so thN try blacK nstd
        if [[ $B64N =~ ^([a-zA-Z]w)                        ]]; then echo -n `S  K   `;fi;fi;fi; BNWH=`which $B64N`  ;BNWH=${BNWH:s/      e    / e };
    if     [[ $LP_F =~ ^[0]$        ]]; then BNWH="$BNWH ";BNWH=${BNWH:s/ Et /    Et   };BNWH=${BNWH:s/tiny /tiny}  ;BNWH=${BNWH:s/ whereis /whereis };
      if   [[ $B64N =~ ^[_]$        ]]; then LP_F='1';fi  ;BNWH=${BNWH:s/h       /   h    };BNWH=${BNWH:s/k9      /   k9   }; #n LoopPast_undrscorFlag4 64
    fi;BNWH=${BNWH:s/ aliased to /alias2\'} ;BNWH="$BNWH'";BNWH=${BNWH:gs/      /  };BNWH=${BNWH:s/2\'apt                     /2\'apt}; # EndSpaceLoopCount
    BNWH=${BNWH:s/cd ..\/..\/.. /cd ..\/..\/..}; # try to fix .... 'cd ../../.. ' from having unwanted space on the end so 2 dots to 5 left align 9 to 6 right
    BNWH=${BNWH:s/\'lsd8 \'/\'   lsd8 \'}   ;BNWH=${BNWH:s/ls  -F \'/  ls -F \'};BNWH=${BNWH:s/\'ls      /\'ls}     ;BNWH=${BNWH:s/    q /q};BNWH=${BNWH:gs/
/}; if     [[ $LP_F =~ ^[1]$        ]]; then BNWH=${BNWH:s/     /};BNWH=${BNWH:s/              \&/\&}               ;BNWH=${BNWH:s/--geom/ --geom};
      for ESLC in 0 1 2 3; do BNWH=${BNWH:s/2\' /2\'};BNWH=${BNWH:s/ \'/\'};done;BNWH=${BNWH:s/ \'/\'}          ;BNWH=${BNWH:s/    --geom/ --geom};
      BNWH=${BNWH:gs/  uname/uname};BNWH=${BNWH:s/  uname -a    return 0  /uname -a;return 0};fi                ;BNWH=${BNWH:s/160     -r 50  /160 -r 50};
    BNWH=${BNWH:s/ shell built-in command \'/ shel biltin cmd}    ;BNWH=${BNWH:s/ not found\'/: !not found! cmd};BNWH=${BNWH:s/srchl    -i/srchl -i};
    BNWH=${BNWH:s/\'ls      /\'ls} ;BNWH=${BNWH:s/  --geometry=160x50   \&/ --geometry=160x50 \&};BNWH=${BNWH:s/    -CS   / -CS };BNWH=${BNWH:s/  -CS  / -CS };
    BNWH=${BNWH:s/uxterm     -geometry 160x50   \&/uxterm -geometry 160x50 \&}  ;BNWH=${BNWH:s/git  ad/git ad}  ;BNWH=${BNWH:s/gaa; gcm/gaa;gcm};
    if     [[ $B64N == "A"          ]]; then BNWH="A:alias2'asci    '"; elif   [[ $B64N == "b"          ]]; then BNWH='b () {bak $TTY $@}';
    elif   [[ $B64N == "R"          ]]; then BNWH="R:a2'rd ~/.eleme*'"; elif   [[ $B64N == "d"          ]]; then BNWH='d () {dic      $@}';
    elif   [[ $B64N == "a"          ]]; then BNWH="a:als2' asciiview'"; elif   [[ $B64N == "m"          ]]; then BNWH='m () {man      $@}';
    elif   [[ $B64N == "g"          ]]; then BNWH='g ()*{grep     $@}'; # asterisks signify that actually more is going on under the hood for these funcz
    elif   [[ $B64N == "s"          ]]; then BNWH='s ()*{src-hili $@}';
    elif   [[ $B64N == "u"          ]]; then BNWH='u () {upd8     $@}'; elif   [[ $B64N == "ct"         ]]; then BNWH='ct() {chti     $@}';
    elif   [[ $B64N == "v"          ]]; then BNWH='v () {  v8     $@}'; #lif   [[ $B64N == "ss"         ]]; then BNWH='ss()*{ssh      $@}';
    elif   [[ $B64N == "sx"         ]]; then BNWH='sx()*{scrn  -x $@}'; elif   [[ $B64N == "wh"         ]]; then BNWH='wh() {which    $@}';
    elif   [[ $B64N == "un"         ]]; then BNWH='un()*{uname -a $@}'; elif   [[ $B64N == "utf8"       ]]; then BNWH='utf8 () {UTF8  $@}';
    elif   [[ $B64N == "gg"         ]]; then BNWH='gg() {perl ~/dvl/d8/bin/gg $@}';
    elif   [[ $B64N == "attrib"     ]]; then BNWH="attrib:alias2'en \"4Get MS-DOS. Use chmod!\"'"; fi;
    # below left-to-right order of or 80-column limits then and with not wide then back to or for main dflt 160-colm limits
    if     [[ $B64N =~ ^([3LSXqwc]|[cdfg]8|dic|mutt)$ ]]; then BNWH=${BNWH:gs/ /};BNWH="$B64N= ${BNWH:gs/\'/}";fi # subst to just chop end space?
    if     [[ $LP_F =~ ^[0]$        ]]; then printf "%-18s" $BNWH; else echo -n $BNWH;fi # mAB try2!pad up past top64
    echo -n `S W`';'; # tried2add /bin/ matchz wi $ end but syntax && escaping must be somewhat unconventional, probably nEd2rEd&&stuD mor PCRE dox
    if     [[ $B64N =~ ^(pb|zg|wd|lsm|lsu|srchl|shl|resp|ctor|tt|lc|uc|wmc|pp|c8|fixfont|gaa|up|uptm|rr|sx|dirp|sb)$      ]]                          ||
           [[ $B64N =~ ^[OPQRSTUV]$ ]] || [[ $B64N =~ ^(pu|ka|dv|ai|asci|CC|drkh|auu|del|mo|chg|ct|caln|dif|loc8|pa|pla)$ ]]                          &&
           [[ "$COLUMNS" -lt 160    ]] || [[ $B64N =~ ^(pe|apts|ic|attrib|pab|cls|rd|cht|fp|gac|cln|ud|uni|ren|shlc|viii|[Sv]8|rmSS|SN|SSR|SH|SR)$ ]] ||
           [[ $B64N =~ ^[uvwxyz._]$ ]] || [[ $B64N =~ ^(gt|xt|st|lxt|rox|sak|tmn8r|Etrm|ev|kp|agr|xbsf|resp|q80|l80|x80|shll|HU)$ ]]; then echo $z;fi;done}
wh64() { # see which most basic 64 single-character commands are mapped to what (majority being aliases, then just a few built-in or not yet found commands)
  for B64N in 0 1 2 3 4 5 6 7  8 9 A B C D E F  G H I J K L M N  O P Q R S T U V  W X Y Z a b c d  e f g h i j k l  m n o p q r s t  u v w x y z '.' '_'; do
    if     [[ "$#" -eq   0          ]]; then echo -n `S $B64N`; # BlO set to dark wHITE for invisibly dark BLACk b64 number to color (leave bLUE 4now)
      if   [[ $B64N =~ ^[k]$        ]]; then echo -n `S  w   `;fi;
    elif   [[ $B64N =~ ^[56fghijk]$ ]]; then echo -n `S $B64N`; # attempt to take any parameter to indic8 that only the top8 should be brightly colored
    else                                     echo -n $SKpb    ;   fi   ;BNWH=`which $B64N`" '"; # 4 b64,on sepR8lInzUsed2:export A=`S A`;echo -n "$A A:";wh A;
    BNWH=${BNWH:s/ aliased to /alias2\'} ;BNWH=${BNWH:s/      e   / e} ;BNWH=${BNWH:s/ whereis/whereis}; # cud :gs// 4glbl or ${BNWH//litrl/subst} 4nonwIldcRd
    BNWH=${BNWH:s/\'lsd8 \'/\' lsd8   \'};BNWH=${BNWH:s/tiny \'/tiny\'};BNWH=${BNWH:s/ls  -F \'/  ls -F \'};BNWH=${BNWH:s/\'Et \'/\'   Et   \'}; # alIn quOtz
    BNWH=${BNWH:s/ shell built-in command \'/shel biltin cmd}          ;BNWH=${BNWH:s/ not found \'/ cmd not found}; # mA want2add Xtra colrz4thEs?
    if     [[ $B64N == "A"          ]]; then BNWH="A:alias2'asci    '"; elif   [[ $B64N == "b"          ]]; then BNWH='b () {bak $TTY $@}';
    elif   [[ $B64N == "R"          ]]; then BNWH="R:a2'rd ~/.eleme*'"; elif   [[ $B64N == "d"          ]]; then BNWH='d () {dic      $@}';
    elif   [[ $B64N == "a"          ]]; then BNWH="a:als2' asciiview'"; elif   [[ $B64N == "m"          ]]; then BNWH='m () {man      $@}';
    elif   [[ $B64N == "g"          ]]; then BNWH='g ()*{grep     $@}'; # asterisk means there's a lot more to it than just this little sample string here
    elif   [[ $B64N == "s"          ]]; then BNWH='s ()*{src-hili $@}';
    elif   [[ $B64N == "u"          ]]; then BNWH='u () {upd8     $@}'; elif   [[ $B64N == "v"          ]]; then BNWH='v () {  v8     $@}'; fi;
    if     [[ $B64N =~ ^[3LSXcqw_]$ ]]; then BNWH="$B64N= ${BNWH:gs/ \'/}";fi;printf "%-18s" $BNWH;echo -n `S W`';'; # biltin printf
    if     [[ $B64N =~ ^[3BJRZhpx]$ ]] && [[ "$COLUMNS" -lt 160 ]] || # addXtra nwlnz 4orig 80colm mOd,fitz 64 mapz on 16lInz in 80x18 nIcely wrapd in prmptz
           [[ $B64N =~ ^[7FNVdlt_]$ ]]; then echo;fi;done} # !sureYsomtImz`wh`rEcursvlyXpndz alias pRamz whIl biltin`which`duznot
alias wh8ch='wh64';alias srC='src;C'; # leave old original name around, wich is somewhat less descriptive of resulting output than newer name shud be;
alias                   lsrc='lrc;src'; # L5KMJ0J0:just making a quick easy new way to call both LS_COLORS re-gener8ion && re-loading into running shell;
goo() { w3m "HTTP://Google.Com/search?q=$1+$2+$3+$4+$5+$6+$7+$8"     ; } # should probably pass $@ =~ s/ /+/g; or something smarter than this
un()  {    [[ $# -lt 1 ]] && {                 uname  -a             ; return 0; }   # should eventually c8 filter all uname output to add colrz && f0ntz
                                               uname           $@    ; }
src() {    [[ $# -lt 1 ]] && {                source         ~/.zshrc; return 0; }   # reload main shell resource file, or load parameter filename of script
                                              source           $@    ; } # mA nEd 2 `src ~/.tmp/.src` nstd of MpT 2 try 2 unalias all old OveridN Usez 2 upd8
xrc() {    [[ $# -lt 1 ]] && {                  xrdb  -merge ~/.Xrc  ; return 0; }   # merge  main X.Org resource file, or load parameter filename of altern8
                                                xrdb  -merge   $@    ; } # tryd2auto-call xrc at startx in .xinit but doesn't work so calling here BlO instead
if         [[ "$DISPLAY" != ""  ]];                                    then xrc; fi; # since Ubu14.10UUX11!srcing   .xinit,just rElOd .Xrc 4evry nonconsol zsh
mcp() { if [[ $# -gt 2 ]] && [[ ! -d ${$#} ]];  then   /bin/cp $@ .  ; return 0; fi; # adds a basic many-argument form of `cp` where all parameters are remote
                                                       /bin/cp $@    ; }             #   files to be copied into the current directory
mc()  { # used to be mcd for Mk&&ChDir on $1 but just MakeChng, MkCh is nicer, && now also does MvFil $1 into && ChDir $2
  if       [[ $#        -eq  2  ]] && [[   -f "$1" ]] && [[ -d "$2" ]]; then
    if     [[           -d "$2" ]];                                     then mv $1 $2; cd $2;
    elif   [[ "$VERBOSE" ==  1  ]];                                     then echo "!*EROR*! Cannot MvFil $1 into ChDir $2!";                fi
  elif     [[ $#        -eq  1  ]] && [[ ! -f "$1" ]];                  then
    if     [[ !         -d "$1" ]];                                     then md $1;
    elif   [[ "$VERBOSE" ==  1  ]];                                     then echo "!*EROR*! Cannot MkDir $1!";                              fi
    if     [[           -d "$1" ]];                                     then           cd $1;
    elif   [[ "$VERBOSE" ==  1  ]];                                     then echo "!*EROR*! Cannot ChDir $1!";                              fi
  elif     [[ "$VERBOSE" ==  1  ]];                                     then
    echo   "!*EROR*! Invalid arguments to either Mk&&ChDir $$1 (DrNm) or Mv $$1 (FlNm) to existing Dir $$2 (DrNm) before ChDir into DrNm!"; fi}
Xv8() { if     [[  $#       -ge  1  ]]; then export Hv8f="$1"          ;    fi;} # just Xport first param as Hv8f; J5AMB555:+'" BlO OpNz fIlz wher lFt B4?
 v8() { if     [[  $#       -ge  1  ]]; then # hopefully shift off some simple single-char abbreV8ionz for my main ~/.*rc filez to lOd via thOse as shortcutz;
 # 2du:Dtect mor fIlnAm or Vim optn pRamz && sAv 2 multipl varz 2 call wi AgN, mAB mk prEv calld pRamz sAvd alsO && just '-' for -1 ndx can rEtn 2 just B4,
 #   alsO tSt if any of thEs shortcutz BlO alreD Xist as fIlnAmz 2 just OpN;
          if   [[ "$1"       == "v" ]]; then export Hv8f="$HOME/.vimrc"          ; shift;
          elif [[ "$1"       == "z" ]]; then export Hv8f="$HOME/.zshrc"          ; shift;
          elif [[ "$1"       == "l" ]]; then export Hv8f="$HOME/.lrc"            ; shift;
          elif [[ "${(L)1}"  == "h" ]]; then export Hv8f="$HOME/.Hrc"            ; shift;
          elif [[ "${(L)1}"  == "x" ]]; then export Hv8f="$HOME/.Xrc"            ; shift;
          elif [[ "$1"       == "2" ]]; then export Hv8f="$HOME/dox/2du/2.du"    ; shift;  # OMG! stupid elif [[ "$1" == "pm"]]; failz without spAc in: "]];
          elif [[ "$1"       == "k" ]]; then export Hv8f="$HOME/dox/2du/know.ls" ; shift;  # 2du:nEd2 tSt BlO2mk sure they work rIt&&glob l8r||disAbl4!SKp?;
          elif [[ "$1"       == "i" ]]; then shift;$HEdt +\'\" $@ $HOME/.config/nvim/init.*;return 0; # mAB alias as vI?;
          elif [[ "$1"      == "pm" ]]; then shift;$HEdt +\'\" $@ $HOME/dvl/?8/?8.pm;return 0; # shud get all Octology [abcdfk]8.pm PerlModulz @1nc hOpfuly;
          else                               export Hv8f="$1";shift;fi;$HEdt +\'\" $Hv8f  $@;  # try2 lOd pRam in2 %ENV 4 U8:upd8 2 autO-Use 4 tSt aftr editing
        elif   [[ "$Hv8f"    != ""  ]]; then                           $HEdt +\'\" $Hv8f; fi;} #   mAB betr2sAve $@ instead thN split on spAcez 4 multipl fIlez
 nv() { if     [[  $#       -ge  1  ]]; then # sAm az v8 abov but wi Altern8 Editor (NeoVim instead of standard Vim);
          if   [[ "$1"       == "v" ]]; then export Hv8f="$HOME/.vimrc"          ; shift;
          elif [[ "$1"       == "z" ]]; then export Hv8f="$HOME/.zshrc"          ; shift;
          elif [[ "$1"       == "l" ]]; then export Hv8f="$HOME/.lrc"            ; shift;
          elif [[ "${(L)1}"  == "h" ]]; then export Hv8f="$HOME/.Hrc"            ; shift;
          elif [[ "${(L)1}"  == "x" ]]; then export Hv8f="$HOME/.Xrc"            ; shift;
          elif [[ "$1"       == "2" ]]; then export Hv8f="$HOME/dox/2du/2.du"    ; shift;
          elif [[ "$1"       == "k" ]]; then export Hv8f="$HOME/dox/2du/know.ls" ; shift;
          elif [[ "$1"       == "i" ]]; then shift;$HAEd +\'\" $@ $HOME/.config/nvim/init.*;return 0;
          elif [[ "$1"      == "pm" ]]; then shift;$HAEd +\'\" $@ $HOME/dvl/?8/?8.pm       ;return 0;
          else                               export Hv8f="$1";shift;fi;$HAEd +\'\" $Hv8f  $@;
        elif   [[ "$Hv8f"    != ""  ]]; then                           $HAEd +\'\" $Hv8f; fi;}
mn()  { if     [[  $#       -ge  1  ]]; then export Hmpt="$1"   ;      man         $@   ;  # try2 lOd pRam in2 %ENV 4 ManPageTopic 2BrEvisitd on subCquNt callz
        elif   [[ "$Hmpt"    != ""  ]]; then                           man  $Hmpt;    fi;} # shud alsO add $Hv8l && $Hmtl 4Last(||Prev?)valUz4 !-e 'l' 2jmpbak2
m423(){ # convert m4a filez to mp3 using ffmpeg, was originally bash script in ~/bin/m4a2mp3 derived from HTTP://UbuntuForums.Org/showthread.php?t=1643093 ;
  for M4FN in $@
  do  if  [[ -f "$M4FN" ]] && [[ "$M4FN" == *.m4a ]]; then M4BN=`basename "$M4FN" .m4a`; # echo "M4FileName:$M4FN:"; echo "M4BaseName:$M4BN:";
      ffmpeg -i "$M4FN" -acodec libmp3lame -ac 2 -ab 256k -ar 44100 "$M4BN.mp3"; else echo "!*EROR*! Parameter:$M4FN not found as .m4a file!"; fi; done}
#lias sslbox=' ssLBox' ; alias ssLBox='                ssh LBox.Org'; #216.158.99.146; #old 9PNet.Com download:screwyou;
alias sstaki=' ssTaki' ; alias ssTaki='                ssh Taki' ; # SShortcuts to my main machines based on /etc/hosts entries to map names to IP addresses
alias sstakiw='ssTakiW'; alias ssTakiW='               ssh TakiW'; # might be better to unify these to ping Taki then TakiW 2DcId wich IP&&IF 2auto ssh in2
alias sschunw='ssChunW'; alias ssChunW='               ssh ChunW'; # K23LBavL:today Beppu-san kindly enabled a public_html/ dir for HTTP://Pip.BavL.Org Yay!
alias sschun=' ssChun' ; alias ssChun='                ssh Chun' ;alias ssb='ssh BavL.Org     ';alias ssbavl='ssb';alias ssBavL='ssb';alias ssg="ssh $i19.5";
alias ssryu0=' ssRyu0' ; alias ssRyu0='                ssh Ryu0' ;alias ssm='ssh MetaNotes.Com';alias ssmeta='ssm';alias ssMeta='ssm';
alias ssken0=' ssKen0' ; alias ssKen0='                ssh Ken0' ; # hopefully someday Beppu-san can grant me HTTP://MetaNotes.Com/~pip as ~/pub/ 4 HTML?
alias ssken='  ssKen'  ; alias ssKen='                 ssh Ken'  ; # I'd like to link my HTTPS://Baduk.Club profile to any good picture hosted there someday;
alias ssryu='  ssRyu'  ; alias ssRyu='                 ssh Ryu'  ;alias asbo='autossh -o ServerAliveInterval=30 -R 2222:localhost:22 bavl.org'; # allowRtunL;
alias ssaku='  ssAku'  ; alias ssAku='                 ssh Aku'  ;alias abvl='asbo';alias ab.o='asbo';alias asb='asbo';alias abo='asbo';alias aB='asbo';
ldh()      { DHst='Aku'; # LoadDestin8ionHost cking if AkuChunRyuKenTaki are!current host&&are on net to select ss && rsyn targetz  # BlO PingDestin8ion4Errorz
             if     [[ "${(L)HHst}" ==  aku   ]]; then echo "LoadDestin8ionHost() checking net..." ;DHst='ChunW';PD4E=`pn -c 1 -q $DHst|g error`;
               if   [[ "$PD4E"      != ""     ]]; then printf "DHst:%-5s had PD4E:%s\n" $DHst $PD4E;DHst='Chun' ;PD4E=`pn -c 1 -q $DHst|g error`; fi;
               if   [[ "$PD4E"      != ""     ]]; then printf "DHst:%-5s had PD4E:%s\n" $DHst $PD4E;DHst='Ryu'  ;PD4E=`pn -c 1 -q $DHst|g error`; fi;
               if   [[ "$PD4E"      != ""     ]]; then printf "DHst:%-5s had PD4E:%s\n" $DHst $PD4E;DHst='Ken'  ;PD4E=`pn -c 1 -q $DHst|g error`; fi;
               if   [[ "$PD4E"      != ""     ]]; then printf "DHst:%-5s had PD4E:%s\n" $DHst $PD4E;DHst='TakiW';PD4E=`pn -c 1 -q $DHst|g error`; fi;
               if   [[ "$PD4E"      != ""     ]]; then printf "DHst:%-5s had PD4E:%s\n" $DHst $PD4E;DHst='Taki' ;PD4E=`pn -c 1 -q $DHst|g error`; fi;
               if   [[ "$PD4E"      != ""     ]]; then printf "DHst:%-5s had PD4E:%s\n" $DHst $PD4E; fi; fi;export DHst; } # 2du:add colrz&&f0ntz&&logic4!Aku
ssH()       { # SShortcut where empty goes to DHst ('Aku' 4all hostz!Aku, && best host that pingz 4Aku); was just ss(); /bin/ss is already 2 show sockets;
             if     [[ "$1"         == ""     ]]; then ldh;
               if   [[ "$DHst"      != ""     ]]; then ssh $DHst; fi;
             else                                      ssh $@   ; fi; } # sudo belo may now req -E 2 prEsrv calling Environment since upd8 2`sudo zsh`did;
pmei()     { if     [[ "$HUsr"      != "root" ]]; then sudo perl -MCPAN -e        "install  '$@' ";rmSS; # pronounced:"Perl"  .  "Mei"
             else                                           perl -MCPAN -e        "install  '$@' "; fi } #   lyk"Pai"."Mei" inKillBill
pmfi()     { if     [[ "$HUsr"      != "root" ]]; then sudo perl -MCPAN -e "force('install','$@')";rmSS; # pronounced:"Perl"  .  "MFfFi"
             else                                           perl -MCPAN -e "force('install','$@')"; fi } #   lyk"Pai"."MeFsckngForcei"
pmverck()  { cpan -D $1; } # used to check with perl -MExtUtils::MakeMaker -le 'print MM->parse_version(shift)' $1; but that old method no longer seems to work
alias    pD='perldoc'; # used to have problem with most needing -t for text-only version (not pod2man | nroff -man | $PAGER) or to just pipe thru less instead
alias prsyn='rsyncmd'; # PRint RSYN; K1VLIVES:upd8d rsyncmd below to now default to Full.ls since Chun && Taki are both dead, so Core is no longer significant
rsyncmd()  {                                                echo      "rsync -avr  --files-from=dox/putr/RsynFull.ls  . DstH:"; # common rsyn cmd
                                                            echo      "  add    -n 4dryruN2tSt, add --delete usualy whN SrcH is Oni 2propag8,"; # just2Ryu now
                                                            echo      "  s/Full/Core/ btwn Oni && laptop, && might want SrcH: not just s/^/cd ;/ thN . ;";
                                                            echo      "  for   /Core/ also  --exclude='\*.swp' --exclude='\*.zip' --exclude='.bak/'etc.;";
                                                            echo   -n "rsync -avr  --delete --files-from=dox/putr/RsynFull.ls . Ryu: " \
                                                              |        xclip -si    -se   p  -l   1 ; } # -m != --prune-empty-dirs? (chains from file-ls);
rsyn()     { # rsync -n --dry-run 2tst,try --(in|ex)clude=PATRN or .='-from=FILE' also for  --files-from listng source filenmz,-t rEdundnt but -tavrn EZ2rEmMbr
             #sEF="--exclude='*.swp' --files-from=dox/putr"; # Rsyn Exclude && FilesFrom parameter (tries to start getting all of ~?)
             #sEF="                  --files-from=dox/putr"; # Rsyn Exclude && FilesFrom parameter (any $RsEF Xpansion BlO echoz good but hOsez rsync)
             #sEF="--exclude='*.swp'";                       # Rsyn Exclude && FilesFrom parameter (could!prECd&&pRTaly includ --files-from=dox/putr mAB4=*'?)
             if     [[ "${(L)HHst}" ==  aku   ]]; then # empty rsyn from Aku2top DHst 4now,$1 alt-host,l8r $2 -n && !--delete from other hosts bak2Aku
               if   [[ "$1"         == ""     ]]; then ldh; #     pu ~;rsync -avr  --delete --files-from=dox/putr/RsynFull.ls . $DHst:;po; # BlOwuz thisB4 RsEF
                 if [[ "${(L)DHst}" ==  ryu*  ]] || [[ "${(L)DHst}" ==  ken*   ]]; then # dsktpz get Full, laptopz get Core
                                                                  pu ~;rsync -avrn --delete --files-from=dox/putr/RsynFull.ls . $DHst:;po; # top4 callz were!-n
                                                            echo "pu ~;rsync -avrn --delete --files-from=dox/putr/RsynFull.ls . $DHst:;po;";
                 else                                             pu ~;rsync -avrn --delete --files-from=dox/putr/RsynCore.ls . $DHst:;po;
                                                            echo "pu ~;rsync -avrn --delete --files-from=dox/putr/RsynCore.ls . $DHst:;po;"; fi;
               elif [[ "${(L)1}"    ==  ryu*  ]] || [[ "${(L)1}"    ==  ken*   ]]; then # include full dvl,gfx,gmz,muz,mvz,.inst 2dsktpz (.arc nEdz root)
                                                                  pu ~;rsync -avrn --delete --files-from=dox/putr/RsynFull.ls . $1:   ;po;
                                                            echo "pu ~;rsync -avrn --delete --files-from=dox/putr/RsynFull.ls . $1:   ;po;";
               elif [[ "${(L)1}"    ==  chun* ]] || [[ "${(L)1}"    ==  taki*  ]]; then # should be m/.*w?$/i (mAB all should just be [arkct]* thru HHstAlESz)
                                                                  pu ~;rsync -avrn --delete --files-from=dox/putr/RsynCore.ls . $1:   ;po; # !sureif2Xclud.swp
                                                            echo "pu ~;rsync -avrn --delete --files-from=dox/putr/RsynCore.ls . $1:   ;po;";
               else                                    ldh;       pu ~;rsync -avrn --delete --files-from=dox/putr/RsynCore.ls --exclude='*.swp' . $DHst:;po;
                                                            echo "pu ~;rsync -avrn --delete --files-from=dox/putr/RsynCore.ls --exclude='*.swp' . $DHst:;po;";
               fi
             else                                      ldh;       pu ~;rsync -avrn          --files-from=dox/putr/RsynCore.ls . $DHst:;po;
                                                            echo "pu ~;rsync -avrn          --files-from=dox/putr/RsynCore.ls . $DHst:;po;";
             fi; } # if !Aku then just -n dry-run Core back to Aku to see what would upd8 for a typical reverse direction
                   # might want to add -z if someday start syncing with remote hostz && consider sharing sskeyz instead of requiring pswrdz
uz() {     [[         $#  -lt  1    ]]  && { # IA8MIJUZ:Reddit cmnt said `tar -xf $fIlnAm` autODtects cmpression algorithms && wouldn't nEd Xplicit varE8ions?;
    if     [[ "$VERBOSE"   ==  1    ]]; then echo "!*EROR*! Nothing to   UnTarB?X?Zip! $0 file: ??!";                                            fi; return 1;}
  while    [[ "$1"         !=  ""   ]]; do   # was calling tar on $@ instead of $1 or $file but only printed Success for $1 so replaced with while loop now;
                 file=$1; succ=0; shift;
    if     [[   -f          "$file" ]]  && [[   -r         "$file" ]];                                                              then
      if   [[ "${file:e}"  ==  "xz" ]]  || [[ "${file:e}" == "txz" ]];                                                              then # l8r Dtect unlzma too
        if tar xJvf "$file" 2>/dev/null ||                                  unxz   "$file" 2>/dev/null;                             then succ=1; fi
      elif [[ "${file:e}"  ==  "bz" ]]  || [[ "${file:e}" == "tbz" ]] || [[ "${file:e}" == "bz2" ]] || [[ "${file:e}" == "tbz2" ]]; then
        if tar xjvf "$file" 2>/dev/null || tar xvf  "$file" 2>/dev/null || bunzip2 "$file" 2>/dev/null;                             then succ=1; fi # was xIvf
      elif [[ "${file:e}"  == "zip" ]]  &&                                  unzip  "$file" 2>/dev/null;                             then succ=1;
      elif tar xzvf "$file" 2>/dev/null || tar xvf  "$file" 2>/dev/null || gunzip  "$file" 2>/dev/null;                             then succ=1; fi
      if   [[ "$VERBOSE"   ==   1   ]]; then
        if [   $succ                 ]; then echo "-=Note=- Successfully UnTarB?X?Zipped file: $file!";
        else                                 echo "!*EROR*! Cannot       UnTarB?X?Zip    file: $file!";                             return    2; fi; fi
    elif   [[ "$VERBOSE"   ==   1   ]]; then echo "!*EROR*! Cannot read    TarB?X?Zip    file: $file!";                             return    4; fi; done }
function xpwd () { pwd | xclip -i; xclip -o ; } # maybe function keyword is unnecessary && redundant, or different somehow?
function xcd  () { cd             `xclip -o`; } # rsyncz(nw)? below were how I primarily made regular backups of my old Gentoo drives
rsyncz() { # As root,rsync current boot drive (/dev/sda) over to secondary (/dev/sdb),mounting 2nd in /z (if not already mounted).
  if [[              "$HUsr" == "root"                                        ]]; then # if !root user,print eror&&quit
    if [[             -e                                    "/tmp/sfdisk.sdb" ]]; then # rm      potentially   old         data-file
      echo           "Attempting to rm                       /tmp/sfdisk.sdb"
                                    rm                       /tmp/sfdisk.sdb
    fi
    if [[           ! -e                                    "/tmp/sfdisk.sdb" ]]; then # mk sure potentially   old         data-file was `rm`d 1st
      echo           "Attempting to sfdisk -l /dev/sdb 2>&1 >/tmp/sfdisk.sdb"   ;      # orig STDERR redirectz 2 STDOUT && orig STDOUT goez 2 .sdb file
                                    sfdisk -l /dev/sdb 2>&1 >/tmp/sfdisk.sdb
      if [[           -r                                    "/tmp/sfdisk.sdb" ]]; then # mk sure prev `sfdisk` cmd created data-file successfully
        echo         "Attempting to grep -v LongDiskDataRgEx /tmp/sfdisk.sdb >/dev/null"
                                    grep -v "^$\|^Disk /dev/sdb: 38913 cylinders, 255 heads, 63 sectors/track$\|^Disk /dev/sdb: 182401 cylinders, 255 heads, 63 sectors/track$\|^Disk /dev/sdb: 243201 cylinders, 255 heads, 63 sectors/track$\|^Units = cylinders of 8225280 bytes, blocks of 1024 bytes, counting from 0$\|^   Device Boot Start     End   #cyls    #blocks   Id  System$\|^/dev/sdb1   \*      0+     [36][012]      [36][123]-    [25][450][796]0[304][789][+ ]  83  Linux$\|^/dev/sdb2         [36][123]    [ 4][251][495][017]    [ 4][250][159][195]   [ 3][24][018][089][043][460][018]7+  82  Linux swap / Solaris$\|^/dev/sdb3       [ 4][251][495][128] \+[^ ]\+ \+[^ ]\+ \+[^ ]\+ \+83  Linux$\|^/dev/sdb4 \+[^ ]\+ \+[^ ]\+ \+[^ ]\+ \+[^ ]\+ \+[^ ]\+ \+[EL][mi][pn][tu][yx]$" /tmp/sfdisk.sdb >/dev/null
        if [[         "$?" != "0"                                              ]]; then
          echo       "$0 has confirmed expected partitions so proceeding..."
          if [[     ! -d                              "/z/boot"               ]]; then # if !mounted /dev/sdb3 /z     ,try to mount 1st
            echo     "Attempting to mount /dev/sdb3    /z               ..."
                                    mount /dev/sdb3    /z
          fi # should confirm sdb3 is mounted at this point
          if [[     ! -d                              "/z/boot"               ]]; then
            echo     "Attempting to mkdir              /z/boot          ... (as mount point for /dev/sdb1)"
                                    mkdir              /z/boot
          fi
          if [[       -d                              "/z/boot"               ]]; then
            if [[   ! -d                              "/z/boot/grub"          ]]; then # if !mounted /dev/sdb1 /z/boot,try to mount too
              echo   "Attempting to mount /dev/sdb1    /z/boot          ..."
                                    mount /dev/sdb1    /z/boot
            fi
            if [[   ! -d                              "/z/boot/grub"          ]]; then # if  still  !grub/ there,try2sync just /dev/sda1's /boot over alon 1st
              echo   "Attempting to rsync -av --delete /boot /z         ... (sda1 /boot to sdb1 since /z/boot/grub !found)"
                                    rsync -av --delete /boot /z
            fi # might also need --exclude='/home/pip/.gvfs' sometimes, since it can barf even to root, but easier to just umount .gvfs first when necessary
            if [[   ! -d                              "/z/boot/grub"          ]]; then # if *still* !grub/ there,eror out
              echo   "!*EROR*! $0 fails to mount /z && /z/boot well enough to rsync drives!"
            else
              if [[ ! -d                              "/z/proc"               ]]; then
                echo "Attempting to mkdir              /z/proc          ..."
                                    mkdir              /z/proc
              fi
              if [[ ! -d                              "/z/sys"                ]]; then
                echo "Attempting to mkdir              /z/sys           ..."
                                    mkdir              /z/sys
              fi
              if [[ ! -d                              "/z/z"                  ]]; then
                echo "Attempting to mkdir              /z/z             ..."
                                    mkdir              /z/z
              fi # should maybe loop through root dirz instead of huge [A-ort-v]?
              echo   "Attempting to rsync -av --delete /sbin          /z..."
                                    rsync -av --delete /sbin          /z
                 # E4SMD3Gc: maybe another point of reference for just getting desired root d8a to backup comes from:
                 #  HTTP://AskUbuntu.Com/questions/55968/add-new-hard-drive-to-mirror-existing-lvm-drive-with-raid1 : (reordered here to better see excludes)
                 # `sudo tar cvpzf bak.tgz --exclude=bak.tgz --exclude=/boot --exclude=/dev  --exclude=/etc/fstab --exclude=/etc/mtab --exclude=/lost+found
                 #                         --exclude=/media  --exclude=/mnt  --exclude=/proc --exclude=/sys /`
#x =exclude from above matching against my l8st Ubu14.04LTS `ls /`
# g=notglob from below && also not already done separ8ly above: /(boot|sbin)  ... so maybe should add separ8 /srv above with /sbin but still skip /sys
#   bin                                                                           although may be unnecessary since /srv seems empty
#x  boot
#   cdrom
#x  dev
#x  etc  (just /(fs|m)tab)
#   home
#   initrd.img
#   initrd.img.old
#   lib
#   lib32
#   lib64
#   libx32
#x  lost+found
#x  media
#x  mnt
#   opt
#xg proc
#   root
#   run
#   sbin
#   snap     (Oni)
# g srv
#   swapfile (Oni)
#xg sys
#   tmp
#   usr
#   var
#   vmlinuz
#   vmlinuz.old
              echo   "Attempting to rsync -av --delete /[A-ort-v]*    /z..."
                                    rsync -av --delete /[A-ort-v]*    /z
            fi # takes ~8.5hours on 1.5Gb/s or ~4hours on empty 3Gb/s SATA to sync ~100GB, ~6hours for ~150GB
            echo     "Attempting to umount             /z/boot          ..."
                                    umount             /z/boot
            echo     "Attempting to umount             /z               ..."
                                    umount             /z
          fi # tidy up by unmounting
        else
          echo       "!*EROR*! $0 detected unexpected partition info in      /tmp/sfdisk.sdb!"
          echo       "  Unwilling to run rsyncz without verifying partitions.  Aborting..."
        fi
      else
        echo         "!*EROR*! $0 could not run sfdisk -l /dev/sdb to create /tmp/sfdisk.sdb!"
        echo         "  Unwilling to run rsyncz without verifying partitions.  Aborting..."
      fi
    else
      echo           "!*EROR*! $0 could not rm /tmp/sfdisk.sdb!"
    fi
  else
    echo             "!*EROR*! $0 must be run as root!"
  fi }
rsyncznw() { # As root,prep new 2nd drv. Old manual steps: fdisk /dev/sdb;p (2ck!already part'd),n,p,1,,32,a,1,n,p,2,,291,t,2,82,n,p,3,,33713,p (final ck),w;
             #                           mkfs.xfs /dev/sdb[13];mkswap /dev/sdb2;rsyncz (wait ~2hourz/50GB needed to copy);grub;root (hd1,0),setup (hd1),quit;
  echo "!*EROR*! $0 needs further testing before it should be enabled!"; return 1;
  if [[         "$HUsr" == "root"                  ]]; then # if !root user,print eror&&quit
    if [[       -e               "/tmp/sfdisk.sdb" ]]; then # rm      potentially old               data-file
      rm                          /tmp/sfdisk.sdb
    fi
    if [[     ! -e               "/tmp/sfdisk.sdb" ]]; then # mk sure potentially old               data-file has been removed first
      sfdisk    -l /dev/sdb 2>&1 >/tmp/sfdisk.sdb
      if [[     -r               "/tmp/sfdisk.sdb" ]]; then # mk sure previous `sfdisk` cmd created data-file successfully
        grep    "^No partitions found$\|^/dev/sdb[123]          0       -       0          0    0  Empty$" /tmp/sfdisk.sdb >/dev/null
        if [[   "$?"    == "0"                     ]]; then
          echo "Proceeding with automated partitioning of /dev/sdb for rsyncz purposes..."
          # if avail but !partz `sfdisk /dev/sdb << ~/dox/putr/ST320GB-(most|full)3-(7200.10|ES).prt` to create parts if drv is new
          # ,32,L,*       # example had << EOF then Ctrl-D as soon as 5th empty line was reached to send EOF
          # ,259,S        # maybe need Perl wrapper to regex output of -l to verify part list is that desired?
          # ,33422,L      # most3 is left,full3 below    Experiment with this auto-parting && grub-install on next new drv later.
          # ,0
          # EOF but maybe could just use ",32,L,*\n,259,S\n;\n;\nEOF" to tk rest of drv w/ sdb3 but mk sure unmounted&&partless 1st
          echo "sfdisk    /dev/sdb < ~/dox/putr/HrdDskDrvz/Smzg2TB-full4-7200.12-Samsung-HD203WI_-1AN1-243201cylzxO1-9CN3GBk.prt ..."
          #     sfdisk    /dev/sdb < ~/dox/putr/HrdDskDrvz/Smzg2TB-full4-7200.12-Samsung-HD203WI_-1AN1-243201cylzxO1-9CN3GBk.prt
          echo "mkfs.xfs  /dev/sdb1                                 ..."
                mkfs.xfs  /dev/sdb1
          echo "mkswap    /dev/sdb2                                 ..."
                mkswap    /dev/sdb2
          echo "mkfs.xfs  /dev/sdb3                                 ..."
                mkfs.xfs  /dev/sdb3
          echo "mkfs.xfs  /dev/sdb4                                 ..."
                mkfs.xfs  /dev/sdb4
          echo "rsyncz                                              ..."
                rsyncz
          echo "grub-install --root-directory=/ hd1                 ..."
                grub-install --root-directory=/ hd1
        else # I think the above should setup the boot-loader on a new drive but it might need /z(/boot)? instead.
          echo "!*EROR*! $0 found partitions on /dev/sdb!"
                sfdisk -l /dev/sdb
        fi
      else
        echo   "!*EROR*! $0 could not run sfdisk -l /dev/sdb to create /tmp/sfdisk.sdb!"
        echo   "  Unwilling to run rsyncz without verifying partitions.  Aborting..."
      fi
    else
      echo     "!*EROR*! $0 could not rm /tmp/sfdisk.sdb!"
    fi
  else
    echo       "!*EROR*! $0 must be run as root!"
  fi }
rsynroot() {           # /[A-ort-v]*         as root to skip media mnt proc && sys
  ec 'rsync -av --delete /s[bn]*       /media/pip/Oni4TB-N3LM6666/'; # sbin && snap
  ec 'rsync -av --delete /[behiloruv]* /media/pip/Oni4TB-N3LM6666/'; }
upd8db() { # as root, run GNU locate's updatedb from findutils. the env vars stuff modified from /etc/cron.daily/locate script;
  FINDOPTIONS='-ignore_readdir_race'; # global options for invocations of find(1); # below FileSystems && paths which are pruned from updatedb database:
  PRUNEFS="NFS nfs nfs4 afs binfmt_misc proc smbfs autofs iso9660 ncpfs coda devpts ftpfs devfs mfs shfs sysfs cifs lustre_lite tmpfs usbfs udf ocfs2 fuse";
  PRUNEPATHS="/tmp /usr/tmp /var/tmp /afs /amd /alex /var/spool /sfs /media /var/lib/schroot/mount /run/user/1000/doc /run/user/1000/gvfs"; #fuse.gvfsd-fuse";
  LOCALUSER="root"         ; # run find as this user (was "nobody"); # NETPATHS=""; # no netpaths added for now;
  local   NICE=10          ; # cron.daily/find: run at this priority -- highr numb means lowr priority (this is rL8ive 2 Dfalt which cron sets,usually +5);
  local IONICE_CLASS=3     ; # I/O priority: 1 for real time, 2 for best-effort, 3 for idle ("3" only allowed for root);
  local IONICE_PRIORITY=7  ; # 0-7 (only valid for IONICE_CLASS 1 and 2), 0=highest, 7=lowest;
  export FINDOPTIONS PRUNEFS PRUNEPATHS LOCALUSER;                   # NETPATHS   ; # set task to run with desired I/O priority if possible;
  if [ -x /usr/bin/ionice ] && [ "${UPDATDB_NO_IONICE}" = "" ]; then # Linux suportz I/O schedulng prioriTz && classez sinc 2.6.13 wi the CFQ IO scheduler;
    local  KVER=$(uname -r); #       don't run ionice               if kernel                                     version < 2.6.13;
    case "$KVER" in          # I'm not sure why, but seems updatedb && locate are not oper8ing normally anymore,remaining unable to find filez all over fs;
      2.[012345]*) ;;        # <root@OniK28L4gPX/home/pip>upd8db \n /usr/bin/find: '/opt/containerd': Permission denied '/home/pip/.pki' '/home/pip/.tmp'
      2.6.[0-9]  ) ;;        #   '/home/pip/bin' '/home/pip/.local' '/home/pip/.bak' '/home/pip/.vim/autoload'
      2.6.[0-9].*) ;;        #   '/home/pip/.mk/qt5/Qt5.14.0/qtwebengine/src/core/debug/host gen obj' && almost all of my home && .cpan && /snap/* etc.;
      2.6.1[012]*) ;;        # Yay! it looks like changing LOCALUSER to root (from orig nobody) has enabled rel8ively normal oper8ion && results again;
                *)
      case     "$IONICE_CLASS" in
        1|2) priority="-n ${IONICE_PRIORITY:-7}" ;; # avoid providing "-n" when IONICE_CLASS isn't 1 or 2;
        *  ) priority=""                         ;;
      esac # HTTP://Zsh.SF.Net/Doc/Release/Redirection.html indic8z order matterz, so 2>&1 >/dev/null sendz STDERR 2 orig STDOUT && orig STDOUT 2 null;
      ionice -c $IONICE_CLASS     $priority -p   $$   > /dev/null 2>&1 || true
      ;;
    esac; fi
  if getent passwd $LOCALUSER   > /dev/null   ; then cd /;
    if   [[     "$HUsr"  ==        "root"   ]]; then  # I stripped out the cron script's /bin/sh test for root user && put my basic one in here instead;
              nice -n ${NICE:-10} updatedb.findutils; # /dev/null;     # don't redirect STDERR to null AgN until the db is actually returning good results AgN;
    else sudo nice -n ${NICE:-10} updatedb.findutils 2> /dev/null; fi; # HTTPS://StackOverFlow.Com/questions/25020444/how-to-unset-variables-after-use-in-zshrc
  else  echo "User $LOCALUSER does not exist."; unset FINDOPTIONS PRUNEFS PRUNEPATHS LOCALUSER; exit 1; fi; # clears out earlier exports at end ...
                                                unset FINDOPTIONS PRUNEFS PRUNEPATHS LOCALUSER; cd }        #   ... whether LOCALUSER existed or not;
# if     [[ "${(L)HOTy}" ==        cygwin* ]]; then #     optz # /proc/registry/HKEY_CLASSES_ROOT/Installer/Assemblies &&         (these should also be pruned)
#  export PRUNEPATHS="/c/System\\ Volume\\ Information";       # /proc/registry/HKEY_CURRENT_USER/Software/Microsoft/Windows/CurrentVersion/Explorer/UserAssist
#  export PRUNEPATHS="/c/System\\ Volume\\ Information           /proc/registry/HKEY_CLASSES_ROOT/Installer/Assemblies /proc/registry/HKEY_CURRENT_USER/Software/Microsoft/Windows/CurrentVersion/Explorer/UserAssist";
#  export   NETPATHS="/c";
#--findoptions='-option1 -option2...' - Global optz4find.                         $ENV{FINDOPTIONS} also sets this value. Default:none
#--localpaths='    path1    path2...' - Non-network directories to put in the db.                                         Default:/
#--netpaths='      path1    path2...' - Network(NFS,AFS,RFS,etc.) dirz2put in db. $ENV{NETPATHS   } also sets this value. Default:none
#--prunepaths='    path1    path2...' - Dirz wich would but should! be put in db. $ENV{PRUNEPATHS } also sets this value. Default:/(((us|va)r/)?tmp|afs)
#   if   [[     "$HUsr"  ==        "root"  ]]; then
#             updatedb --localpaths="/c" --prunepaths="/c/System\\ Volume\\ Information /proc/registry/HKEY_CLASSES_ROOT/Installer/Assemblies /proc/registry/HKEY_CURRENT_USER/Software/Microsoft/Windows/CurrentVersion/Explorer/UserAssist"
#   else sudo updatedb --localpaths="/c" --prunepaths="/c/System\\ Volume\\ Information /proc/registry/HKEY_CLASSES_ROOT/Installer/Assemblies /proc/registry/HKEY_CURRENT_USER/Software/Microsoft/Windows/CurrentVersion/Explorer/UserAssist"; fi # doubting I'll ever return to any old MSWindows system && CygWin again;
# elif   [[     "$HUsr"  ==        "root"  ]]; then updatedb; # K22L8ZZ9:originally I had upd8db as just aliases before turning those into this function;
# else                                         sudo updatedb; fi } # note: s|/$||g (rm trailing slashes from pathz2omit) or upd8db will treat as RegExes;
# 47GKM3BY tmp pokr env varz (NO Slashes on end!) wher 1st 'pokr' is local path to data dir
#export     pokr=~/dvl/pokr/c
#export ldvlpokr=piptigger@lbox.org:dvl/pokr/c
#export lcgipokr=piptigger@lbox.org:public_html/cgi-bin/pokr
#export ldvl=piptigger@lbox.org:dvl
# if     [[ -d "$HOME/snap"  ]] && [[ -d "$HOME/.snap"  ]]; then PUSHDSILENT=1 pushd -q "$HOME/snap"; # N56MHide:hide any ~/snap/ dir in ~/.snap/;
#   if   [[ -d "$HOME/snap/canonical-livepatch"         ]]; then cp -a canonical-livepatch ../.snap/;
#     if [[ -w "$HOME/snap/canonical-livepatch/current" ]]; then rm    canonical-livepatch/current  ;      fi
#     rd                   canonical-livepatch/*          ;      rd    canonical-livepatch          ; .. ; fi
#   if   [[ -d "$HOME/snap/btop"                        ]]; then cp -a btop                ../.snap/;
#     if [[ -w "$HOME/snap/btop/current"                ]]; then rm    btop/current                 ;      fi
#     rd                   btop/*                         ;      rd    btop                         ; .. ; fi
#   rd                snap                                ;      PUSHDSILENT=1  popd -q 2>/dev/null ;      fi
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