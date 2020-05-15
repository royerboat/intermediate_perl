#!/usr/bin/env perl

use strict;
use warnings;

my @sorted = sort {
    -M $a <=> -M $b
} glob "/usr/bin/*";

__END__

