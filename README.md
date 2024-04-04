#    Oct
 Originally "Octology" (my ontology of 8), upd8d and renamed to just Oct. `$VERSION='0.000001';$d8VS='O44M8888';`

Much of Oct can still be seen in my [6-minute Lightning-Talk](https://YouTu.be/Oul8KrS7TQk) which I presented for the-Perl-Conference-in-the-Cloud on June 24th, 2020 (`d8=K6O`)

<!-- show  tstc short after lsd8 ~ && reso spec HD pre Pi color greps elabor8 aliases,fully amidst reph new crystal clarity layers of some transparency now;-->

This repo was started in 2024 (`d8=O44`) to carry on from Octology (shortened) after a pretty lengthy hI8us of not being able to upd8 GitHub.

If your paths and Perl environment are setup similarly, to gain a bearing on fundamental Oct utilities and organiz8ion, please try executing:

 * `ftst` - run the gamut of Perl File TeSTs on the default .Hrc file
 * `tsgr` - Test Select Graphic Rendition additional text attributes
<!--
 * `tstn ` - TeST Navig8ion of A-Star algorithm in Screeps 50x50 maps
 * `tstc ` - TeST c8 Col8 color8ion classic representation progression-->
<!-- * `tsgr` - Test Select Graphic Rendition additional text attributes
 * `wh auu ai nuu g grp psag pe` - show a basic colored list of very useful GNU/Linux aliases-->

 * `sumb` - SUMmarize most ~/bin/ executaBle files rather colorfully
 * `pal8` - set first 16-color PALette ("8") for terminal or console
<!-- * `gnp8 ` - GeNerate a complete Pal8 mapping of b64 into 256-colors
 * `calN ` - display a CALeNdar of the colored d8-based recent Years-->
<!-- * `lodH ` - LOaD ~/.Hrc d8a-file to parse and print colorized fields-->

Probably the best way to evalU8 Oct is to build and run a Docker container specified by the following commands, which facilit8 testing:

  `docker build . -t oct`  # to be run in the root directory of a git cloned local repository from this project's main oper8ional hyperlink;

  `docker run -e DISPLAY --mount type=bind,source=/home/pip/.log,target=/home/tst/.log -v /tmp/.X11-unix:/tmp/.X11-unix -it oct`  #muchworks

To build something close to a similar setup to mine, you'll probably want to execute the following sequences of commands to get going first:

  `git clone https://GitHub.Com/Pip/Oct`  # which should crE8 the Oct/ sub-directory in your Current-Working-Directory (or:`pwd`),

  `cd Oct; cp -a lib bin dox dvl gfx gmz muz mvz .Hrc .Xrc .bashrc .lrc .lsrc .shl.style .vimrc .zshrc ~; chsh $(which zsh); cd ~; zsh`

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
