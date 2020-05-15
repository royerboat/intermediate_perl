#!/usr/bin/env perl

use strict;
use warnings;

my @sorted =
map $_->[0],
sort { $a->[1] <=> $b->[1] }
map [ $_, -M ],
glob "/usr/bin/*";

__END__

