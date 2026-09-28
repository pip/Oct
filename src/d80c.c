// P6KM9Pad:basic triangle example from: HTTPS://Wiki.LibSDL.Org/SDL3/SDL_RenderGeometry ; gr8? HTTPS://GitHub.Com/SourceCodeExamples/C-Source-Code-Examples ;
// Compile: g++ d80c.c -o d80c -L../build -lSDL3; or…  ## `g++ -O3 d80c.c -o d80c -lSDL3`; ## P6SMD8OD:note -O3 optimizes bin exe siz && -Wall warnz evrythng;
// $d8$S='P6QM00NS'; <-oldnew\/`pkg-config --libs --cflags sdl3` to gNr8 -L && -l optionz; ## P76MGO76:renamed this to d8od 4 DebugText leaving d8oc 4 TTF C!;
// 2du:try2get gfx primz 2 rNder,mk tri rot8,wi keydn,add mixer/snd,mk 12,60,365+tix etc.; ## P7PM780c:renamed AgN 2 d80c since in C a .c src fIl oc 4 TTF ya;
//  +offset each degree amount by sub-portion of next smaller unit's usage,+bild all hands out of triangle geometry wich wAvz around length 4 Xtra visibility;
//  +stuD macros for rl2h?,+try wrapr funcs wich take RGBl && 0..255 alpha sepR8ly, but maybe also as b64 chars or 1 b256 char if I can grok UTF8 in SDL3Enuf;
//  +mk .f0nt render wi sKlz (Rect per BitMap pixL) && optnl cNtr coordz,+redo dA DgrEz tickz pointz (with just y--) to trace 3 pixL lInz on DgrEz of rOt8ion;
//  +mk winding tighter && plAc fscl=1 0..59 f0ntz along minute mRkz,+mk bigr fscl=2or3 along 12,2,4,6,8,10hourz && upd8 big fscl=8or10 in midl wi secondhand;
//  +lOd && pRs all pal8 fIlz lIk f0ntz, show input keyz help text in cornerz;
#include <locale.h>
#include <wchar.h>  // not wstdio.h instead below? auto-gets w version from wchar here somehow maybe?;
#include <stdio.h>  //  print()f ?     ?   etc…
#include <stdlib.h> //   rand(), getenv(), etc…
#include <stddef.h> //   size_t
#include <string.h> // strlen()
//nclude <math.h>   //    sin() cos() M_PI etc…; may not need math.h once I find SDL's constant for P_PI; Looks like it's: SDL_PI_D probably;
#include <SDL3/SDL.h>
#include <SDL3/SDL_main.h> // ~/dvl/t8/sdl/SDL3/SDL3-3.2.16/docs/README-main-functions.md tells !2use main variable nAm since this #defines main 4othr pl@4mz;
#include <SDL3/SDL_time.h> // 2du:try duping TTF from Ravbug sdl3-sample src main.cpp;
// long def below obtained from: `pl -MMath::BigFloat -e "print Math::BigFloat->bpi();"`
//efine         M_PI       3.141590     // printf("M_PI from math.h is:%lf;\n",M_PI);
#define         P_PI       3.141592653589793238462643383279502884197 // compare against SDL_PI_D (just 3.141593) as probably same or very similar;
#define         vertLen    3
#define         hvrtLen   24
#define         pntzLen 4096
const char *d8VS="Q9PMGATE";bool dbug=false; // better to have d8VS be in code variable && usable, rather than orig just up in header comments;
typedef struct{ char  *d8a;
                size_t len; } lstr; // how 2 du a typedef struct for lengthedstringz or mAB f8 f0nt BitMapz?;
SDL_Vertex vert[vertLen]; // Triangle vertex triplet (or l8r strips?)
SDL_Vertex hvrt[hvrtLen]; // Triangle vertex tripletz for all 8handz!
SDL_FPoint farc[pntzLen]; // First-ARC of just initial templ8 octant!
SDL_FPoint pntz[pntzLen]; // "Jesko's Method" pseudo-code BlOw from En.WikiPedia.Org/wiki/Midpoint_circle_algorithm "Bresenham's LineAlgo" adapted4 circles;
char       cpst[pntzLen]; // hold itoa output CoPiedSTring?;
char *home=getenv("HOME");char ff0z[7]="mrtcqd"; // Perl's $ENV{'HOME'} for finding ~/lib/Oct/f8/f0nt/*.f0nt && pal8z l8r 2; Favorite f0ntz in clockwise ordr;
char  sb64[257]="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz._                                                        uvwxyz._0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz._0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz._"; // 2du:get b8.pm && lern u8 4 sb256 nstd;
// Whoops! Accidentally walked off end of sb64 abov in2 pal8z when winding (int)j/6 up 2 720+90 or something;
//t   sb10(char  b64c){for(int i=0;i<64;i++){if(sb64[i] == b64c){return i;}}return -1;} // wilnEd Curses-lIk wIdchar suport inC 4proper UTF8 4non-Dbug print;
int   sb10(char  b64c){if(b64c == '_'){return 63;}
                  else if(b64c == '.'){return 62;}else if('a' <= b64c && b64c <= 'z'){return(b64c - 'a' + 36);} // this shudB faster than basic for loop abov;
                                                  else if('A' <= b64c && b64c <= 'Z'){return(b64c - 'A' + 10);}
                                                  else if('0' <= b64c && b64c <= '9'){return(b64c - '0'     );}return -1;}
unsigned long int b10(char *b64s){unsigned long int b10v=0;for(int sndx=0;sndx<strlen(b64s);sndx++){b10v*=64;b10v+=sb10(b64s[sndx]);}return b10v;}
int   hw  [8]   ={ 8, 6, 5, 4,  8, 6, 5, 4}; // hand triangle half-widthz (perpendicular distance to project to make fat end of trianglez from clock-ceNter);
char  pl8D[8][5]={"_00m","rX0y","__0y","0_0C", "0__F","00_3","_0_p","X0rp"}; // RoYGCBMp plucked out of Default.pal8; pl8g && o rEplAcd by f8pd[pdnd] lOded8a;
char  pl8o[8][5]={"_37" ,"_V7" ,"__3" ,"3_7" , "3__" ,"37_" ,"y7_" ,"b3t" }; // OriGinal pal8 that was still used for the clock armz/handz, but no longer is;
const    char  f8pm[64][9]={"Default" , "Default" , "Default" , "Default" , "Default" , "Default" , "Default" , "Default" , // need [64][260][5] 4 64 pal8 fIlz
                            "8bow"    , "Default" , "Default" , "Bepspurp", "Default" , "Default" , "Default" , "Flipped" , //   wi -F -b -C -B hedr colrz thN
                            "Default" , "Heather" , "Default" , "Default" , "Default" , "Default" , "Default" , "Default" , //   up2 256 more colr dFinitionz
                            "Default" , "Penguin" , "Default" , "deepRed" , "Sweet"   , "Tigzfavz", "Default" , "Default" , //   only rEally in Default thN
                            "Default" , "Default" , "Default" , "Default" , "Default" , "bLUES"   , "cOOL"    , "dARKZ"   , //   othr 2 4m@z R RoYGCBMp 8bow
                            "Default" , "TIGSfAVS", "gOOFY"   , "Default" , "Default" , "Default" , "Default" , "Default" , //   or Dfalt krOgcbPw KRYGCBMW;
                            "Default" , "nICE"    , "Default" , "DARKpRIM", "Default" , "r"       , "sILLY"   , "t"       , // paleta-pal8 has -M=ANSI ordr;
                            "Default" , "Default" , "Default" , "Default" , "yEL"     , "Default" , "Default" , "Default" }; // added all pal8 fIlz hEr;
// will probably just do [64][8][5] for 64 pal8 fIlz, 8bow just cherry-pick out RoYGCBMp from RGBl dFinitionz in every fIle; // don't nEd rSt of pal8 d8a yet;
         char  f8pd[64][8][5];char pdnd=8; // f8 pal8-d8a && pal8-d8a iNDex 2 loop around B4 just accepting abbreV8ion keyz;
/*our %f8pm=( # defining default F8Pal8Map (should eventually crE8 at least 64 pal8 files to key here for loading && usage in a c8 col8 layer for pal8 file)
  'B' => 'Bepspurp', 'c' => 'cOOL'    , 'd' => 'dARKZ'   , 'R' => 'deepRed' , 'g' => 'gOOFY'   , 'r' => 'r'       , 'f' => 'TIGSfAVS', 't' => 't'       ,
  'b' => 'bLUES'   , 'p' => 'DARKpRIM', 'D' => 'Default' , 'F' => 'Flipped' , 'n' => 'nICE'    , 's' => 'sILLY'   , 'T' => 'Tigzfavz', 'y' => 'yEL'     ,
  '8' => '8bow'    , 'P' => 'Penguin' , 'H' => 'Heather' ,                                       'S' => 'Sweet'   ,); # this hash def copied from a8.pm; */
const    char  f8fm[64][9]={"standrd0", "roman-1" , "futura-2", "lat4-163", "lat4-16+", "finnish5", "gr.f16"  , "thin7"   ,
                            "tallg88d", "france9" , "Alt-8x16", "Bold"    , "CyrilliC", "moDern-1", "EurotypE", "Fraktur" ,
                            "Greek"   , "Hebrew"  , "Inverted", "scottJ"  , "blocK"   , "Lcd"     , "Modern-2", "Norway"  ,
                            "crOstall", "suPer"   , "teQton"  , "ReveRse" , "Surreal" , "Thai"    , "coUrier" , "silVer"  ,
                            "backWard", "bigXerif", "stretchY", "ZanZurf" , "FUTURa-1", "bROADWAY", "cALLIGRA", "dECO"    ,
                            "eMPTY"   , "fAT"     , "gRFIXED" , "hEARST"  , "iTALiCS" , "CRAKRjAK", "kIDS-1"  , "lEDFONT" ,
                            "mED"     , "nICEFnT" , "FRESNo"  , "SLOppY"  , "ANTIqUE" , "rOMAN3"  , "sCRIPT"  , "tEKtItE" ,
                            "COMPuTER", "MEDIEvAL", "wEIRD"   , "xANxERIF", "HyLAS"   , "zWIzz-1" , "bnc.drop", "bnc_blok"}; // f8 f0nt map in b64 ordr;
unsigned char  f8bm[64][256][16]; // shud B 262144 bytez tOtl && nEdz ucharz to not get -128..-1 valz! OMG!;
int   lf8z(){for(int fndx=0;fndx<64;fndx++){char f8fn[pntzLen];sprintf(f8fn, "%s/lib/Oct/f8/f0nt/%s.f0nt", home, f8fm[fndx]);
    FILE *f8fs =        fopen(f8fn, "r");   char bufr[512]; // 36966 should fit entire filez (except for lat4-19.f0nt which needz 43878 bytez;
    if  (!f8fs){perror("fopen");return 1;}  char rowe[512];int bgin=0, bend=15, hite=16;
    if   (fgets(bufr, sizeof(bufr), f8fs)){ // gets string from file stream up 2 \n or EOF; // 1st strip hedr && load hite (warn if !16);
      if(bufr[11] != 'G'  && dbug){printf("!*Warn*! file:%s header 12th byte=%c not 'G' 16!\n", f8fn, bufr[11]);hite=sb10(bufr[11]);}
      if(bufr[12] != '\n' && dbug){printf("!*Warn*! file:%s header 13th byte=%c not '\\n' !\n", f8fn, bufr[12]);}}
    while(fgets(bufr, sizeof(bufr), f8fs)){ // thN loop linez && use b10 2 load bgin && bend from b64-b64 lInz;
      if     (strlen(bufr) == 4 && bufr[1] == '-'){bgin=                 sb10(bufr[0]);bend=                 sb10(bufr[2]);}
      else if(strlen(bufr) == 5 && bufr[1] == '-'){bgin=                 sb10(bufr[0]);bend=sb10(bufr[2])*64+sb10(bufr[3]);} // sb64-2charb64 shudBOnlycustom;
      else if(strlen(bufr) == 6 && bufr[2] == '-'){bgin=sb10(bufr[0])*64+sb10(bufr[1]);bend=sb10(bufr[3])*64+sb10(bufr[4]);} //printf( "%lu ", strlen(bufr));
      else if(dbug                               ){printf("!*Warn*! file:%s has undetected b64-b64 indices line: %s!\n",f8fn,bufr);}
      for      (int rndx=0   ;rndx< hite;rndx++){if(fgets(rowe, sizeof(rowe), f8fs)){ // now for loop 2 hite,fgets rowe,thN loop bgin2bend&&lOd f8bm;
          for  (int bndx=bgin;bndx<=bend;bndx++){unsigned char bitv=1; //f8bm[fndx][bndx][rndx]=0; // rowe-indX abov,blok/btmp-indX hEr,colm-indXBlO;
            for(int cndx=0   ;cndx< 8   ;cndx++){ // && 0 in if below caused it not to hang, but allowing wud segfault && I don't understand why!; !uchar bitv;
              if(rowe[(bndx-bgin)*9+cndx] == '#'){f8bm[fndx][bndx][rndx] += bitv;} // assumes Xactly "--#--#-- " 4m@ 4 each block;
              bitv*=2;} if(dbug) printf("%u ",    f8bm[fndx][bndx][rndx]);
          }}}           if(dbug) printf("." );  } if(dbug) printf(" %2d:",fndx+1);
    fclose(f8fs);}      if(dbug) printf("\n");
  for(int fndx=0;fndx<64;fndx++){char f8fn[pntzLen];sprintf(f8fn, "%s/lib/Oct/f8/pal8/%s.pal8", home, f8pm[fndx]);
    FILE *f8fs =        fopen(f8fn, "r");   char bufr[4096],rowe[4096]; // 1959 bytes should fit 260 (4 hedr -FbCB) color dFz on 1 huge lIne
    if  (!f8fs){perror("fopen");return 1;} for(int ondx=0;ondx<8;ondx++){strncpy(f8pd[fndx][ondx],pl8D[ondx],5);} // prE-lOd all pal8-d8a wi Default 8bOw-ndx;
    if  (!strncmp(f8pm[fndx],"Default",8)){continue;}
    if   (fgets(bufr, sizeof(bufr), f8fs)){ // gets string from file stream up 2 \n or EOF; // 1st strip hedr shebang && cmnt lInz && warn if !Xpected string;
      if(!strncmp(bufr,"#!/bin/sh",10) && dbug){printf("!*Warn*! file:%s header top-line not expected:'#!/bin/sh'!\n", f8fn);}}
    while(fgets(bufr, sizeof(bufr), f8fs)){int bndx=0;while(bufr[bndx] == ' ' || bufr[bndx] == '\t') bndx++; // 1st skip any lEdng spAcz||tabz B4 ckng4pound;
      if(bufr[bndx  ] == '#') continue;   const char* boff=&bufr[bndx]; // loop to non-comment linez; Declare const char pointer at 1st non-space&&non-pound;
      char tokz[22][9];int bond=0,tndx=0,cndx=0; // enough room 4 pal8 -FbCB 8bow && 16 RGBlz; // 1st non-spaces nXt should be: "pal8 ";
      if(!strncmp(boff,"pal8 ",5)){ //printf("%-8s:%s",f8pm[fndx],boff);
        while(bond<strlen(boff)){ // skip /^\s*-[FbCB]=?\S{3,4}/ regex tokenz thN stRt counting in2 8pal8 ndxz krOgcbPw KRYGCBMW && lOd thOz RGBlz;
          while(boff[bond] != ' '){tokz[tndx][cndx++]=boff[bond++];} tokz[tndx++][cndx]='\0';cndx=0; // lOad non-spAce tOkNz
          while(boff[bond] == ' '){                        bond++ ;}} // thN skip past any amount of spAcez until nXt non-spAc tOkN
        int tNdx=0;while(tokz[tNdx][0] == '-' || !strncmp(tokz[tNdx],"pal8",5)) tNdx++; // skip pal8 && -FbCB tOkNz 2 probably be on 8bow or 16 Dfalt RGBlz;
        if(!strncmp(tokz[tNdx],"RoYGCBMp",9)){tNdx++;if(tndx == 14 && tokz[13][3] == '\n'){tokz[13][3]='\0';} // chomp final newline with null-termin8or;
                                                     for(int Cndx=0;Cndx<8;Cndx++){strncpy(f8pd[fndx][Cndx],tokz[tNdx+Cndx ],5);}
          if(dbug) printf("%-8s R:%-4s O:%-4s Y:%-4s G:%-4s C:%-4s B:%-4s M:%-4s P:%-4s\n",f8pm[fndx],tokz[ 6],tokz[ 7],tokz[ 8],tokz[ 9],
                                                                                                      tokz[10],tokz[11],tokz[12],tokz[13]);
        }else{int tndz[8]={14, 7,15,16, 17,18,19,11};for(int Cndx=0;Cndx<8;Cndx++){strncpy(f8pd[fndx][Cndx],tokz[tndz[Cndx]],5);}
          if(dbug) printf("%-8s R:%-4s O:%-4s Y:%-4s G:%-4s C:%-4s B:%-4s M:%-4s P:%-4s\n",f8pm[fndx],tokz[14],tokz[ 7],tokz[15],tokz[16],
                                                                                                      tokz[17],tokz[18],tokz[19],tokz[11]);
        }}} // perhaps just mk 8-char tokN-list && brk rSt of lIn on spAcz?
    fclose(f8fs);}      if(dbug) printf("\n"); return 0;} // just lOding pal8 fIlz hEr in lf8z aftr f0ntz R lOded;
char chex[8];int cint[3];float cflt[3]; // globals to write rl2h results to (mAB shud B automatic?);
SDL_Window   *wndw = SDL_CreateWindow("d80c",1024,1024, SDL_WINDOW_OPENGL);        bool d8ox=false;
SDL_Renderer *rndr = SDL_CreateRenderer(wndw, NULL);bool quit=false;bool dela=true;bool dtix=false; // 2du:study algo 2 give verbose names to the following;
double r=511, x=r, y=0, t=r/16, u=0;int n=0; // slightly unexpectedly, all these floats seem to work fine as ints instead, maybe auto-promoting 4 FPoints? ;
Uint64 tix=0;double d= 45;double R=d*P_PI/180.0;double s=SDL_sin(R); // ticks && XperimNting wi math.h sin/cos on Degreez,Radianz/Result,Sine...;
double rd=500,dg= 30,Rd=dg*P_PI/180.0,  tx=0,ty=0;char Mon[13][4]={"Nul","Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"};
double r2=508;int  fscl=1,hndx=0;double Tx=0,Ty=0;char Dow[ 7][4]={"Sun","Mon","Tue","Wed","Thu","Fri","Sat"                                    };
SDL_Time     tmtx; int btns=   0; // BeginningTime_inNanoSeconds;
SDL_DateTime d8im;bool lctm=true; // hold DateTime struct with LocalTime;
SDL_DateTime bd8m; int btix=SDL_GetTicks();int sbtx; // Beginning shud stRt MpT;
void lodh(){dg+=270.0;dg=((int)dg) % 360; // load hand triangle coordin8z && DgrEz, tx,ty, Tx,Ty, in2 HandVerticez @ global Hand_iNDeX;
  Rd=dg*P_PI/180.0;tx=SDL_cos(Rd);ty=SDL_sin(Rd);hvrt[hndx*3].position.x= tx*rd+512;hvrt[hndx*3].position.y= ty*rd+512;dg+=90.0;dg=((int)dg)% 360;rd=hw[hndx];
  Rd=dg*P_PI/180.0;Tx=SDL_cos(Rd);Ty=SDL_sin(Rd);hvrt[hndx*3+1].position.x= Tx   *rd+512;hvrt[hndx*3+1].position.y= Ty   *rd+512;dg+=180.0;dg=((int)dg) % 360;
  Rd=dg*P_PI/180.0;Tx=SDL_cos(Rd);Ty=SDL_sin(Rd);hvrt[hndx*3+2].position.x= Tx   *rd+512;hvrt[hndx*3+2].position.y= Ty   *rd+512;}
int  rl2h(const char *rgbl,char *rhex,int *rgbi,float *rgbf){ // maybe will want dynamic colors so will need non-const char * also somehow,&& just use globlz?;
  if  (strlen(rgbl) >= 3){rgbi[0]=sb10(rgbl[0])*4;rgbi[1]=sb10(rgbl[1])*4;rgbi[2]=sb10(rgbl[2])*4;
    if(strlen(rgbl) >  3){
      if(rgbl[3] & 32) rgbi[0] |= 2;if(rgbl[3] &  8) rgbi[1] |= 2;if(rgbl[3] &  2) rgbi[2] |= 2;
      if(rgbl[3] & 16) rgbi[0] |= 1;if(rgbl[3] &  4) rgbi[1] |= 1;if(rgbl[3] &  1) rgbi[2] |= 1;} // place low int bitz then gNr8 float formz;
    rgbf[0]=(rgbi[0] % 256)/255.0;rgbf[1]=(rgbi[1] % 256)/255.0;rgbf[2]=(rgbi[2] % 256)/255.0;sprintf(rhex,"%2.2X%2.2X%2.2X",rgbi[0],rgbi[1],rgbi[2]);
    if(dbug) printf("rl:%-4s;  rh:%6s;  ri:%03d,%03d,%03d;  rf:%8.8f,%8.8f,%8.8f;\n",rgbl,    rhex, rgbi[0],rgbi[1],rgbi[2] ,rgbf[0],rgbf[1],rgbf[2]);
    return 0;}else{return -1;}} // retn eror -1 code if not 3 or more b64 chars in  rgbl;
int  srdc(const char *rgbl){ // SetRenderDrawColor wrapper around rl2h; srdcf could call SDL_SRDCFloat(rndr, cflt[0],cflt[1],cflt[2], SDL_ALPHA_OPAQUE_FLOAT);
  rl2h(rgbl,chex,cint,cflt);SDL_SetRenderDrawColor(rndr, cint[0],cint[1],cint[2],SDL_ALPHA_OPAQUE);return 0;} // 4now alwAz Dfalt opaque alpha,but pRamIz l8r;
int   rdc(int x,int y,unsigned char  ch2r          ){SDL_RenderDebugTextFormat  (rndr,x,y,"%c",ch2r); return 0;} // Render Dbug Char; !NOT Render Draw Color;
int   rdt(int x,int y,         char *tx2r          ){SDL_RenderDebugTextFormat  (rndr,x,y,"%s",tx2r); return 0;} // Render Dbug Text;
int   rfc(int x,int y,unsigned char  ch2r,char f0ky){ // Render f0nt Char; mAB also add flag for cNtrd around x,y nstd of just upr-lFt;
  int b10f=sb10(f0ky);SDL_FRect frct;frct.w=frct.h=fscl;
  for  (int rndx=0;rndx<16;rndx++){unsigned char bitv=1;
    for(int cndx=0;cndx< 8;cndx++){frct.y=y+(rndx*fscl);frct.x=x+(cndx*fscl);
      if(f8bm[b10f][ch2r][rndx] & bitv){SDL_RenderFillRect(rndr, &frct);} bitv*=2; } } return 0;}
int   rft(int x,int y,const    char *tx2r,char f0ky){ // Render f0nt Text, l8r mk rftf for Format (like SDL_RenderDebugTextFormat);
  for(int tndx=0;tndx<strlen(tx2r);tndx++){rfc(f0ky,x+(tndx*8*fscl),y,tx2r[tndx]);   } return 0;}
int  rd8f(int cx,int cy,char f0ky){char d8Y=sb64[d8im.year - 2000], d8M=sb64[d8im.month], d8D=sb64[d8im.day], d8z=sb64[22];
  char d8h=sb64[d8im.hour], d8m=sb64[d8im.minute], d8s=sb64[d8im.second], d8p=sb64[(int)(sbtx/1000.0*60.0)];
  char d88[9];sprintf(d88,"%c%c%c%c%c%c%c%c", d8Y,d8M,d8D,d8z, d8h,d8m,d8s,d8p);
  for(int dndx=0;dndx<8;dndx++){srdc(f8pd[pdnd][dndx]);
    if(f0ky == '^'){rdc(cx-(8*4     )+(dndx*8     ),cy- 4      ,d88[dndx]     );   }
    else           {rfc(cx-(8*4*fscl)+(dndx*8*fscl),cy-(8*fscl),d88[dndx],f0ky);   } } return 0;}
int  cku8(const char *str ){return 1;} // add logic to valid8 UniCode encoding && retn 0 or -1 if invalid?;
int  lodv(int ndx, int px,int py){vert[ndx].position.x=px;vert[ndx].position.y=py; // LOaD Vertex pos && color (from cflt) in2 ndx;
  vert[ndx].color.r=cflt[0];vert[ndx].color.g=cflt[1];vert[ndx].color.b=cflt[2];vert[ndx].color.a=1.0;return 0;} // Uzd2also accept cr cb cg B4 glbl cflt Uzd;
int  main(int argc,char *argv[]){char *locale;locale = setlocale(LC_ALL, "");char b64s[9]; // !sure if this is rIt route (from CProgramming.Com) to wchar_t?;
// tSting of all b10 callz seemz 2 work as expected (for up to 8 underscores, 'a', 'A', && '8');
/*strncpy(b64s,"________",9);printf("%-9s: %lu\n", b64s, b10(b64s));strncpy(b64s,"_______" ,8);printf("%-9s: %lu\n", b64s, b10(b64s));
  strncpy(b64s,"______"  ,7);printf("%-9s: %lu\n", b64s, b10(b64s));strncpy(b64s,"_____"   ,6);printf("%-9s: %lu\n", b64s, b10(b64s));
  strncpy(b64s,"____"    ,5);printf("%-9s: %lu\n", b64s, b10(b64s));strncpy(b64s,"___"     ,4);printf("%-9s: %lu\n", b64s, b10(b64s));
  strncpy(b64s,"__"      ,3);printf("%-9s: %lu\n", b64s, b10(b64s));strncpy(b64s,"_"       ,2);printf("%-9s: %lu\n", b64s, b10(b64s));*/
  if(lf8z()){printf("!*Warn*! Probably fopen perror when attempting to load some default 64 .f0nt files!\n");} // Load f8 f0ntz;
//rl2h(pl8g[2],chex,cint,cflt); // function converts 3 or 4-char b64 RGBl string to 6-char HEX,&& int && float arayz;
  const char *text= u8"Zažůři čmelák"; //printf("%s\n",text); // Prints UTF-8 string, from TheLinuxCode.Com but not sure how u8"" is diff from L""? gNz warn!;
  const char *inpt= u8"…🃑🂡Ⓜteⓓ; 绅;"; //input = get_input();if(!cku8(input)){printf("Invalid encoding!\n");return 1;}
  //normalize_NFC(inpt); // this function && get_input() abov were in example source on TheLinuxCode.Com/unicode-c but neither are defined so error out;
  size_t leng = mbstowcs(NULL, inpt, 0);wchar_t* wnpt=(wchar_t *)malloc((leng+1) * sizeof(wchar_t));mbstowcs(wnpt, inpt, leng+1);
//wprintf(L"Your u8 inpt str: %ls\n", wnpt);free(wnpt); // output normalized wide string, from input to length to winput; seems like mAB can't mix pf && wpf?!;
// printf( "Another teSt str: %s\n" , inpt); // printf("SDL_PI_D from SDL.h is:%lf;\n",SDL_PI_D); // just 3.141593 must be enough for most SDL purposes;
  while(x>y&&n<pntzLen){pntz[n].x=farc[n  ].x=x  ; // pixL(x,y) && all symmetric pixLz in 8 octantz, First-ARC loading with templ8 octant;
                        pntz[n].y=farc[n++].y=y++;t=t+y;u=t-x;if(u>=0){t=u;x--;}} // then loop the 7 reflections of the 45degree arc2all8;
  for(int i=0;i< n;i++){pntz[    i].x=farc[i].x;pntz[  n+i].x=farc[i].x*-1;pntz[2*n+i].x=farc[i].x*-1;pntz[3*n+i].x=farc[i].x   ; // 8 x,y pairs
                        pntz[    i].y=farc[i].y;pntz[  n+i].y=farc[i].y   ;pntz[2*n+i].y=farc[i].y*-1;pntz[3*n+i].y=farc[i].y*-1;
                        pntz[4*n+i].x=farc[i].y;pntz[5*n+i].x=farc[i].y   ;pntz[6*n+i].x=farc[i].y*-1;pntz[7*n+i].x=farc[i].y*-1; // botm half y,x
                        pntz[4*n+i].y=farc[i].x;pntz[5*n+i].y=farc[i].x*-1;pntz[6*n+i].y=farc[i].x*-1;pntz[7*n+i].y=farc[i].x   ;}
  for(int i=0;i< n*8;i++){pntz[i].x+=512;pntz[i].y+=512;} // transl8 offset pntz arcz from origin out to middle of resolution of window;
  rl2h("3CC" ,chex,cint,cflt);lodv(0, 512,256); // 400,150  388 <- orig;
  rl2h("03C" ,chex,cint,cflt);lodv(1, 256,768); // 200,450  038; lodv(ndx, px,py); had clralpha;
  rl2h("30C" ,chex,cint,cflt);lodv(2, 768,768); // 600,450  308
  while     (!quit){SDL_Event  ev;
    while   (   SDL_PollEvent(&ev)){
      switch(ev.type){
      case SDL_EVENT_QUIT    :                                                                                     quit=true;  break;
      case SDL_EVENT_KEY_DOWN:
        if     (ev.key.key == SDLK_ESCAPE     || ev.key.key == 'x' || ev.key.key == 'q'){                          quit=true; }
        else if(ev.key.key == SDLK_SPACE      || ev.key.key == ' ' || ev.key.key == 'd'){if(dela){dela=false;}else{dela=true;}}
        else if(ev.key.key == SDLK_BACKSPACE  || ev.key.key == 't' || ev.key.key == 'i'){if(dtix){dtix=false;}else{dtix=true;}}
        else if(ev.key.key == '+'             || ev.key.key == '6' || ev.key.key == '^'){pdnd++; // autO-incremNt,thN loop past Defaultz (Xcept 1st[7th] 1);
          while(!strncmp(f8pm[pdnd],"Default",8) && pdnd != 7){if(++pdnd>63) pdnd=7;} if(dbug) printf("loopd2 pal8:%2d fIle:%-8s\n",pdnd,f8pm[pdnd]);}
        else if(ev.key.key == SDLK_RETURN     || ev.key.key == '8' || ev.key.key == '*'){if(d8ox){d8ox=false;}else{d8ox=true;}}break;}} srdc("012" );
    SDL_RenderClear              (rndr);
    SDL_RenderGeometry           (rndr, NULL, vert, vertLen, NULL, 0);srdc("3_V" ); // super-basic just draw singl colr-grADNt trIangle 2 look preT… &&!mv yet;
    SDL_RenderPoints             (rndr,       pntz, n*8);srdc("_F3" );
    for(int i=0;i<720;i++){int j=(i+90)% 720;   dg=0.985626283367556468*i;rd=510-(j/10.0);dg=i;//rd=510.0; // long dg computed with :r!Q 360/365.25; rd=rAdius;
      Rd=dg*P_PI/180.0;tx=SDL_cos(Rd);ty=SDL_sin(Rd);r2=508-(j/10.0); // 365.25 dAyz vs. rel8ively bAsic 360 DgrEz can fit x4=1461 quartr dAyz per Year;
      SDL_FPoint dA[2];dA[0].x=tx*rd+512;dA[0].y=ty*rd+512;dA[1].x=tx*r2+512;dA[1].y=ty*r2+512;srdc("7FV"); // BlO cast2(int) rathr than call lIkPerl int(j/6);
      if(!(i%6)){ //cpst[0]=sb64[(int)(j/6)];cpst[1]='\0'; // nultermstr lIk th@<-? chng colr4min mRkz evry6DgrEz,thN 5thz 4 min/sec/phas mRkngz(new wi b64?);
        SDL_RenderDebugTextFormat(rndr,dA[0].x,dA[0].y,"%c",sb64[(int)(j/6)]);
        if(d8ox){fscl=1;rd8f(dA[1].x,dA[1].y,sb64[(int)(j/6)% 64]);} srdc("V_3" );}else{srdc("_FF" );} // toggle tSt Render d8 in all 64 f0ntz with 8 key;
      SDL_RenderLine             (rndr,dA[0].x,dA[0].y,dA[1].x,dA[1].y);} srdc("F_V" ); // was orig. SDL_RenderPoints(rndr,dA,2); wi just 1.y-- B4 mAd in2Line;
    for(int i=0;i<=24;i++){int j=(i+ 3)% 24;if(!j){j=12;};dg=30.0*i;rd=504-(3.0*j);Rd=dg*P_PI/180.0;tx=SDL_cos(Rd);ty=SDL_sin(Rd);
      SDL_RenderDebugTextFormat  (rndr,tx*rd+512,ty*rd+512,"%s",SDL_itoa(j,cpst,10));}
    for(int i=0;i<  6;i++){                               dg=60.0*i-90;rd=288     ;Rd=dg*P_PI/180.0;tx=SDL_cos(Rd);ty=SDL_sin(Rd);
      fscl=5;rd8f(tx*rd+512,ty*rd+512,ff0z[i]);} // put 6 Favorite f0ntz on 2-hour / 10-minute markerz
    tix=SDL_GetTicks();if(dtix){srdc("3_V" ); // flag togl 4 tix draw display?;
      SDL_RenderDebugTextFormat  (rndr,320,144,"Uint64 tix was(int)4%%d. now all:%ld;",tix);srdc("_V7" ); // can't use UTF8…elipsis in DbugTxt! stuD wchar_t …;
      SDL_RenderDebugTextFormat  (rndr,320,160,"Uint64 tixNS injust %%ld in fmt.:%ld;",SDL_GetTicksNS());srdc("3V_"); // ms tix abovRjust lOwSt digz hEr wi ns;
      SDL_RenderDebugTextFormat  (rndr,320,176,"Uint64 tixPC injust %%ld in fmt.:%ld;",SDL_GetPerformanceCounter());} // Does PerfFreq() change?;
    if(SDL_GetCurrentTime(&tmtx) && SDL_TimeToDateTime(tmtx,&d8im,lctm)){
      sbtx=(int)(d8im.nanosecond / 1000000); // workz for sync'd phass with second since just basic ms ticks are usually out-of-sync wi time hands;
      srdc(f8pd[pdnd][3]);SDL_RenderDebugText(rndr,496,288,"d80c"); // l8r big .f0nt mED && tEK 4 YMDz abov big hmsp;
      hndx=0;rd8f(512,324,'^'); //fscl=1;rd8f(256,256,'c');fscl=2;rd8f(768,256,'m');fscl=3;rd8f(768,768,'t');fscl=4;rd8f(256,768,'r');fscl=1;rd8f(512,360,'r');
      fscl=10;rd8f(512,512,ff0z[(int)(d8im.second/10)% 6]);srdc("_V3");rdc(512,11,'0');rdc(512,1011,'6');rdc(11,512,'9');rdc(1015,512,'3'); // OrangOutrQuadz;
      srdc(f8pd[pdnd][hndx]);rd=500.0;dg=d8im.year-2000;dg*=6.0;dg+=d8im.month/12.0*6.0;lodh();rd =464.0; // offset Y byMonth's progrS;
      SDL_RenderDebugTextFormat  (rndr,tx*rd+512,ty*rd+512,"%s",SDL_itoa(d8im.year,cpst,10));
      srdc(f8pd[pdnd][++hndx]);rd=500;dg=360.0*d8im.month/12.0;dg+=d8im.day  /31.0*30.0;lodh();rd =464.0;
      // adjust back 90degz from 3O'ClockWise && modulo back into basis from Noon up, not 3 right East;
      SDL_RenderDebugTextFormat  (rndr,tx*rd+512,ty*rd+512,"%s",Mon[d8im.month]);
      int stix=(int)tix;if(stix > 999){SDL_itoa(stix,cpst,10); // betr2 /1K*1K?
        int len=strlen(cpst);if(len > 3){cpst[len-1]=cpst[len-2]=cpst[len-3]='0';};stix=SDL_atoi(cpst);sbtx=(int)tix-stix;}else{sbtx=tix;} // strip subsec tix
      sbtx=(int)(d8im.nanosecond / 1000000); // workz for sync'd phass with second since just basic ms ticks are usually out-of-sync wi time hands;
      // cud dbl-up DayOfMonth so Ech tAkz2minutz && 31st overflows to low-y && low-z or pairs of 60thz;
      srdc(f8pd[pdnd][++hndx]);rd=500;dg= d8im.day       * 6.0;dg+=d8im.hour /24.0* 6.0;lodh();rd =492.0;
      SDL_RenderDebugTextFormat  (rndr,tx*rd+512,ty*rd+512,"%s",SDL_itoa(d8im.day,cpst,10));rd=464.0;
      SDL_RenderDebugTextFormat  (rndr,tx*rd+512,ty*rd+512,"%s",Dow[d8im.day_of_week]);
      // then do zone utc_offset of seconds East of UTC (or neg8ive -West);
      srdc(f8pd[pdnd][++hndx]);rd=484;dg=d8im.utc_offset;dg /= 3600;if(dg < 0) dg += 27; // dg close 2 proper zone?;
      // nEd2ck SecondsEastOfUTCOffset 2 map somewhat properly in2 my zone indices,had hRdcOd -0500 M 22 but now calQl8z;
      dg*=6.0;lodh();rd=464;
      SDL_RenderDebugTextFormat  (rndr,tx*rd+512,ty*rd+512,"%s",SDL_itoa((d8im.utc_offset/3600),cpst,10));
      srdc(f8pd[pdnd][++hndx]);rd=500;dg=(d8im.hour% 12)*30.0;dg+=d8im.minute/60.0*30.0;lodh();rd =492.0;
      SDL_RenderDebugTextFormat  (rndr,tx*rd+512,ty*rd+512,"%s",SDL_itoa(d8im.hour,cpst,10)); // vary hour && minute hand coordz a bit;
      srdc(f8pd[pdnd][++hndx]);rd=500;dg=d8im.minute*6.0;     dg+=d8im.second/60.0* 6.0;lodh();rd =482.0;
      SDL_RenderDebugTextFormat  (rndr,tx*rd+512,ty*rd+512,"%s",SDL_itoa(d8im.minute,cpst,10));
      srdc(f8pd[pdnd][++hndx]);rd=492;dg=d8im.second*6.0;     dg+=sbtx/1000.0*      6.0;lodh();rd =472.0;
      SDL_RenderDebugTextFormat  (rndr,tx*rd+512,ty*rd+512,"%s",SDL_itoa(d8im.second,cpst,10));
      srdc(f8pd[pdnd][++hndx]);rd=500;dg=360.0*sbtx/1000.0;                             lodh();rd =464.0;
      SDL_RenderDebugTextFormat  (rndr,tx*rd+512,ty*rd+512,"%s",SDL_itoa((int)(sbtx/1000.0*60),cpst,10));
      vert[0].color.a=vert[1].color.a=vert[2].color.a=1.0;
      for(hndx=0;hndx<8;hndx++){srdc(f8pd[pdnd][hndx]);vert[0].position.x=hvrt[hndx*3].position.x;vert[0].position.y=hvrt[hndx*3].position.y;
        vert[1].position.x=hvrt[hndx*3+1].position.x;vert[1].position.y=hvrt[hndx*3+1].position.y;
        vert[2].position.x=hvrt[hndx*3+2].position.x;vert[2].position.y=hvrt[hndx*3+2].position.y;
        hvrt[hndx*3  ].color.r=hvrt[hndx*3+1].color.r=hvrt[hndx*3+2].color.r=vert[0].color.r=vert[1].color.r=vert[2].color.r=cflt[0];
        hvrt[hndx*3  ].color.g=hvrt[hndx*3+1].color.g=hvrt[hndx*3+2].color.g=vert[0].color.g=vert[1].color.g=vert[2].color.g=cflt[1];
        hvrt[hndx*3  ].color.b=hvrt[hndx*3+1].color.b=hvrt[hndx*3+2].color.b=vert[0].color.b=vert[1].color.b=vert[2].color.b=cflt[2];
        SDL_RenderGeometry       (rndr, NULL, vert, vertLen, NULL, 0);}
      rl2h("3CC" ,chex,cint,cflt);lodv(0, 512,256); // 400,150  388 <- orig; // reload orig bg tri in2 vert
      rl2h("03C" ,chex,cint,cflt);lodv(1, 256,768); // 200,450  038; lodv(ndx, px,py); had clralpha;
      rl2h("30C" ,chex,cint,cflt);lodv(2, 768,768); // 600,450  308
    } // abov clock arm lines (or watch hands) all depend on getting CurTime to DateTime && pulling correct int fields from struct;
    SDL_RenderPresent            (rndr);if(!quit && dela){ // might be bSt 2 keep polling input && upd8ing game st8 but only rendering every few, mAB?;
      SDL_DelayPrecise(      497446000); //       DelayPrecise also takes ns but probably even more tightly somehow?! Almost always 1-Billion/second!?;
    //SDL_DelayNS(           499166000); // plain Delay BlO shud w8 ms so nearly half-second wi 499, while DelayNS w8z not pico, but nano so million more;
    //SDL_Delay(             499      ); // above DelayPrecise was 497866000 B4 stRtd shAving off tIme 2 hopefully get closer to half-second phasses;
    }}
  SDL_DestroyRenderer            (rndr);
  SDL_DestroyWindow              (wndw);
  SDL_Quit();return 0;}
/*Uint64 SDL_GetTicks  <OrigTime.h> (void); // Get the number of milliseconds that have elapsed since the SDL library initialization.
  Uint64 SDL_GetTicksNS             (void); // Get the number of nano-seconds                   since     SDL library initialization.
  Uint64 SDL_GetPerformanceCounter  (void); // Get the current   value  of the: high resolution counter.
  Uint64 SDL_GetPerformanceFrequency(void); // Get the count per second of the: high-resolution counter.
  void   SDL_Delay       (Uint32 ms);       // Wait a specified number of milliseconds before returning.
  void   SDL_DelayNS     (Uint64 ns);       // Wait a specified number of nano-seconds before returning.
  void   SDL_DelayPrecise(Uint64 ns);       // "" same w8 ns?!
  bool   SDL_GetDateTimeLocalePreferences(SDL_DateFormat *dateFormat,SDL_TimeFormat *timeFormat); // Gets current prEfrd d8&&time format for the system locale.
  bool   SDL_GetCurrentTime(SDL_Time *ticks); // Gets current value of system realtime clock in nanoseconds since Jan 1,1970 in UniversalCoordinatedTime (UTC).
  bool   SDL_TimeToDateTime(SDL_Time  ticks,SDL_DateTime *dt, bool localTime); // Converts an ns SDL_Time since epoch 2 calNdR time in the SDL_DateTime format.
  bool   SDL_DateTimeToTime(const SDL_DateTime *dt, SDL_Time *ticks);          // Converts a calendar time to an SDL_Time in nanoseconds("ns") since the epoch.
  void   SDL_TimeToWindows(SDL_Time ticks, Uint32 *dwLowDateTime, Uint32 *dwHighDateTime); // Convert SDL time 2 MSWinFILETIME(100-ns ntrvlz since Jan 1,1601).
SDL_Time SDL_TimeFromWindows(Uint32 dwLowDateTime, Uint32 dwHighDateTime);     // Converts Win FILETIME(100-ns intervals since January 1, 1601) to an SDL time.
  int    SDL_GetDaysInMonth(int year, int month);
  int    SDL_GetDayOfYear  (int year, int month, int day);
  int    SDL_GetDayOfWeek  (int year, int month, int day); */
