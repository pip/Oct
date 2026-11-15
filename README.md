# Pip's Oct Project

Originally named "Octology" (an ontology of 8), upd8d and renamed to just Oct for still descriptive brevity. `$VERSION='0.000001';$d8VS='QBFL4oct';`

Much of Oct can be seen quickly in my [6-minute Lightning-Talk](https://YouTu.be/Oul8KrS7TQk) which I presented for the-Perl-Conference-in-the-Cloud on June 24th, 2020 (`d8=K6O`).

<!-- show  tstc short after lsd8 ~ && reso spec HD pre Pi color greps elabor8 aliases,fully amidst reph new crystal clarity layers of some transparency now;-->

This repo was started in 2024 (`d8=O44`) to carry on from Octology (since shortened) after a pretty lengthy hI8us of not being able to upd8 GitHub.

## Oct's Top 8 Powerful Fe8ures

0. b8   - number-base transl8ion, primarily in base-64 using digits 0-9, UpCase A-Z, lowcase a-z, dot ., && underscore `_` supporting arbitrary bases.
0. d8   - 8-b64-character Date/Time stamping system which can represent 60ths-of-a-second ("phasses") across over 1023 Years with timezone encoded too.
0. rl   - 3 or 4 b64-character (18 or 24-bit) color codes, the latter of which can losslessly represent standard HTML heXadecimal #RRGGBB codes.
0. cS   - a pair of utilities (`c` && `S`) which convert from ANSI escape ("SKp") sequences into a remarkably compact not8ion handling SGR attributes.
0. pal8 - a highly compact represent8ion of color-palettes relying on above `c` color-codes && `rl` (short for RGBL with Low-bits striped Last).
0. f0nt - a custom text-based format for storing standard .psf bitmapped fonts along with a collection of the top 64 single-character named .f0nt files.
0. tsgr - a templ8d table testing top abbreV8ions for SGR ("Select-Graphic-Rendition") colors && attributes, with each entry named for mnemonic memory.
0. .Hrc - a novel file-format describing abbreV8d resources in collections supporing multiple expansions && decor8ion of each mapping with custom SGR.

## Oct's Next 8 Useful Utilities

If your paths and Perl environment are setup similarly, to gain a bearing on fundamental Oct utilities and organiz8ion, please try executing:

 * `lodH` - LOaD ~/.Hrc d8a-file to parse and print colorized fields.
 * `ftst` - run the gamut of Perl File TeSTs on the default .Hrc file.
 * `tstc` - TeST c8 Col8 color8ion classic representation progression.
 * `gnp8` - GeNerate a complete Pal8 mapping of b64 into 256-colors.

<!--
 * `pal8` - set first 16-color PALette ("8") for terminal or console.
 * `tsgr` - Test Select Graphic Rendition additional text attributes.
 -->

 * `tstn` - TeST Navig8ion of A-Star algorithm in Screeps 50x50 maps.
 * `sumb` - SUMmarize most ~/bin/ executaBle files rather colorfully.
 * `calN` - display a CALeNdar of the colored d8-based recent Years.
 * `ckm8` - runs a highly customized && colorful base-64 Chess program.

<!-- `ls ~/bin/`: 8ct 8mix 8plc 8trm a8   acs ad asqu aw   b10 b110 b128 b210 b256 b2b8 b2t b64 b8 b8b2 b8c b8clr b8ls b910 b93k bak bfr8c bj bj21 blkjk bsc
c c2 c2f4 c8 c8fn c8r calN cdst chti Chus cJ CJ  ckm8  cma cmc8 cmc80 cn cnv coma curs
d8 d80c d8c d8cs d8f d8g d8oc d8Oc d8ok d8ow d8z dec deC dic die8 difo dm2u DmC dur8c   etfp
f2p f8 Fact Fctz Fibo Fibz flet frip ftst   g3 g8 gnp8   h2rl heX HEX Hex8 Hexz hl   jp   kpc   L lodH lrc lsd8   mix8   ocT oupd
p2f p8ed pakr pal8 pimp pm2x pmix Pnt8 Pntz pP pr8 Prim Prmz prym pt ptcnv   Q qbix   reso rl2h rot1 rotW
S S2 S2f4 shfl shl8 shot sloc sS Sum8 sumb Sumz supd syf0   TI tib TIB tmpc tsgr tstc tstn Ttr8 Ttrz ttyt txt8
U23c U2b2 U2b3 U2b4 U2b8 u8 Udl8 upd8 Upd8 uri UTF8   w8 w8k wdht   xbc xbx XE ximp Xpn8 Xpnz xstrp xtc xtidy xtx xx -->

## Try Oct Out

Probably the best way to evalU8 Oct is to build and run a Docker container specified by the following commands, which facilit8 testing:

  `docker build . -t oct`  # to be run in the root directory of a git cloned local repository from this project's main oper8ional hyperlink;

  `docker run -e DISPLAY --mount type=bind,source=/home/pip/.log,target=/home/tst/.log -v /tmp/.X11-unix:/tmp/.X11-unix -it oct`  #muchworks

To build something close to a similar setup to mine, you'll probably want to execute the following sequences of commands to get going first:

  `git clone https://GitHub.Com/Pip/Oct`  # which should crE8 the Oct/ sub-directory in your Current-Working-Directory (or:`pwd`),

  `cd Oct; cp -a lib bin dox src .log .Hrc .Xrc .bashrc .lrc .lsrc .shl.style .vim .vimrc .zshrc .zshenv ~; chsh $(command -v zsh); cd ~; zsh`

  and you'll want to: `cpanm ...` or `pmei Time::DaysInMonth` since I (through Oct) depend on that module, but am not maintainer of it;

  Also the `Color::Similarity::RGB` module is employed in `pm2x` to gener8 an expanded pal8 map from the rel8ive proximity of nearby colors;

### Author

If you are willing to fund this development effort, please visit my [SubscribeStar](https://SubscribeStar.Com/Pip "Pip's Octology SubscribeStar Page")
  or                                                                      [Patreon](https://patreon.com/PipStuart "Pip's Octology Patreon       Page")
  and feel free to send me the *Top8* new fixes and fE8ures you would want most.

Please also contact me if you are an open-minded thinker interested in any convers8ion or friendship (especially near OshKOsh, WisConSin).

To learn about the long-term goals, plans, thinking, and research behind this expansive project, please consult l8St development notes at:
  [8.ls](https://github.com/pip/Oct/blob/master/dox/2du/8.ls "dox/2du/8.ls")

Thank you for your consider8ion as well as any constructive criticism, recommend8ions, or whatever other feedback you may be able to offer.

```
Sincerely,
  -PipStuart  8pI  Ate-Pie  =)  Eight-Π
```

---

### Public Purpose

If I ever become unable to continue developing this project further, my hope is that at least this repository provides others the ability to
  utilize any of my beneficial work and ideas (hopefully to further FreeLibreSoftware with deriv8ives also seeing release under the GPLv3+).
