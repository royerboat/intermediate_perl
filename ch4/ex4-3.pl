#!/usr/bin/env perl

# Modify the crew roster program from this chapter to include a location.
# Set the location to "The Island" by default.
# Change the Howell's location to "The Island Country Club"
# Print a report.

use strict;
use warnings;

my %gilligan_info = (
    'name' => 'Gilligan',
    'hat' => 'White',
    'shirt' => 'Red',
    'position' => 'First Mate',
    'location' => 'The Island',
);

my %skipper_info = (
    'name' => 'Skipper',
    'hat' => 'Black',
    'shirt' => 'Blue',
    'position' => 'Captain',
    'location' => 'The Island',
);

my %mr_howell_info = (
    'name' => 'Mr. Howell',
    'hat' => 'Straw',
    'shirt' => 'Checkered',
    'position' => 'Billionaire',
    'location' => 'The Island',
);

my %mrs_howell_info = (
    'name' => 'Mrs. Howell',
    'hat' => undef,
    'shirt' => 'Dress',
    'position' => 'Billionaire Wife',
    'location' => 'The Island',
);

my @crew = (
    \%gilligan_info,
    \%skipper_info,
    \%mr_howell_info,
    \%mrs_howell_info,
);

$crew[2]->{qw(location)} = "The Island Country Club";
$crew[3]->{qw(location)} = "The Island Country Club";

my $format = "%-15s at %-15s\n";
for my $crew_member ( @crew ) {
    printf $format, @{ $crew_member }{ qw(name location) };
}

__END__

