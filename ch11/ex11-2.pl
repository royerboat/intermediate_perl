#!/usr/bin/env perl

use strict;
use warnings;

use Oogaboogoo;

my $time = time;
my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
$year += 1900;
$mon += 1;

printf "Today is %s, %s %g, %g\n",
    Oogaboogoo::number_to_day_name($wday),
    Oogaboogoo::number_to_month_name($mon),
    $mday,
    $year;

__END__

