# NACM55k8:Octology::k8.pm crE8d by PipStuart <Pip@CPAN.Org> from old Curses::Simp to be new Perl text-mode applic8ion development with ReadKey (getk);
package    Octology::k8; # 2du:binary search down on Curses CONSTANTS to figure out why no warnings or errors result when trying to incorpor8 the bad ones,
#   from pdoc it looks like Term::ReadLine::Gnu supports getc && a char_mode 2 try here instead of ReadKey (sinc it sEmz RL suports many more control optnz),
#   just watched HTTPS://YouTu.be/iZdTgwXy20Q on Gum (writN in Go) 4 CLI interactive cmndz sO lern asdf && how 2 instal it since some fE8urez && optnz mAB gud;
# O1ML43BB:2du:figUr out how2 Uz d8:dur8->w8() or just aw8 2 specify whN 2 transition BtwEn frAmz how or specify script 2 conduct Dtection && custom transitn?;
# O1ML6x6x:sO Mr.blacK can turn2 Mr.BLACk (dRk-k) && teleport on random Screeps maps 2 any non-Wall (lIk mNtor BastardBlue,but not as fast,fR,or wL),MissWhite
#   is stRtld 2 nOtic Mr.k sometImz && aftr a few Ncounterz Bginz 2 B Abl 2 slO dn tIm az k getz clOs && EvN Bginz 2 mOmNtarily turn Ms.wHITE whN hEz verynEr,
#   they R usually surrounded by just 6 othr Cming randomz in lIk cafeTria/lIbrary/storz/pRk/mall/rOdz/etc. until clas or EvNtz whN they stRt talkng 2 Echothr,
#   this all whIl whN 1 or mor of Xtra 6 lEv bASTARDbLUE oftN popz by fast (but sometImz lIk tryng 2 chAs cLEVERcYAN sorta B4 losing her AgN? bumd) && therz a
#     prOgrSion wher k && b are bLOCkbLOkEZ&&bROZHUCANbREAkbANkZ apRt or 2gethr && Ms.W catchz on az her tIm-slOing powr aQmUl8z (&& grOz from her wHITE2White
#     sIdz sO shEz 1st 2 discovr th@ CleverCyanCanCavernClear&&Clean thru the Wallz Bcuz her tIm-powr Bginz to let her C thru thM && stil C CC insId sometImz,
#   thN the CWoMeN Bcom frNdz && shar their sub-lAyr Wash Melo Neon altern8 costum colrz wi Ech-othr,sO the mN lern their sub-lAyr colrz 2 (but don't shar M),
#   probably Ms.wHITE has 2 shO Mr.k 1st (wich iz wher hiz && bLUEZ powrz 1st rEsId,but thN they lern 2 Uz blacK && Blue 2 C CC hu shokz evrE1 wi cc AgN! =) ;
# O1ML8f0x:mk f8 gNr8 .f0x fIlz of 4 suitz && 12 [2-9TJQK] thN 13th Ace thN spAc thN chS p && P,thN k && K folOd by q && Q thN r R && o O,b B && s S,n N&&i I,
#   sO 9 blox of 4 in2 36 (wi singl blank spot BtwEn cRdz && chS th@ can B jOker or othr gueStz) 2 mk good 16x32 .f0nt mapz 2 OvrlAy 2gethr 4 bIGbACKGROUNDZ?,
#   thN mk dRkz sPADE or cLUB sUIT top-rIt && rank botm-lFt but Heart DiamonD have botm-rIt wi rankz top-lFt && their colrz thN shO thM mv && clash && sKl-dn2
#   UnicOd b256z th@ folO along wi Ech of othr 4 colr charz && they can plA thM 2gethr or apRt wi interSting rEsultz,thN intrOduc betr b256 hI128z mapng bak?,
#   mk [Uabcdfgklpt]8-Rt shOing 160x50 or 80x25 or 40x13 or 20x7 or 10x4 wich can gNr8 bak up thru hItz 8,16,32,64 charz 4 1280x1024 thN merge wi shorter sIz,
#   consider intrOducing (rAGErED or) RudeRed && GardenerGreen (or gARgOYLEgREEN) thN YoungYellow OldOrange MagicMagenta PedantPurPle (whose various sub-lAyrz
#     4 sAm char wi WMN costum colr on or instd full-b64 4mz wich hav Bn unfOcusd az Xtraz around earlEr charz in pRtiQlR setngz) && giv evry1 voicz && actnz;
#   0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz._ # 2du:rSt of b256 aftr mapd 2 numbz,letrz,.,_ + chS && cRdz betr; alsO Gent(leman)?Green;
#   ♟♙♞♘♝♗♜♖♛♕🂡🂢🂣🂤🂥🂦🂧🂨🂩🂪🂫🂭🂮🃑🃒🃓🃔🃕🃖🃗🃘🃙🃚🃛🃝🃞🂱🂲🂳🂴🂵🂶🂷🂸🂹🂺🂻🂽🂾🃁🃂🃃🃄🃅🃆🃇🃈🃉🃊🃋🃍🃎♚♔ #  sO:B=2s,C=3s,G=7s,K=Js,M=Ks + O=2c,P=3c,R=5c,W=Tc,Y=Qc&&bcgkm+oprwy=[237JK]H+[235TQ]D,
#   0 1 2 3 4 5 6 7 8 9 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z a b c d e f g h i j k l m n o p q r s t u v w x y z . _  ## just 2mk sure ran Zsh:
#   ♟ ♙ ♞ ♘ ♝ ♗ ♜ ♖ ♛ ♕ 🂡 🂢 🂣 🂤 🂥 🂦 🂧 🂨 🂩 🂪 🂫 🂭 🂮 🃑 🃒 🃓 🃔 🃕 🃖 🃗 🃘 🃙 🃚 🃛 🃝 🃞 🂱 🂲 🂳 🂴 🂵 🂶 🂷 🂸 🂹 🂺 🂻 🂽 🂾 🃁 🃂 🃃 🃄 🃅 🃆 🃇 🃈 🃉 🃊 🃋 🃍 🃎 ♚ ♔  ##   … `b8ls|sS >/tmp/x`
#   À Á Â Ã Ä Å Æ Ç È É Ê Ë Ì Í Î Ï Ð Ñ Ò Ó Ô Õ Ö × Ø Ù Ú Û Ü Ý Þ ß à á â ã ä å æ ç è é ê ë ì í î ï ð ñ ò ó ô õ ö ÷ ø ù ú û ü ý þ ÿ  ##   … thN Vim :r/tmp/x
#   Ā ā Ă ă Ą ą Ć ć Ĉ ĉ Ċ ċ Č č Ď ď Đ đ Ē ē Ĕ ĕ Ė ė Ę ę Ě ě Ĝ ĝ Ğ ğ Ġ ġ Ģ ģ Ĥ ĥ Ħ ħ Ĩ ĩ Ī ī Ĭ ĭ Į į İ ı Ĳ ĳ Ĵ ĵ Ķ ķ ĸ Ĺ ĺ Ļ ļ Ľ ľ Ŀ  ##   … but s/b256/top128;
#     BC && OP are rEally tIte 2gethr whIl KW are Usually mor distant (but their powrz let him rush her dn && shE can C it but lIk Only bLUE can nOtic thOz?),
#     P knOz R az wL az M knOz K && O && W knOz Y (bAsicly),thN G knOz C && K sAm wi R knOng W lEst wL of nAborz,charz sH&&cD swap whN turn dRk but rankz stA,
#     b knOz Y quIt wL but B && y almOst nevr mEt (until chS Pcz intrOduc thM wi dramatic rEsultz),giv evry1 aliter8ionz&&their Letr|Rank|Suit by dA,lrs @nIt,
#   gNr8 48x96 cRdz using UnicOd half-charz in full midl 48-lInz (Only evr includng colrz th@ hav alreD had sPkng pRtz or prOfound mMorabl Magic th@ othrz C),
#   ther can B cRdz of any sIz wich shO zum of tIniSt singl or dual-char actionz 2 XplAn some valid intrpret8ionz 4 l8r wi snd-FX th@ mA cOlId confUsingly 2?,
#   chSPc kING && King . && _ iniTaly clash just wi m M kINGsPADEs && KingHearts (but l8r whoevr aZure&&AzURE in sub-lAyrz [Ms.White Ithink] can plA Kinkg2!);
# O1ML8brl:mAB 6-dot Braille UnicOd 0..63 iz bSt 4 chS && cRdz + 128 && circled numbrz && all similRly accNtd letrz R prOtectd or wearng hatz rEspectivly =) ,
#   mk custom screepz mapz 4 rOdz shOing nAborhood wi adrSz alsO DscrIbng distance in "(SKp-from-)?Colr-ciTy!(-the-gAym)" && mapz 4 loc8nz around town 2C&&gO,
#   mAB the 23 5 7 of bc&&OP (ni&&NI) + r(BS) + G(ro) 1st discovr their abiliTz 2 plA their cRdz rankz in2 chS Pc powrz aftr M && w get 2 knO King && kINkG?…,
#   whN evr 2-8 plAyr pOkr or blaKJack or Usualy just 1-plAyr solitAr (wi story-lIn Xceptionz) R Bng plAyd && char holdz their Own cRd:othr hidn cRdz swp4thM;
# O1MLABrl:from ~/dox/2du/know.ls NCDL8ris:HTTPS://YouTu.be/RlpQkHBGAs0 "I Made the World's Smallest Tetris..." # NCA:05b0 of EvanZhou's UniCode Braille 2x4z;
# O1MLAHat:stuD UTF8 && onlIn c@alogz of nAmz 2 fInd hOpfuly all L/letrz wi common accNtz az Uni4m h@-symbolz th@ Ech ColrChar mIt B wearing in any lOc8ion?&&
#   alsO Uz 8-dot Braille 2 mk 160*2x48*4 .f0nt wId bitmapz of 320x192 (or just half @160x) 2 shO stiple p@rnz of my hIrez k && W imgz or gNr8d from drawngz2;
# NCDL8ris:HTTPS://YouTu.be/RlpQkHBGAs0 "I Made the World's Smallest Tetris..." # NCA:05b0 of EvanZhou showing really cool use of UniCodeBraille2x4 in Tetris;
use warnings;use strict;use utf8;use v5.22;use vars qw( $AUTOLOAD );use open qw[:std :encoding(UTF-8)];#se POSIX qw(locale_h);use locale;setlocale(LC_ALL,'');
use Tie::Array;use Term::ReadKey; # HTTPS://StackOverFlow.Com/questions/71880471/ncurses-65536-color-pairs says ncurses can be compiled w/ --enable-ext-colors
use        Octology::a8; # 2du:try Alt&&Meta keyz plus Ctrl with remapz; might also try evtest && xev to see scan codez2;
my $VERSION  =  '0.0';my $d8VS='O1ML4964';
END{CScr();ReadMode 0;} # auto-execute CloseScreen() on exit()?
$|=1;      ReadMode 3;my $keey; # rEmMber ReadKey(-1) is non-blocking (&& 0 blockz?!) wich is opposite of my orig Curses::Simp GetK ntrfAc && lS intuitiv 2mE;
my %remp=(   "\e"=>'SKp','[A'  =>'Uppp','[B'  =>'Down','[C'  =>'Rite','[D'  =>'Left','[2~'=>'Ins','[5~'=>'PgUp','[H'=>'Home',
  "\f"=>'FF',"\t"=>'Tab','OP'  =>'F1'  ,'OQ'  =>'F2'  ,'OR'  =>'F3'  ,'OS'  =>'F4'  ,'[3~'=>'Del','[6~'=>'PgDn','[F'=>'Ennd',
  "\n"=>'LF',"\r"=>'Ret','[15~'=>'F5'  ,'[17~'=>'F6'  ,'[18~'=>'F7'  ,'[19~'=>'F8'  ,   # mIt want2try2add PrntScrn ScrlLock PausBrak?
  "\b"=>'BS',"\a"=>'Bel','[20~'=>'F9'  ,'[21~'=>'F10' ,'[22~'=>'F11' ,'[24~'=>'F12' ,); # F11 togglez GnomTerm maximize so can't test;
#y %Ctrl=GetControlChars();say '';for(sort(keys(%Ctrl))){printf("%-9s:%3d;  \n",$_,ord($Ctrl{$_}));} # hopefully show INTERRUPT && othr ctrl charz;
# DISCARD  : 15;C-o    ERASE    :127;       START    : 17;C-q    SUSPEND  : 26;C-z
# EOF      :  4;C-d    ERASEWORD: 23;C-w    REPRINT  : 18;C-r    MIN      :  1;C-a
# EOL      :  0;       INTERRUPT:  3;C-c    STOP     : 19;C-s    QUIT     : 28;  ?
# EOL2     :  0;       KILL     : 21;C-u    QUOTENEXT: 22;C-v    SWITCH   :  0;       TIME     :  0;
# from: HTTPS://Unix.StackExchange.Com/questions/545274/how-does-a-keyboard-press-get-processed-in-the-linux-kernel post says in XTerm running:
#   `ps axf` showz console ttyz && terminal ptyz in tree with what spawned in each one informatively. If you know /dev/tty# or /dev/pts/# then you can echo
#   text to those devices && it will be treated as input like as if it were focused && the keyboard typed such into it. Might be useful somehow someday.
#   `man ps` listz PROCESS STATE CODES:
#     S    interruptible sleep (waiting for an event to complete)
#     s    is a session leader
#     +    is in the foreground process group;
# from: HTTPS://Unix.StackExchange.Com/questions/319787/how-does-the-linux-kernel-handle-keyboards-inputs-outputs answer has lots of linkz to stuff like
#   setkeycodes (2 cfg PS/2 kybdz), udev (2 cfg USB kybdz) && ArchWiki, loadkeys (4 console keymapz), xmodmap && xkb (4 X11 keymapz), && input examplez;
# from: HTTPS://StackOverFlow.Com/questions/20943322/accessing-keys-from-linux-input-device gives sample .c code which probably works pretty well && linkz
#   to: HTTPS://Kernel.Org/doc/Documentation/input/input.txt && /usr/include/linux/input.h for constants && further detailz so mAB try 2 wrIt own ky Utl?;
my %SDLKOrdM =(
   '9'   => 'TAB',
  '13'   => 'RETURN',
  '27'   => 'ESCAPE');
my @KModNamz =( # in advanced input mode, these KMOD modifier names get set within the Simp object's '_kmod' hash after each GetK()
#  SDL Modifier                    Meaning
  'KMOD_NONE',           #        No modifiers applicable
# I don't think I can detect locks or left/right with Curses so commented
# 'KMOD_NUM',            #        Numlock is down
# 'KMOD_CAPS',           #        Capslock is down
# 'KMOD_LCTRL',          #        Left Control is down
# 'KMOD_RCTRL',          #        Right Control is down
# 'KMOD_RSHIFT',         #        Right Shift is down
# 'KMOD_LSHIFT',         #        Left Shift is down
# 'KMOD_RALT',           #        Right Alt is down
# 'KMOD_LALT',           #        Left Alt is down
  'KMOD_CTRL',           #        A Control key is down
  'KMOD_SHIFT',          #        A Shift key is down
  'KMOD_ALT',);          #        An Alt key is down
# ordered attribute names array && default attribute data hash
my   @anmz=();     my %ad8a=(); # was @_attrnamz, %_attrdata,
                   my %vanz=(); #     &&  %_verbose_attrnamz;
# field data
push(@anmz, '_wind'); $ad8a{$anmz[-1]} = 0; # CursesWindowHandle
                      $vanz{$anmz[-1]} = 'WindowHandle';
push(@anmz, '_text'); $ad8a{$anmz[-1]} = []; # text     d8a
                      $vanz{$anmz[-1]} = 'TextData';
push(@anmz, '_sgra'); $ad8a{$anmz[-1]} = []; # SGR Attr d8a
                      $vanz{$anmz[-1]} = 'SGRAData';
#push(@anmz, '_fclr'); $ad8a{$anmz[-1]} = []; # fg color data
#                     $vanz{$anmz[-1]} = 'ForegroundColorData';
#push(@anmz, '_bclr'); $ad8a{$anmz[-1]} = []; # bg color data
#                     $vanz{$anmz[-1]} = 'BackgroundColorData';
#push(@anmz, '_flyr'); $ad8a{$anmz[-1]} = []; # fg layer data
#                     $vanz{$anmz[-1]} = 'ForegroundLayerData';
#push(@anmz, '_blyr'); $ad8a{$anmz[-1]} = []; # bg layer data
#                     $vanz{$anmz[-1]} = 'BackgroundLayerData';
#push(@anmz, '_kque'); $ad8a{$anmz[-1]} = []; # Key Queue
#                     $vanz{$anmz[-1]} = 'KeyQueue';
#push(@anmz, '_mque'); $ad8a{$anmz[-1]} = []; # Key Mod Queue
#                     $vanz{$anmz[-1]} = 'KeyModQueue';
push(@anmz, '_hite'); $ad8a{$anmz[-1]} = 0;  # window height
                      $vanz{$anmz[-1]} = 'WindowHeight';
push(@anmz, '_widt'); $ad8a{$anmz[-1]} = 0;  # window width
                      $vanz{$anmz[-1]} = 'WindowWidth';
push(@anmz, '_yoff'); $ad8a{$anmz[-1]} = 0;  # window y-offset
                      $vanz{$anmz[-1]} = 'WindowYOffset';
push(@anmz, '_xoff'); $ad8a{$anmz[-1]} = 0;  # window x-offset
                      $vanz{$anmz[-1]} = 'WindowXOffset';
push(@anmz, '_ycrs'); $ad8a{$anmz[-1]} = 0;  # cursor y-offset
                      $vanz{$anmz[-1]} = 'CursorYOffset';
push(@anmz, '_xcrs'); $ad8a{$anmz[-1]} = 0;  # cursor x-offset
                      $vanz{$anmz[-1]} = 'CursorXOffset';
push(@anmz, '_btyp'); $ad8a{$anmz[-1]} = 0;  # border type
                      $vanz{$anmz[-1]} = 'WindowBorderType';
push(@anmz, '_bsgr'); $ad8a{$anmz[-1]} = ''; # border SGR attributes
                      $vanz{$anmz[-1]} = 'WindowBorderSGRA';
push(@anmz, '_brfc'); $ad8a{$anmz[-1]} = 'w';# border fore color
                      $vanz{$anmz[-1]} = 'WindowBorderForegroundColor';
push(@anmz, '_brbc'); $ad8a{$anmz[-1]} = 'k';# border back color
                      $vanz{$anmz[-1]} = 'WindowBorderBackgroundColor';
push(@anmz, '_titl'); $ad8a{$anmz[-1]} = ''; # window title
                      $vanz{$anmz[-1]} = 'WindowTitle';
push(@anmz, '_tsgr'); $ad8a{$anmz[-1]} = ''; # window title SGR d8a
                      $vanz{$anmz[-1]} = 'WindowTitleSGRAData';
push(@anmz, '_ttfc'); $ad8a{$anmz[-1]} = 'W';# title fore color
                      $vanz{$anmz[-1]} = 'WindowTitleForegroundColor';
push(@anmz, '_ttbc'); $ad8a{$anmz[-1]} = 'W';# title back color
                      $vanz{$anmz[-1]} = 'WindowTitleBackgroundColor';
push(@anmz, '_dndx'); $ad8a{$anmz[-1]} = 0;  # DISPSTAK index
                      $vanz{$anmz[-1]} = 'DisplayStackIndex';
# Flags, storage Values, && extended attributes
push(@anmz, '_flagaudr'); $ad8a{$anmz[-1]} = 1; # Auto Draw()
                          $vanz{$anmz[-1]} = 'FlagAutoDraw';
push(@anmz, '_flagadts'); $ad8a{$anmz[-1]} = 1; # AD Tied SGRA d8a
                          $vanz{$anmz[-1]} = 'FlagAutoDrawTiedSGRAData';
push(@anmz, '_flagadtf'); $ad8a{$anmz[-1]} = 1; # AD Tied FG
                          $vanz{$anmz[-1]} = 'FlagAutoDrawTiedForegroundData';
push(@anmz, '_flagadtb'); $ad8a{$anmz[-1]} = 1; # AD Tied BG
                          $vanz{$anmz[-1]} = 'FlagAutoDrawTiedBackgroundData';
push(@anmz, '_flagaba7'); $ad8a{$anmz[-1]} = 1; # AllBoldAbove7
                          $vanz{$anmz[-1]} = 'FlagAllBoldAbove7';
push(@anmz, '_flagmaxi'); $ad8a{$anmz[-1]} = 1; # Maximize
                          $vanz{$anmz[-1]} = 'FlagMaximize';
push(@anmz, '_flagshrk'); $ad8a{$anmz[-1]} = 1; # ShrinkToFit
                          $vanz{$anmz[-1]} = 'FlagShrinkToFit';
push(@anmz, '_flagcntr'); $ad8a{$anmz[-1]} = 1; # Center
                          $vanz{$anmz[-1]} = 'FlagCenter';
push(@anmz, '_flagcvis'); $ad8a{$anmz[-1]} = 0; # CursorVisible
                          $vanz{$anmz[-1]} = 'FlagCursorVisible';
push(@anmz, '_flagscrl'); $ad8a{$anmz[-1]} = 0; # Scrollbar
                          $vanz{$anmz[-1]} = 'FlagScrollbar';
push(@anmz, '_flagsdlk'); $ad8a{$anmz[-1]} = 0; # SDLK
                          $vanz{$anmz[-1]} = 'FlagSDLKey';
push(@anmz, '_flagmili'); $ad8a{$anmz[-1]} = 0; # millisecond
                          $vanz{$anmz[-1]} = 'FlagMillisecond';
push(@anmz, '_flagprin'); $ad8a{$anmz[-1]} = 1; # Prnt into self
                          $vanz{$anmz[-1]} = 'FlagPrintInto';
push(@anmz, '_flagclru'); $ad8a{$anmz[-1]} = 0; # Color Used?
                          $vanz{$anmz[-1]} = 'FlagColorUsed';
push(@anmz, '_flaginsr'); $ad8a{$anmz[-1]} = 1; # insert mode
                          $vanz{$anmz[-1]} = 'FlagInsertMode';
# methods
sub DfltValu{my($self,$attr)=@_;$ad8a{$attr};}
sub AttrNamz{@anmz;} # attribute names
sub TIEARRAY{#OScr() unless($GLBL{'FLAGOPEN'}); # need Open main Screen for new Simp obj
  my $clas = shift(@_);my $self = bless({},$clas);
  for my $attr ($self->AttrNamz()){$self->{$attr} = $self->DfltValu($attr);} # init defaults
  for(@KModNamz){$self->{'_kmod'}->{$_} = 0;}
  while(@_){my $foun=0;
    my($keey,$valu)=(shift(@_),shift(@_));
    for   my $attr($self->AttrNamz()){
      if  (      $attr =~ /$keey/i){$self->{$attr}=$valu;$foun=1;}}
    unless($foun){
      for my $attr($self->AttrNamz()){
        if($vanz{$attr} eq $keey  ){$self->{$attr}=$valu;$foun=1;}} # exact match
#     unless($foun){die "!*EROR*! Octology::k8->new initialization key:$keey was not recognized!";}
    }}
  my($cwid,$chit,$pwid,$phit)=GetTerminalSize(); # in bash (or zsh too?) LINES=$(tput lines) mItB betr aftr rEsIz than just inheriting Xported from shL init;
  if(defined($cwid) && $cwid){$self->{'_widt'} = $cwid;}elsif(exists($ENV{'COLUMNS'})){$self->{'_widt'}=$ENV{'COLUMNS'};}else{$self->{'_widt'}=`tput cols `;}
  if(defined($chit) && $chit){$self->{'_hite'} = $chit;}elsif(exists($ENV{'LINES'  })){$self->{'_hite'}=$ENV{'LINES'  };}else{$self->{'_hite'}=`tput lines`;}
  if(defined($pwid) && $pwid){$self->{'_pwid'} = $pwid;} # note that `stty` nstd mIt B Able 2 get term sIz if ncurses `tput` can't for some reason (CygWin?);
  if(defined($phit) && $phit){$self->{'_phit'} = $phit;} # bash needs: "shopt -s checkwinsize" in .bashrc for it to be exposing those size varz to processes;
  # also in .bashrc (or .zshrc?) "trap 'export LINES COLUMNS' DEBUG;" Bash DEBUG trap XeQtz B4 Ech cmnd Ntrd @prmpt,sO rEXportz up2d8 varz if TermSize chngz;
  $self->{'_flagshrk'}=0 if($self->{'_hite'} && $self->{'_widt'}); # in any POSIX shL: "size=$(stty size); # eg.'40  80';\n linz=${size% *}; colz=${size#* };"
  # just calling system("resize") might inhibit vim && less (wiot -X) from wiping screen of scrollback or set the valUz && `kill -s WINCH $$` mIt du it also;
# $self->Updt(1);
# $self->{'_wind'}=NeewWind($self->{'_hite'}, $self->{'_widt'},
#                           $self->{'_yoff'}, $self->{'_xoff'});
# unless(exists($self->{'_wind'}) &&  defined($self->{'_wind'})){
#   die "!*EROR*! Curses::Simp->new couldn't crE8 window with hite:$self->{'_hite'},widt:$self->{'_widt'},yoff:$self->{'_yoff'},xoff:$self->{'_xoff'}!";}
  $self->TestDraw(); # newwin doesn't auto draw so if there's init _text && autodraw is on...
 #$self->Move(-1, -1) unless($self->{'_ycrs'} || $self->{'_xcrs'});
 #CrsrVisi($self->{'_flagcvis'}); # set cursor state; print SKp cOde 2 set cursor visibility st8;
  return($self);}
sub FETCH    {return(         $_[0]->{'_text'}->[$_[1]]);}
sub FETCHSIZE{return(scalar(@{$_[0]->{'_text'}})       );}
sub STORE    {         $_[0]->{'_text'}->[$_[1]] = $_[2];                   $_[0]->TestDraw();}
sub STORESIZE{splice(@{$_[0]->{'_text'}}, $_[1], @{$_[0]->{'_text'}}-$_[1]);$_[0]->TestDraw();}
sub EXISTS   {return(0) unless(defined($_[0]->{'_text'}->[$_[1]]));return(1);}
sub CLEAR    {            @{$_[0]->{'_text'}} = ();                         $_[0]->TestDraw();}
sub PUSH     {       push(@{$_[0]->{'_text'}},$_[1]);                       $_[0]->TestDraw();}
sub POP      {$_ =    pop(@{$_[0]->{'_text'}});                             $_[0]->TestDraw();return($_);}
sub SHIFT    {$_ =  shift(@{$_[0]->{'_text'}});                             $_[0]->TestDraw();return($_);}
sub UNSHIFT  {    unshift(@{$_[0]->{'_text'}},$_[1]);                       $_[0]->TestDraw();}
sub SPLICE   {
#             $_ = splice(@{$_[0]->{'_text'}},@_[1..$#_]);                  $_[0]->TestDraw();return($_);}
  my $self = shift(@_);
  my $offs = shift(@_) || 0;
  my $leng = shift(@_);$leng = $self->FETCHSIZE() - $offs unless(defined($leng));
  my $retn = splice(@{$self->{'_text'}},$offs,$leng,@_);                    $self->TestDraw();return($retn);}
sub EXTEND   {}
# on d8:D53:the following OSC 6n example was posted at:HTTPS://StackOverFlow.Com/questions/4958900/terminal-where-am-i but 1st figure out how to restore $/ ?;
 #perl -e '$/ = "R";' -e 'print "\033[6n";my $x=<STDIN>;my($n, $m)=$x=~m/(\d+)\;(\d+)/;print "Current position: $m, $n\n";'
sub Cler{my $self=shift;#print "\e[0J\e[1J"; # these J Erase Display commandz don't seem to work;
  #rint "\e[6n"; # don't du this! it goez haywire && keepz writing blankz down the screen && has to be killed;
 #print "\e[0G"; # mv cursor to column 0 (or 1)? note bak && upd8 wi 'U' in vim sometimez includes a OSC ^[[I before the upd8 output which I wonder what it is;
  print "\e[1F\e[2K" for(0..($self->{'_hite'}-1)); # 2du:try scroll instead of erasing over visible && page of scrollback linez;
} #print ClearScreen SKp; 0J clearz cursor to end of scrn,1J crsr 2 bgin,2 all&&mv2 0,0;
#sub OScr{ no strict 'subs'; # Open a new Curses Screen && setup useful options
# unless($GLBL{'FLAGOPEN'}){ $GLBL{'FLAGOPEN'} = 1;
#  #use_env(0); # raw() allows ^C,^S,^Z 2simply pass thru,unlike cbreak(),but raw requirz`reset`from the cmdline,if the app crashes; napms($ms) 2nap millisecs;
#   initscr();noecho();nonl();raw();start_color();$GLBL{'FLAGUDCL'} = eval('use_default_colors(); 1') || 0;
#   # H4RM7w9G:added use_env && use_tioctl above to hopefully better handle window resize events from SIGWINCH && KEY_RESIZE. Dfalt 1,0 try 1,1 0,1 or 0,0
#   #   from HTTP://Invisible-Island.Net/ncurses/man/curs_util.3x.html ... poopy, my Curses doesn't have use_tioctl && use_env(0) pegs term at 80x24  =(
#   # start_color without use_default_colors was making transparent GnomeTerminal BackGround solid blacK; A7QAMqt: ... but since use_default_colors() above is
#   #   not defined in some SunOS/Solaris Curses libraries, I've wrapped it in an eval to hopefully pass their CPAN tests; # below: nodelay()||timeout(-1)...
#   curs_set(0);keypad(1);meta(1);intrflush(0);notimeout(0);timeout(0);clear();move(getmaxy()-1,getmaxx()-1);refresh();    # ... for non||blocking getch()ar()
#   @BORDSETS = ( # initscr initializes line-draw chars for my border hash
#     { 'ul' => ACS_ULCORNER,                  'ur' => ACS_URCORNER,
#                    'rt' => ACS_RTEE,  'lt' => ACS_LTEE,
#                    'tt' => ACS_TTEE,  'bt' => ACS_BTEE,
#                    'hl' => ACS_HLINE, 'vl' => ACS_VLINE,
#       'll' => ACS_LLCORNER,                  'lr' => ACS_LRCORNER, },
#     { 'ul' => '+', 'rt' => '{', 'lt' => '}', 'ur' => '+',             #   032:20: !"#$%&'   040:28:()*+,-./   048:30:01234567   056:38:89:;<=>?
#                    'tt' => '+', 'bt' => '+',                          #   064:40:@ABCDEFG   072:48:HIJKLMNO   080:50:PQRSTUVW   088:58:XYZ[\]^_
#       'll' => '+', 'hl' => '-', 'vl' => '|', 'lr' => '+',          }, #   096:60:`abcdefg   104:68:hijklmno   112:70:pqrstuvw   120:78:xyz{|}~
#     { 'ul' => ' ', 'rt' => ' ', 'lt' => ' ', 'ur' => ' ',             #   160:A0: ... had 160-255 here but with new Ubu17.10 && Perl 5.26.0, after
#                    'tt' => ' ', 'bt' => ' ',                          #   192:C0:     `pmfi Curses` trying `d8ok` said malformed UTF-8 chars here &&
#       'll' => ' ', 'hl' => ' ', 'vl' => ' ', 'lr' => ' ',          }, #   224:E0:     also down in CPik definition of @bchz block chars so replaced
#     { 'ul' => ACS_PLUS,                      'ur' => ACS_PLUS,        #               them with normal characters below 128. `d8ok` seems fine now;
#                    'rt' => ACS_RARROW,'lt' => ACS_LARROW,
#                    'tt' => ACS_UARROW,'bt' => ACS_DARROW,
#                    'hl' => ACS_HLINE, 'vl' => ACS_VLINE,
#       'll' => ACS_PLUS,                      'lr' => ACS_PLUS,     },
#     { 'ul' => 'X', 'rt' => '[', 'lt' => ']', 'ur' => 'X',
#                    'tt' => '#', 'bt' => '#',
#       'll' => 'X', 'hl' => '=', 'vl' => 'I', 'lr' => 'X',          },
#   );
sub CScr{ # Close previously OpenedCursesScreen # Following are Curses funcs that might be useful to call in CloseScreen(): termname(),erasechar(),killchar()
  return(); }
sub EndW{ return(endwin()); } # just func alone can wrap things up nicely enough for l8r printz to work afterward from calling script? Not sure how or why!;
sub NumC{ return(COLORS()); }                                     # might also need delscreen() after endwin() above before returning?
# Octology::k8 object constructor as class method or copy as object method. First param can be ref to copy. Not including optional ref from copy,
#   default is no params to create a new empty k8 object. If params are supplied, they must be hash key => value pairs.
sub new{#OScr() unless($GLBL{'FLAGOPEN'});
  my($nvkr, $cork)= @_; my($keey, $valu); my $nobj = ref($nvkr); my $clas = $cork; # need Open Screen for new obj
  $clas = $nobj || $nvkr if(!defined($cork) || $cork !~ /::/); my $self = bless({}, $clas); # Class OR Key
  for my $attr ($self->AttrNamz()){ $self->{$attr} = $self->DfltValu($attr); # init defaults && copy if supposed to
                                    $self->{$attr} = $nvkr->{$attr} if($nobj); }  for(@KModNamz){ $self->{'_kmod'}->{$_} = 0; }
  if(defined($cork) && $cork !~ /::/){ $nvkr = shift if($nvkr =~ /::/); while(@_){ my $foun = 0; ($keey, $valu)=(shift, shift); # handle init params with
      for my $attr ($self->AttrNamz()){ if($attr =~ /$keey/i){ $self->{$attr} = $valu;$foun = 1; } }                            #   no colons (classname)
      unless(  $foun){ for my $attr ($self->AttrNamz()){ if($vanz{$attr} eq $keey){ $self->{$attr} = $valu; $foun = 1; } } # exact match
#       unless($foun){ die "!*EROR*! Octology::k8->new initialization key:$keey was not recognized!\n"; }
      }}}
  $self->{'_flagshrk'} = 0 if($self->{'_hite'} && $self->{'_widt'}); $self->Updt(1);
  $self->{'_wind'}=NeewWind($self->{'_hite'}, $self->{'_widt'}, $self->{'_yoff'}, $self->{'_xoff'});
  unless(exists($self->{'_wind'}) && defined($self->{'_wind'})){
   #die "!*EROR*! Octology::k8->new could not create window with hite:$self->{'_hite'},widt:$self->{'_widt'},yoff:$self->{'_yoff'},xoff:$self->{'_xoff'}!\n";
  } $self->TestDraw();$self->Move(-1, -1) unless($self->{'_ycrs'} || $self->{'_xcrs'}); # newwin does!autodraw so if therz init _text && autodraw is on...
 #CrsrVisi($self->{'_flagcvis'});
  return($self);}
sub Prnt{ # k8 object PrintString method
  my $self = shift; my %parm; my($ycrs, $xcrs); my($keey, $valu);
  my($cnum, $delt, $chrz);    my($yold, $xold); my($fgcl, $bgcl); my $foun;
  $parm{'nore'} = 0; # No Refresh flag init'd to false
  $parm{'ycrs'} = $self->{'_ycrs'};
  $parm{'xcrs'} = $self->{'_xcrs'};
  if($self->{'_btyp'}) { $parm{'ycrs'}++; $parm{'xcrs'}++; }
  $parm{'prin'} = $self->{'_flagprin'}; # init prin param
  while(@_){ ($keey, $valu)=(shift, shift); $foun = 0; if(defined($valu)){ # load params
      for my $attr ($self->AttrNamz()){ if($vanz{$attr} eq $keey){ $attr =~ s/^_*//; $parm{$attr} = $valu; $foun = 1; } } # exact match
      unless($foun){ $keey =~ s/^_*//; $parm{$keey} = $valu; }
    }else{ $parm{'text'} = $keey; } }
  $chrz = ref($parm{'text'}); # if text, fclr, or bclr are arrays like new or Draw would take, join them
  $parm{'text'} = join("\n", @{$parm{'text'}}) if($chrz eq 'ARRAY');
  if(exists($parm{'fclr'})){ $self->{'_flagclru'} = 1; $chrz = ref($parm{'fclr'}); $parm{'fclr'} = join("\n", @{$parm{'fclr'}}) if($chrz eq 'ARRAY'); }
  if(exists($parm{'bclr'})){ $self->{'_flagclru'} = 1; $chrz = ref($parm{'bclr'}); $parm{'bclr'} = join("\n", @{$parm{'bclr'}}) if($chrz eq 'ARRAY'); }
  return() unless(exists($parm{'text'}) && defined($parm{'text'}) && length($parm{'text'}));
  ($yold, $xold)=($self->{'_ycrs'}, $self->{'_xcrs'});
  $parm{'ycrs'} = $parm{'ytmp'} if(exists($parm{'ytmp'}));
  $parm{'xcrs'} = $parm{'xtmp'} if(exists($parm{'xtmp'})); # below had Malformed UTF-8 character (unexpected continU8ion byt 0x9b && 9c,wi no prECdng stRt byt)
  $parm{'text'} =~ s/[  ]/ /g; # Prnt does not support escaped printf chars like Draw
  if($parm{'prin'}){ if($self->{'_btyp'}){ if($parm{'ycrs'}){ $parm{'ycrs'}--; }else{ $parm{'zery'} = 1; }
                                           if($parm{'xcrs'}){ $parm{'xcrs'}--; }else{ $parm{'zerx'} = 1; } }
    unless(@{$self->{'_text'}} > $parm{'ycrs'} && defined($self->{'_text'}->[$parm{'ycrs'}])){ $self->{'_text'}->[$parm{'ycrs'}]  = ''; }
    if(length($self->{'_text'}->[$parm{'ycrs'}]) > $parm{'xcrs'}){substr($self->{'_text'}->[$parm{'ycrs'}],$parm{'xcrs'},length($parm{'text'}),$parm{'text'});}
    else{     $self->{'_text'}->[$parm{'ycrs'}] .= ' ' x ($parm{'xcrs'} - length($self->{'_text'}->[$parm{'ycrs'}])) . $parm{'text'};}
    if($self->{'_btyp'}){ $parm{'ycrs'}++ unless(exists($parm{'zery'})); $parm{'xcrs'}++ unless(exists($parm{'zerx'})); } }
  if(exists($parm{'fclr'}) || exists($parm{'bclr'})){ if($parm{'prin'}){ if($self->{'_btyp'}){ if($parm{'ycrs'}){ $parm{'ycrs'}--; }else{ $parm{'zery'} = 1; }
                                                                                               if($parm{'xcrs'}){ $parm{'xcrs'}--; }else{ $parm{'zerx'} = 1; }}
                                                                                        if($self->{'_btyp'}){ $parm{'ycrs'}++ unless(exists($parm{'zery'}));
                                                                                                              $parm{'xcrs'}++ unless(exists($parm{'zerx'})); }}
    $parm{'ycrs'} = 0 unless($parm{'ycrs'} =~ /^\d+$/); $parm{'xcrs'} = 0 unless($parm{'xcrs'} =~ /^\d+$/); $cnum = 0;
    while(length($parm{'text'})){ $chrz = substr($parm{'text'}, 0, 1, ''); $delt = 0;
      if(exists($parm{'fclr'}) && length($parm{'fclr'})){ $fgcl = substr($parm{'fclr'}, 0, 1, ''); }
      if(exists($parm{'bclr'}) && length($parm{'bclr'})){ $bgcl = substr($parm{'bclr'}, 0, 1, ''); } $self->InitPair($fgcl, $bgcl);
      while((!exists($parm{'fclr'}) || !length($parm{'fclr'})  || substr($parm{'fclr'}, 0, 1) eq $fgcl) &&
            (!exists($parm{'bclr'}) || !length($parm{'bclr'})  || substr($parm{'bclr'}, 0, 1) eq $bgcl) && length($parm{'text'})){ $cnum++; $delt++;
        substr($parm{'fclr'}, 0, 1, '') if(exists($parm{'fclr'}) && length($parm{'fclr'}));
        substr($parm{'bclr'}, 0, 1, '') if(exists($parm{'bclr'}) && length($parm{'bclr'})); $chrz .= substr($parm{'text'}, 0, 1, ''); }
      $chrz = '' unless(defined($chrz));
      if(exists($parm{'ycrs'}) && exists($parm{'xcrs'})){
        $self->{'_wind'}->move($parm{'ycrs'}, $parm{'xcrs'} + ($cnum - $delt));
        $self->{'_wind'}->addstring($chrz);
      }  $cnum++; }
  }else{ $cnum = length($parm{'text'}); if(exists($parm{'ycrs'}) && exists($parm{'xcrs'})){
      $self->{'_wind'}->move($parm{'ycrs'}, $parm{'xcrs'});
      $self->{'_wind'}->addstring($parm{'text'});
    }}
  if($self->{'_btyp'}){   $self->{'_ycrs'}--;   $self->{'_xcrs'}--; }
  if(exists($parm{'ytmp'}) || exists($parm{'xtmp'})){ $self->Move($yold, $xold); } #elsif(!$parm{'nore'}){ $self->{'_wind'}->refresh();}
  return($cnum);}
sub Draw{ # k8 object self Drawing method
  my $self = shift; my($fgcl, $bgcl); my($fgct, $bgct); my($lnum, $cnum);
  my($keey, $valu); my($delt, $char); my($yoff, $xoff); my($ordc, $ordd);
  my($ltxt, $clin, $blin);            my($dol8, $tndx, $foun);
  while(@_){($keey, $valu)=(shift, shift);$foun=0;if(defined($valu)){for my $attr($self->AttrNamz()){ # load key/vals like new()
        if     ($attr =~ /$keey/i || $vanz{$attr} eq $keey){ # exact match
          $self->{$attr}=$valu;$foun=1;}}}
    else{my $reft=ref($keey);
      if($reft eq 'ARRAY'){  $self->{'_text'} =            $keey ;}
      else                {@{$self->{'_text'}}=split(/\n/, $keey);}}}
  $self->Cler();#$self->Move(1,1); # Cler CSI 2J shud mv crsr to 0,0 or 1,1 (up-lt)
  for($lnum = 0;$lnum < @{$self->{'_text'}};$lnum++){
    $ltxt = $self->{'_text'}[$lnum];
#   $self->Move($lnum,0); # N27LHmKs:this mv messes up the border alignment for Mesg, Help, && Info windows, putting an extra space after the upper-right crnr;
    if(defined($ltxt)){#chomp($ltxt);
     #if(length($ltxt) < $self->{'_widt'}){$ltxt.=' ' x ($self->{'_widt'} - length($ltxt));} # pad length with spaces so Move above not needed
    }else{
      $ltxt =                                     ' ' x  $self->{'_widt'};}
   #if(length($ltxt) >  $self->{'_widt'}                         ){
   #  $ltxt = substr($ltxt, 0,  $self->{'_widt'}     );}
    print $ltxt;
  } return();} # replace cursor position && refresh the window
sub TestDraw{ # Test whether an auto-Draw() should be called
  $_[0]->Draw() if($_[0]->{'_text'} && @{$_[0]->{'_text'}} && $_[0]->{'_flagaudr'});}
sub AuDr{my $self=shift;my    $audr=shift;
  if(defined($audr) && $self->{'_flagaudr'} ne $audr){
    if($audr eq '^'){  $self->{'_flagaudr'} ^= 1;}
    else{$self->{'_flagaudr'}=$audr;}} # changing AUtoDRaw tied text mode
  return($self->{'_flagaudr'});}
sub ADTS{my $self=shift;my    $adts=shift;
  if(defined($adts) && $self->{'_flagadts'} ne $adts){
    if($adts eq '^'){  $self->{'_flagadts'} ^= 1;}
    else{$self->{'_flagadts'}=$adts;}} # changing AutoDraw Tied SGRA mode
  return($self->{'_flagadts'});}
sub ADTF{my $self=shift;my    $adtf=shift;
  if(defined($adtf) && $self->{'_flagadtf'} ne $adtf){
    if($adtf eq '^'){  $self->{'_flagadtf'} ^= 1;}
    else{$self->{'_flagadtf'}=$adtf;}} # changing AutoDraw Tied Fg   mode
  return($self->{'_flagadtf'});}
sub ADTB{my $self=shift;my    $adtb=shift;
  if(defined($adtb) && $self->{'_flagadtb'} ne $adtb){
    if($adtb eq '^'){  $self->{'_flagadtb'} ^= 1;}
    else{$self->{'_flagadtb'}=$adtb;}} # changing AutoDraw Tied Bg   mode
  return($self->{'_flagadtb'});}
sub SAAD{my $self=shift;my    $saad=shift; # Set All AutoDraw
  if(defined($saad) && $saad =~ /^[01^]$/){$self->AuDr($saad);$self->ADTS($saad);$self->ADTF($saad);$self->ADTB($saad);}}
# if I add new sub windows back l8r, then I'll also want Maxi, Shrk, && Cntr here
sub CVis{my $self=shift;my    $cvis=shift;
  if(defined($cvis) && $self->{'_flagcvis'} ne $cvis){
    if($cvis eq '^'){  $self->{'_flagcvis'} ^= 1;}
    else{$self->{'_flagcvis'}=$cvis;}$self->Draw() if($self->{'_flagaudr'});} # Cursor changed Visibility st8 so reDraw screen if AutoDraw
  return($self->{'_flagcvis'});}                                              # (eventually better to just redraw cursor char && !wholscrn)
sub Insr{my $self=shift;my    $insr=shift;
  if(defined($insr) && $self->{'_flaginsr'} ne $insr){
    if($insr eq '^'){  $self->{'_flaginsr'} ^= 1;}
    else{$self->{'_flaginsr'}=$insr;}} # changing whether Prnt will print in insert or overstrike mode (might l8r need cursor redraw here if reflects somehow)
  return($self->{'_flaginsr'});}
sub Term{my $self=shift;my    $term=shift;
  if(defined($term) && $self->{'_flagterm'} ne $term){
    if($term eq '^'){  $self->{'_flagterm'} ^= 1;}
    else{$self->{'_flagterm'}=$term;}} # changing whether whole c8 object is trying to start emul8ing a terminal
  return($self->{'_flagterm'});}
sub File{my $self=shift;my    $file=shift;
  if(defined($file) && $self->{'_flagfile'} ne $file){
    if($file eq '^'){  $self->{'_flagfile'} ^= 1;}
    else{$self->{'_flagfile'}=$file;}} # changing whether whole c8 object is trying to just encapsul8 a file
  return($self->{'_flagfile'});}
sub Cmnd{my $self=shift;my    $cmnd=shift;
  if(defined($cmnd) && $self->{'_flagcmnd'} ne $cmnd){
    if($cmnd eq '^'){  $self->{'_flagcmnd'} ^= 1;}
    else{$self->{'_flagcmnd'}=$cmnd;}} # changing whether whole c8 object is trying to just encapsul8 a command
  return($self->{'_flagcmnd'});}
sub Wait{my $self = shift;my $wait = 0;my($keey,$valu);my $foun;
  while(@_){ # load key/vals like new()
    ($keey,$valu)=(shift,shift);$foun = 0;
    if(defined($valu)){
      for my $attr ($self->AttrNamz()){
        if($attr =~ /$keey/i || $vanz{$attr} eq $keey){ # exact match
          $self->{$attr} = $valu;$foun = 1;}}
      unless($foun){
        if($keey =~ /wait/i){$wait = $valu;}
        else                {#die "!*EROR*! Curses::Simp->Wait key:$keey was not recognized!\n";
#         $keey =~ s/^_*/_/; # auto-add unfound?
#         $self->{$keey} = $valu;
        }}}
    else{$wait = $keey;}}
  if    ($self->{'_flagmili'}){ # cnv from Dflt float seconds to Curses ms
    $wait = int($wait * 1000); }
  return( napms($wait));}
sub D{my $self=shift;$self->Draw(@_);}
sub P{my $self=shift;$self->Prnt(@_);}
sub W{my $self=shift;$self->Wait(@_);}
sub K{my $self=shift;$self->GetK(@_);}
sub GetK{my $self=shift;my $tmot=shift || 0;my $rmkn;my $SKpc='';my $char;$keey='';
#while (!defined($keey) || $keey ne 'x'){$keey=$rmkn=ReadKey(3);
# if  ( defined($keey)){
#   if(exists($remp{$keey})){$rmkn=$remp{$keey};}
#   elsif(length($SKpc) < 5){$SKpc.=$rmkn if($rmkn !~ /(\e|\n)/);}
#   else{print "<$SKpc>";$SKpc='';}
#   if(exists($remp{$SKpc})){$rmkn.="=$remp{$SKpc}";$SKpc='';}
#   printf("(%3d)$rmkn; ",ord($keey));}
# else{print '.';}}
  if($tmot ne '-1'){
    if    ($self->{'_flagmili'}){ # cnv from Dflt float seconds to Curses ms
      $tmot=int($tmot * 1000);}}
# for(@KModNamz){ $self->{'_kmod'}->{$_}=0; } # clear keymods
  $char=$rmkn=ReadKey($tmot);
  if(defined($char)){
#   $char="$knum{$char}" if(exists($knum{$char})); # "KEY_" names if exists
    unshift(@{$self->{'_kque'}}, $char);
#   unshift(@{$self->{'_mque'}}, { }); # save %kmod too
#   for(@KModNamz){$self->{'_mque'}->[0]->{$_}=$self->{'_kmod'}->{$_};}
    while  (@{$self->{'_kque'}} > 64){ # keep up to 64 key presses && kmods
      pop  (@{$self->{'_kque'}});
#     pop  (@{$self->{'_mque'}});
    }
    if(exists($remp{$char})){$rmkn=$remp{$char};}
    elsif(length( $SKpc)< 5){$SKpc.=$rmkn if($rmkn !~ /(\e|\n)/);}
    else{$keey.="<$SKpc>";$SKpc='';}
    # mAB if $rmkn eq 'SKp' thN loop my $tchr=ReadKey(0) until !defined && concat rest of Escape codez?
    if(exists($remp{$SKpc})){$rmkn.="=$remp{$SKpc}";$SKpc='';}
    $keey.=sprintf("(%3d)$rmkn; ",ord($char));
  }else{ $char='-1';}
  return($char); }
sub KMod{ # accessor for the %{$self->{'_kmod'}} hash
  my $self = shift; my $kmod = 'KMOD_NONE';
  my($keey, $valu); my $foun;
  while(@_){ # load key/vals like new()
    ($keey, $valu)=(shift, shift); $foun = 0;
    if(defined($valu)){
      for my $attr ($self->AttrNamz()){
        if     ($attr =~ /$keey/i ||
                $vanz{$attr} eq $keey){ # exact match
          $self->{$attr} = $valu;
          $foun = 1;
        }
      }
      unless($foun){
        if($keey =~ /kmod/i){
          $kmod = $valu;
#       }else{#die "!*EROR*! Curses::Simp::KMod key:$keey was not recognized!\n";
#         $keey =~ s/^_*/_/; # auto-add unfound
#         $self->{$keey} = $valu;
        }
      }
    }else{
      $kmod = $keey;
    }
  }
  for(@KModNamz){if(/$kmod$/i){$valu=shift;$self->{'_kmod'}->{$_}=$valu if(defined($valu));return($self->{'_kmod'}->{$_});}}}
sub GetS{ # Get a string at the cursor or pass temp y, x, and length params
  my $self = shift(); # maybe GetS() should update the cursor loc too?
  my $ycrs = shift(); $ycrs = $self->YCrs() unless(defined($ycrs));
  my $xcrs = shift(); $xcrs = $self->XCrs() unless(defined($xcrs));
  my $leng = shift();
  my $line = $self->{'_text'}->[$ycrs]; $line = '' unless(defined($line));
  if(length($line) >= $xcrs){
    if(defined($leng) && $leng <= (length($line) - $xcrs)){
      return(substr($line, $xcrs, $leng));
    }else{
      return(substr($line, $xcrs));
    }}}
sub Move{ # update cursor position
  my $self=shift;my($ycrs,$xcrs)=(shift,shift);my $eflg=0;
  if(defined($ycrs) && defined($xcrs)){ # (-1, -1) is a special Move exception to put cursor in lower right corner of border (if BTyp)
    if($ycrs == -1 && $xcrs == -1){ $eflg = 1;
      $ycrs = ($self->{'_hite'}-1);
      $xcrs = ($self->{'_widt'}-1);}}
  $ycrs = 0 if($ycrs < 0);
  $xcrs = 0 if($xcrs < 0);
 #$ycrs = $self->{'_hite'}-1 if($ycrs > $self->{'_hite'}-1);
 #$xcrs = $self->{'_widt'}-1 if($xcrs > $self->{'_widt'}-1); # do they need to start 1,1 or 0,0?
  printf("\e[%d;%dH",$ycrs,$xcrs); # $self->{'_ycrs'}+1, $self->{'_xcrs'}+1); # mAB f nstd of H wud also work?
  return($ycrs,$xcrs);} #print SKp cOdz 2 mv cursor to $ycrs,$xcrs;
sub Rsiz{ # update window dimensions (Resize)
  my $self = shift; my $hite = shift; my $widt = shift; my $eflg = 0;
  my ($ymax, $xmax);
  #if(is_term_resized()){endwin();refresh();} # resizeterm();} # try2handle SIGWINCH KEY_RESIZE 401 terminal size changes,but might need2try endwin()/refresh()
  #    since preferable use_tioctl(1) option is not available in my Curses.pm && use_env(0) just pegs 80x24. =( Might use doupdate() instead of refresh()?
  if(defined($hite) && defined($widt)){
   #$hite = getmaxy() if($hite == -1);
   #$widt = getmaxx() if($widt == -1);
  }else{
    $hite = $self->{'_hite'} unless(defined($hite));
    $widt = $self->{'_widt'};
  }
  $hite = 1 if($hite < 1);
  $widt = 1 if($widt < 1);
  if($self->{'_btyp'}){ # don't resize text && borders away
    $hite = 3 if($hite < 3);
    $widt = 3 if($widt < 3);
    $ymax = $self->{'_wind'}->getmaxy();
    $xmax = $self->{'_wind'}->getmaxx();
    if(($self->{'_ycrs'} == ($hite - 2) &&
        $self->{'_xcrs'} == ($widt - 3) &&
        $self->{'_widt'} != ($xmax    )) ||
       ($self->{'_ycrs'} == ($hite - 3) &&
        $self->{'_xcrs'} == ($widt - 2) &&
        $self->{'_hite'} != ($ymax    )) ||
       ($self->{'_ycrs'} == ($hite - 1) &&
        $self->{'_xcrs'} == ($widt - 2)) ||
       ($self->{'_ycrs'} == ($hite - 2) &&
        $self->{'_xcrs'} == ($widt - 1))){
      $eflg = 1;
    }
  }
  $self->{'_wind'}->resize($hite, $widt);
  $self->{'_wind'}->refresh();
  $self->ShokScrn();
  $self->{'_wind'}->getmaxyx($self->{'_hite'}, $self->{'_widt'});
  $self->Move(-1, -1) if($eflg);
  return($self->{'_hite'}, $self->{'_widt'});
}
sub Updt { # update a Simp object's dimensions (resize && mvwin)
  my $self = shift; my $noch = 0; # No Changes flag
  my($keey, $valu); my $foun;
  while(@_){ # load key/vals like new()
    ($keey, $valu)=(shift, shift); $foun = 0;
    if(defined($valu)){
      for my $attr ($self->AttrNamz()){
        if     ($attr =~ /$keey/i || $vanz{$attr} eq $keey){ # exact match
          $self->{$attr} = $valu;$foun = 1;}}
      unless($foun){
        if($keey =~ /noch/i){$noch = $valu;}
        else                {#die "!*EROR*! Curses::Simp->Updt key:$keey was not recognized!\n";
#         $keey =~ s/^_*/_/; # auto-add unfound?
#         $self->{$keey} = $valu;
        }}}
    else{$noch = $keey;}}
  my($hite, $widt)=($self->{'_hite'}, $self->{'_widt'});
  my($yoff, $xoff)=($self->{'_yoff'}, $self->{'_xoff'});
 #$self->{'_wind'}->getmaxyx($hite, $widt) unless($noch);
 #$self->{'_wind'}->getbegyx($yoff, $xoff) unless($noch);
  if(length($self->{'_titl'})){
    # if there's a window title, there must be a border to hold it
    $self->{'_btyp'} = 1 unless($self->{'_btyp'});
    # if titl+bord > Widt, trunc titl to Widt - 4 to fit screen
   #if(length($self->{'_titl'}) > (getmaxx() - 4)){
   #  $self->{'_titl'} = substr($self->{'_titl'}, 0, (getmaxx() - 4));}
  }
  if($self->{'_flagmaxi'}){ # maximize
   #$self->{'_widt'} = getmaxx();
   #$self->{'_hite'} = getmaxy();
    $self->{'_yoff'} = 0;
    $self->{'_xoff'} = 0;
  }else{
    if($self->{'_flagshrk'}){ # shrink to (hite, wider of titl+bord || text)
      if($self->{'_text'} && @{$self->{'_text'}}){
        $self->{'_hite'}  =  @{$self->{'_text'}};
        $self->{'_hite'} +=  2 if($self->{'_btyp'});}
     #$self->{'_hite'} = getmaxy() if($self->{'_hite'} > getmaxy());
      $self->{'_widt'}  =  1;
      $self->{'_widt'} += (1 + length($self->{'_titl'})) if(length($self->{'_titl'}));
      if($self->{'_text'} && @{$self->{'_text'}}){
        for(@{$self->{'_text'}}){
          $self->{'_widt'}  = length($_) if($self->{'_widt'} < length($_));}
        $self->{'_widt'} += 2 if($self->{'_btyp'});}
     #$self->{'_widt'} = getmaxx() if($self->{'_widt'} > getmaxx());
    }
   #if($self->{'_flagcntr'}){ # set yoff,xoff so window is centered
     #$self->{'_yoff'} = int((getmaxy() - $self->{'_hite'}) / 2);
     #$self->{'_xoff'} = int((getmaxx() - $self->{'_widt'}) / 2);}
  }
  $self->{'_yoff'} = 0 if($self->{'_yoff'} < 0);
  $self->{'_xoff'} = 0 if($self->{'_xoff'} < 0);
  unless($noch){ # the window has been created so it's ok to change it
    $noch = 1; # reappropriate NoChanges flag to designate whether changed
    if(  $hite != $self->{'_hite'} || $widt != $self->{'_widt'}){
      $self->Rsiz();
#     $self->{'_wind'}->resize($self->{'_hite'}, $self->{'_widt'});
      if($hite >  $self->{'_hite'} || $widt >  $self->{'_widt'}){
        $self->ShokScrn(2);} # Clear/Refresh main screen because window shrank
      $noch = 0;}
    if($yoff != $self->{'_yoff'} || $xoff != $self->{'_xoff'}){
      $self->{'_wind'}->mvwin( $self->{'_yoff'}, $self->{'_xoff'});
      $self->ShokScrn(2); # Clear/Refresh main screen because window moved
      $noch = 0;}}
  return(!$noch);} # return flag telling whether self resized or moved
sub DESTROY{my $self=shift || return(); }
# allow sgr attr d8a 2D array to be tied too; 2du:fix 2B 2D array;
package Octology::k8::sgra;
sub TIEARRAY {my $clas=shift;my $prnt=shift; # bless an anon array with just parent in case more to store
  die "!*EROR*! Tie::Array to sgra has no parent k8 object!\n" unless(defined($prnt) && ref($prnt) eq 'Octology::k8');
  my $self=bless([$prnt], $clas);return($self); }
sub FETCH    {if(@_ > 2){
                return(         $_[0]->[0]->{'_sgra'}->[$_[1]]->[$_[2]]); }
              else      {
                return(         $_[0]->[0]->{'_sgra'}->[$_[1]]); }}
sub FETCHSIZE{  return(scalar(@{$_[0]->[0]->{'_sgra'}})       ); }
sub STORE    {if(@_ > 3){
  $_[0]->[0]->{'_sgra'}->[$_[1]]->[$_[2]] = $_[3];}
              else      {
  $_[0]->[0]->{'_sgra'}->[$_[1]] = $_[2];}
  $_[0]->[0]->Octology::k8::TestDraw() if($_[0]->[0]->{'_flagadts'});}
sub STORESIZE{
  splice(@{$_[0]->[0]->{'_sgra'}}, $_[1], @{$_[0]->[0]->{'_sgra'}} - $_[1]);
  $_[0]->[0]->Octology::k8::TestDraw() if($_[0]->[0]->{'_flagadts'});}
sub EXISTS   { return(0) unless(defined($_[0]->[0]->{'_sgra'}->[$_[1]])); return(1); }
sub CLEAR    {             @{$_[0]->[0]->{'_sgra'}} = ();         $_[0]->[0]->Octology::k8::TestDraw() if($_[0]->[0]->{'_flagadts'}); }
sub PUSH     {        push(@{$_[0]->[0]->{'_sgra'}}, $_[1]);      $_[0]->[0]->Octology::k8::TestDraw() if($_[0]->[0]->{'_flagadts'}); }
sub POP      { $_ =    pop(@{$_[0]->[0]->{'_sgra'}});             $_[0]->[0]->Octology::k8::TestDraw() if($_[0]->[0]->{'_flagadts'}); return($_); }
sub SHIFT    { $_ =  shift(@{$_[0]->[0]->{'_sgra'}});             $_[0]->[0]->Octology::k8::TestDraw() if($_[0]->[0]->{'_flagadts'}); return($_); }
sub UNSHIFT  {     unshift(@{$_[0]->[0]->{'_sgra'}}, $_[1]);      $_[0]->[0]->Octology::k8::TestDraw() if($_[0]->[0]->{'_flagadts'}); }
sub SPLICE   {my $self = shift;my $offs = shift || 0;
  my $leng = shift; $leng = $self->[0]->FETCHSIZE() - $offs unless(defined($leng));
  my $retn = splice(@{$self->[0]->{'_sgra'}}, $offs, $leng, @_);
  $self->[0]->Octology::k8::TestDraw() if($self->[0]->{'_flagadts'});return($retn);}
sub EXTEND   { }
# allow color arrays to be tied too
package Octology::k8::fclr;
sub TIEARRAY {my $clas=shift;my $prnt=shift; # bless an anon array with just parent in case more to store
  die "!*EROR*! Need additional Parent object reference  parameter to tie $clas to!\n" unless(defined($prnt) && ref($prnt) eq 'Octology::k8');
  my $self=bless([$prnt], $clas);$prnt->{'_flagclru'}=1;return($self);}
sub FETCH    { return(         $_[0]->[0]->{'_fclr'}->[$_[1]]); }
sub FETCHSIZE{ return(scalar(@{$_[0]->[0]->{'_fclr'}})       ); }
sub STORE    {
  $_[0]->[0]->{'_fclr'}->[$_[1]] = $_[2];
  $_[0]->[0]->Octology::k8::TestDraw() if($_[0]->[0]->{'_flagadtf'});}
sub STORESIZE{
  splice(@{$_[0]->[0]->{'_fclr'}}, $_[1], @{$_[0]->[0]->{'_fclr'}} - $_[1]);
  $_[0]->[0]->Octology::k8::TestDraw() if($_[0]->[0]->{'_flagadtf'});}
sub EXISTS   { return(0) unless(defined($_[0]->[0]->{'_fclr'}->[$_[1]])); return(1); }
sub CLEAR    {             @{$_[0]->[0]->{'_fclr'}} = ();         $_[0]->[0]->Octology::k8::TestDraw() if($_[0]->[0]->{'_flagadtf'}); }
sub PUSH     {        push(@{$_[0]->[0]->{'_fclr'}}, $_[1]);      $_[0]->[0]->Octology::k8::TestDraw() if($_[0]->[0]->{'_flagadtf'}); }
sub POP      { $_ =    pop(@{$_[0]->[0]->{'_fclr'}});             $_[0]->[0]->Octology::k8::TestDraw() if($_[0]->[0]->{'_flagadtf'}); return($_); }
sub SHIFT    { $_ =  shift(@{$_[0]->[0]->{'_fclr'}});             $_[0]->[0]->Octology::k8::TestDraw() if($_[0]->[0]->{'_flagadtf'}); return($_); }
sub UNSHIFT  {     unshift(@{$_[0]->[0]->{'_fclr'}}, $_[1]);      $_[0]->[0]->Octology::k8::TestDraw() if($_[0]->[0]->{'_flagadtf'}); }
sub SPLICE   {my $self = shift;my $offs = shift || 0;
  my $leng = shift; $leng = $self->[0]->FETCHSIZE() - $offs unless(defined($leng));
  my $retn = splice(@{$self->[0]->{'_fclr'}}, $offs, $leng, @_);
  $self->[0]->Octology::k8::TestDraw() if($self->[0]->{'_flagadtf'});return($retn);}
sub EXTEND   { }
package Octology::k8::bclr;
sub TIEARRAY {my $clas=shift;my $prnt=shift;
  die "!*EROR*! Need additional Parent object reference  parameter to tie $clas to!\n" unless(defined($prnt) && ref($prnt) eq 'Octology::k8');
  my $self=bless([$prnt], $clas);$prnt->{'_flagclru'}=1;return($self);}
sub FETCH    { return(         $_[0]->[0]->{'_bclr'}->[$_[1]]); }
sub FETCHSIZE{ return(scalar(@{$_[0]->[0]->{'_bclr'}})       ); }
sub STORE    {
  $_[0]->[0]->{'_bclr'}->[$_[1]] = $_[2];
  $_[0]->[0]->Octology::k8::TestDraw() if($_[0]->[0]->{'_flagadtb'});}
sub STORESIZE{
  splice(@{$_[0]->[0]->{'_bclr'}}, $_[1], @{$_[0]->[0]->{'_bclr'}} - $_[1]);
  $_[0]->[0]->Octology::k8::TestDraw() if($_[0]->[0]->{'_flagadtb'});}
sub EXISTS   { return(0) unless(defined($_[0]->[0]->{'_bclr'}->[$_[1]])); return(1); }
sub CLEAR    {             @{$_[0]->[0]->{'_bclr'}} = ();         $_[0]->[0]->Octology::k8::TestDraw() if($_[0]->[0]->{'_flagadtb'}); }
sub PUSH     {        push(@{$_[0]->[0]->{'_bclr'}}, $_[1]);      $_[0]->[0]->Octology::k8::TestDraw() if($_[0]->[0]->{'_flagadtb'}); }
sub POP      { $_ =    pop(@{$_[0]->[0]->{'_bclr'}});             $_[0]->[0]->Octology::k8::TestDraw() if($_[0]->[0]->{'_flagadtb'}); return($_); }
sub SHIFT    { $_ =  shift(@{$_[0]->[0]->{'_bclr'}});             $_[0]->[0]->Octology::k8::TestDraw() if($_[0]->[0]->{'_flagadtb'}); return($_); }
sub UNSHIFT  {     unshift(@{$_[0]->[0]->{'_bclr'}}, $_[1]);      $_[0]->[0]->Octology::k8::TestDraw() if($_[0]->[0]->{'_flagadtb'}); }
sub SPLICE   {my $self=shift;my $offs=shift || 0;
  my $leng = shift; $leng = $self->[0]->FETCHSIZE() - $offs unless(defined($leng));
  my $retn = splice(@{$self->[0]->{'_bclr'}}, $offs, $leng, @_);
  $self->[0]->Octology::k8::TestDraw() if($self->[0]->{'_flagadtb'});return($retn);}
sub EXTEND   { }
8;
