#!/usr/bin/env perl

use strict;
use warnings;
use RaceHorse;

my $runner = RaceHorse->create("Billy Boy");
$runner->won;
print $runner->name, " has standings ", $runner->standings, ".\n";


1;

