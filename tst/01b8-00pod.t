#!/usr/bin/env perl
use utf8;use v5.22;
use FindBin qw($RealBin);
use lib "$RealBin/../lib";
use Test::More;
eval 'use Test::Pod 1.00; 1'
  or plan skip_all => 'Test::Pod 1.00 required for testing POD;';
plan tests => 1; # QBFLBChx:used to test explicit '../lib/Oct/b8.pm' requiring this script be run directly from the tst/ directory, but Chax helped me fix it;
pod_file_ok("$RealBin/../lib/Oct/b8.pm", 'Valid POD file;');
