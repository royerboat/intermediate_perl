#!/usr/bin/env perl

use strict;
use warnings;


# program was trying to use the anonymouse hash reference syntax
# and assign it to a hash variable
#my %passenger_1 = { name => "Ginger", job => "movie star" };
#my %passenger_2 = { name => "Mary Ann", job => "farm girl" };

my %passenger_1 = ( name => "Ginger", job => "movie star" );
my %passenger_2 = ( name => "Mary Ann", job => "farm girl" );

my @passengers = ( \%passenger_1, \%passenger_2 );

__END__

