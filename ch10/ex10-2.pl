#!/usr/bin/env perl

use strict;
use warnings;
use Benchmark qw(:all);

my @files = glob "/usr/bin/*";

my $count = -2;
timethese($count, {
    'Original' => sub {
        my @sorted = sort {
            -M $a <=> -M $b
        } @files;
    },
    'Schwartzian' => sub {
        my @sorted =
            map $_->[0],
            sort { $a->[1] <=> $b->[1] }
            map [ $_, -M ],
            @files;
    },
});

__END__

