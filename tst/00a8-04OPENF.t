#!/usr/bin/env perl
# OPENF shared fixtures: Perl return values and Zsh's stored F are distinct APIs.
# Run from any directory: yath test /path/to/Oct/tst/00a8-04OPENF.t
# HARNESS-DURATION-LONG
use utf8;
use v5.22;
use strict;
use warnings;
use Test::More;
use FindBin qw($RealBin);
use File::Spec;
use Cwd qw(abs_path);
use Encode qw(encode);
use JSON::PP ();
use IPC::Open3 qw(open3);
use IO::Select;
use Symbol qw(gensym);

my $root = abs_path("$RealBin/..");
my $lib = "$root/lib";
my $marker = "\0OPENF_RESULT\0";
my $json = JSON::PP->new->ascii->canonical;

# Read the real declarations, not copies of their implementations. Deliberately
# avoid sourcing unrelated startup commands, private files, palettes or caches.
open my $env_fh, '<:encoding(UTF-8)', "$root/.zshenv"
    or die "Cannot read repository .zshenv: $!";
my @declarations;
while (my $line = <$env_fh>) {
    # Include the standalone one-line functions as well as alias declarations.
    # Multiple wrapper functions may share a line in the repository .zshenv.
    next unless $line =~ /^Al\s+(?:ec|en|O|F|N)=/
             || $line =~ /^(?:o[59]|e[59]|s5)\s*\(\)\s*\{/;
    $line =~ s/^Al\b/alias/;
    push @declarations, $line;
}
close $env_fh or die "Cannot close .zshenv: $!";

my $zsh;
for my $dir (File::Spec->path) {
    next unless length $dir;
    my $candidate = File::Spec->catfile($dir, 'zsh');
    if (-f $candidate && -x $candidate) { $zsh = $candidate; last; }
}
my $definitions = join('', @declarations);
my $zsh_ready = $definitions =~ /^alias\s+O=/m
             && $definitions =~ /^alias\s+N=/m;
ok($zsh_ready, 'located repository OPENF aliases and echo dependencies');
for my $name (qw(o5 o9 e5 e9 s5)) {
    like($definitions, qr/\b\Q$name\E\s*\(\)\s*\{/,
         "located repository Zsh function $name");
}

# A control record follows the wrapper output. Its NUL-delimited marker is not
# used by any fixture. This preserves trailing newlines, which shell command
# substitution would otherwise discard. No temporary files are needed.
my $perl_worker = <<'PERL_WORKER';
use utf8;
use v5.22;
use strict;
use warnings;
use Encode qw(decode);
use JSON::PP ();
use Oct::a8 ();
my ($name, $kind, @args) = map { decode('UTF-8', $_) } @ARGV;
my $json = JSON::PP->new->ascii->canonical;
my $original = $json->encode(\@args);
my $selected = select;
my $fn = Oct::a8->can($name) or die "Missing Perl wrapper: $name\n";
my $value = $fn->(@args);
my $restored = select;
my $record = {
    unchanged => $json->encode(\@args) eq $original ? 1 : 0,
    selected_restored => $selected eq $restored ? 1 : 0,
    value => $kind eq 'string' ? $value : undef,
};
print STDOUT "\0OPENF_RESULT\0", $json->encode($record)
    or die "Cannot write OPENF control record: $!";
PERL_WORKER

my $zsh_worker = $definitions . <<'ZSH_WORKER';
openf_name=$1
openf_kind=$2
shift 2
F=OPENF_UNASSIGNED
# The name comes exclusively from the fixed wrapper table below. Arguments are
# expanded only as "$@", never interpolated into shell source.
eval "$openf_name \"\$@\""
openf_rc=$?
builtin printf '\0OPENF_RESULT\0'
if [[ "$openf_kind" == string ]]; then
    builtin printf '%s' "$F"
fi
exit "$openf_rc"
ZSH_WORKER

# Expected strings are hand-written, rather than calculated with the wrappers.
my @literal = (
    { name => 'no arguments', args => [], want => '' },
    { name => 'empty text', args => [''], want => '' },
    { name => 'concatenate without separators',
      args => ['ab', '', ' cd', '0'], want => 'ab cd0' },
    { name => 'option-looking text is data',
      args => ['-h', '--help', '-u', '-n', '-c'], want => '-h--help-u-n-c' },
    { name => 'whitespace, backslash and percent are data',
      args => [" \t", 'a\nb', '%s%%', "\r"], want => " \ta\\nb%s%%\r" },
    { name => 'UTF-8 text', args => ['café ', '猫 🪶'], want => 'café 猫 🪶' },
    { name => 'preserve existing trailing newlines',
      args => ["line\n\n"], want => "line\n\n" },
    { name => 'preserve SGR with NO_COLOR absent',
      args => ["\e[31mred\e[0m"], want => "\e[31mred\e[0m" },
);
my @formatted = (
    { name => 'empty format', args => [''], want => '' },
    { name => 'literal format without values', args => ['hello'], want => 'hello' },
    { name => 'escaped percent without values', args => ['%%'], want => '%' },
    { name => 'formatted option-looking text', args => ['%s', '-h'], want => '-h' },
    { name => 'literal percent in value',
      args => ['[%s]', '100%'], want => '[100%]' },
    { name => 'repeat complete argument groups',
      args => ['%s:%d;', 'a', 1, 'b', 2], want => 'a:1;b:2;' },
    { name => 'integer padding and hexadecimal',
      args => ['%04d/%X', 7, 255], want => '0007/FF' },
    { name => 'floating precision', args => ['%.2f', 1.25], want => '1.25' },
    { name => 'dynamic width', args => ['%*s', 4, 'x'], want => '   x' },
    { name => 'dynamic width and precision',
      args => ['%*.*f', 7, 2, 1.25], want => '   1.25' },
    { name => 'UTF-8 string value', args => ['[%s]', '猫 café'], want => '[猫 café]' },
    { name => 'preserve existing formatted newline',
      args => ["%s\n", 'line'], want => "line\n" },
);

# name, destination (or string result), formatting, append one newline
my @wrappers = (
    ['O',  'stdout', 0, 0], ['o8', 'stdout', 0, 0],
    ['E',  'stderr', 0, 0], ['e8', 'stderr', 0, 0],
    ['o9', 'stdout', 0, 1], ['e9', 'stderr', 0, 1],
    ['P',  'stdout', 1, 0], ['o4', 'stdout', 1, 0],
    ['e4', 'stderr', 1, 0], ['o5', 'stdout', 1, 1],
    ['e5', 'stderr', 1, 1], ['F',  'string', 1, 0],
    ['s4', 'string', 1, 0], ['s5', 'string', 1, 1],
    ['N',  'stdout', 0, 1], ['eN', 'stderr', 0, 1],
);

sub run_child {
    my ($backend, $name, $kind, $args) = @_;
    my @argv = map { encode('UTF-8', "$_") } ($name, $kind, @$args);
    my @command = $backend eq 'Perl'
        ? ($^X, "-I$lib", '-e', $perl_worker, @argv)
        : ($zsh, '-f', '-s', '--', @argv);

    local %ENV = %ENV;
    # Controlled text profile; do not inherit output filtering or Perl switches.
    delete @ENV{qw(NO_COLOR PERL_UNICODE PERL5OPT)};
    $ENV{TERM} = 'xterm-256color';
    $ENV{LC_ALL} = 'C';
    $ENV{LC_NUMERIC} = 'C';
    $ENV{ZDOTDIR} = '/nonexistent';
    $ENV{HOME} = '/nonexistent';

    my ($input, $output, $error) = (gensym, gensym, gensym);
    my $pid = open3($input, $output, $error, @command);
    binmode $_, ':raw' for ($input, $output, $error);
    if ($backend eq 'Zsh') {
        print {$input} encode('UTF-8', $zsh_worker)
            or die "Cannot send Zsh declarations: $!";
    }
    close $input;
    my $selector = IO::Select->new($output, $error);
    my %streams = (fileno($output) => 'stdout', fileno($error) => 'stderr');
    my %captured = (stdout => '', stderr => '');
    my $completed = eval {
        local $SIG{ALRM} = sub { die "OPENF child timed out\n" };
        alarm 10;
        while ($selector->count) {
            for my $fh ($selector->can_read) {
                my $count = sysread($fh, my $buffer, 8192);
                die "Cannot read child output: $!" unless defined $count;
                if ($count) { $captured{$streams{fileno($fh)}} .= $buffer; }
                else { $selector->remove($fh); close $fh; }
            }
        }
        alarm 0;
        1;
    };
    my $problem = $@;
    alarm 0;
    kill 'KILL', $pid unless $completed;
    waitpid($pid, 0);
    $captured{status} = $?;
    $captured{problem} = $problem unless $completed;

    my $at = rindex($captured{stdout}, $marker);
    if ($at >= 0) {
        my $record = substr($captured{stdout}, $at + length($marker));
        substr($captured{stdout}, $at) = '';
        if ($backend eq 'Perl') {
            my $decoded = eval { $json->decode($record) };
            if (ref($decoded) eq 'HASH') {
                $captured{record} = $decoded;
                $captured{value} = $decoded->{value};
            } else { $captured{problem} = 'Invalid Perl control record'; }
        } else {
            $captured{record} = 1;
            $captured{value} = $record;
        }
    } else { $captured{problem} //= 'Missing OPENF control record'; }
    return \%captured;
}

for my $wrapper (@wrappers) {
    my ($name, $kind, $formatted, $newline) = @$wrapper;
    subtest $name => sub {
        my @fixtures = $name eq 'N' || $name eq 'eN'
            ? ({ name => 'newline alone', args => [], want => '' })
            : $formatted ? @formatted : @literal;
        for my $fixture (@fixtures) {
            subtest $fixture->{name} => sub {
                my $want = $fixture->{want} . ($newline ? "\n" : '');
                my $bytes = encode('UTF-8', $want);
                for my $backend ('Perl', 'Zsh') {
                    subtest $backend => sub {
                        plan skip_all => 'zsh executable not installed'
                            if $backend eq 'Zsh' && !$zsh;
                        plan skip_all => 'OPENF declaration block not located'
                            if $backend eq 'Zsh' && !$zsh_ready;
                        my $got = run_child($backend, $name, $kind, $fixture->{args});
                        is($got->{status}, 0, 'worker exits successfully');
                        ok(!$got->{problem}, 'worker supplies a valid result record')
                            or diag($got->{problem} // '');
                        is($got->{stdout}, $kind eq 'stdout' ? $bytes : '',
                           'exact STDOUT bytes');
                        is($got->{stderr}, $kind eq 'stderr' ? $bytes : '',
                           'exact STDERR bytes, without warnings');
                        if ($kind eq 'string') {
                            my $value = $backend eq 'Perl' && defined($got->{value})
                                ? encode('UTF-8', $got->{value}) : $got->{value};
                            is($value, $bytes, 'exact returned/stored string bytes');
                        }
                        if ($backend eq 'Perl' && ref($got->{record}) eq 'HASH') {
                            ok($got->{record}{unchanged}, 'arguments remain unchanged');
                            ok($got->{record}{selected_restored},
                               'selected output handle is restored');
                        }
                    };
                }
            };
        }
    };
}

# Pending contracts: no assertions yet about Perl success return values,
# unsupported/invalid formats, missing values, positional formats, undef input,
# NO_COLOR=1 policy, or failed writes. These need explicit decisions first.
# Fixtures intentionally include %% and dynamic width/precision as regression
# checks; implementation failures remain ordinary failures, never hidden TODOs.
done_testing();
