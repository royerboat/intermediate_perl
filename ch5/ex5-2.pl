#!/usr/bin/env perl

# Use the data file for this chapter provided by
# intermediateperl.com/downloads
# Modify the code from this chapter so that each source machine's
# portion of the output shows the total bytes from that machine.
# List the source machines in order from most to least data
# transferred. Within each group, list the destination machines
# in order from most to least data transferred to that target
# from the source machine.
# Expected output:
#   professor.hut => gilligan.hut: 1845
#   professor.hut => maryann.hut: 90
#
# The result should be that the machine that sent the most data
# will be the first source machine in the list. The first
# destination should be the machine to witch it sent the most
# data.

use strict;
use warnings;

my %total_bytes;

my $file = 'coconet.dat';
open my $fh, '<', $file or die "Could not open $file: $!";
while(<$fh>) {
    my ($source, $dest, $bytes) = split;
    $total_bytes{$source}{$dest} += $bytes;
}
close $fh;

#use Data::Dumper;
#print Dumper(%total_bytes);

my @sorted_sources = sort { $total_bytes{$b} <=> $total_bytes{$a} } keys %total_bytes;
for my $source ( @sorted_sources ) {
    for my $dest ( sort { $total_bytes{$source}{$b} <=> $total_bytes{$source}{$a} } keys %{ $total_bytes{$source} } ) {
        printf "%s => %s: %s bytes\n", $source, $dest, $total_bytes{$source}{$dest};
    }
}

