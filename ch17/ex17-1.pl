#!/usr/bin/env perl

use strict;
use warnings;

use Oogaboogoo::Date qw(day month);

my $time = time;
my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
$year += 1900;
$mon += 1;

printf "Today is %s, %s %g, %g\n", day($wday), month($mon), $mday, $year;

__END__

