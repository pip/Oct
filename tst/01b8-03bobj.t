#!/usr/bin/perl
use utf8;use v5.22;use Test2::V0;
use FindBin qw($RealBin);use lib "$RealBin/../lib";
# HARNESS-DURATION-SHORT
use   Oct::b8;my $bobj; # F5KM0EvF:03bobj.t crE8d by PipS <PipStuart@GMail.Com> to start some basic valid8ion of new Oct::b8 functionality;
plan tests => 1;ok(       '20220122012211010111001202111100' eq b8('53cd_oVXH',64, 3),  " t00: b64 53cd_oVXH in b3; ");exit(); # b8.pm has no new() objz yet!;
$bobj=Oct::b8->new(       '20220122012211010111001202111100'            , 3,64);say "bobj: $bobj :"; # I don't think b8 objX evr workd rIt yet!;
#`cnv 53cd_oVXH 64 3` :   '20220122012211010111001202111100'
#bobj=Oct::b8->new(       '2j7x.KUCe9Vd8k_%D_fNx'                       ,64,10);say "bobj: $bobj :"; # need new, !fadd 4 from b64 cnv
$bobj=Oct::b8->new(       '2j7x.KUCe9Vd8k_%D_fNx'                             );say "bobj: $bobj :"; # need new, !fadd 4 from b64 cnv
$bobj=Oct::b8->new(       '3348705506895055067099099073.183072916666667'      );say "bobj: $bobj :";
#bobj=Oct::b8->new(       '3348705506895055067099099073.183072916666667',10,64);say "bobj: $bobj :";
$bobj->fzero()->fadd(     '+82323523545235235423423423.234788347'             );say "bobj: $bobj :";
$bobj->fzero()->fadd(     '-13498723889487943297983427.289348742'             );say "bobj: $bobj :";
$bobj=Oct::b8->new(       '2047.5'                                            );say "bobj: $bobj :";
$bobj->finc();                                                                  say "bobj: $bobj :";
use   Math::BigFloat;my $pobj; # `b128 615508277972377686174840059269190828252500000` has many cardz
$pobj=Math::BigFloat->bpi(                                                  64);say "pobj: $pobj :"; # can't be direct method on b8 obj inheriting M::BF
                       #   3.141592653589793238462643383279502884197169399375105820974944592
#bobj=Oct::b8->new(       $pobj->fstr(),                                 10,64);say "bobj: $bobj :"; # try 64digz of pi to b64
$bobj=Oct::b8->new(       $pobj->fstr()                                       );say "bobj: $bobj :"; # try 64digz of pi to b64
                       #   3%93zgY8MZ2DCJ6Oek0t1pHAG9E28fdp7G22xQBZMCV8wKSe_zveoA57kOzg_TF0aU
$bobj=Oct::b8->new(       '3%93zgY8MZ2DCJ6Oek0t1pHAG9E28fdp7G22xQBZMCV8wKSe_z');say "bobj: $bobj :"; # then back        to b10
                       #   3.141592653589793238462643383279502884197
my $mbfc=Math::BigFloat->config();for(sort keys %{$mbfc}){printf "%-11s:",$_;print $mbfc->{$_} if defined $mbfc->{$_};say ':';}
