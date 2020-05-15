#!/usr/bin/env perl

use strict;
use warnings;

my $file = "log_file.txt";

my %castaways;

open my $input_file, '<', $file or
    die "Cannot open $file: $!";
while(<$input_file>) {
    # Castaway name: items
    if (m/^([^:]+):\s*(.*)/) {
        my ($name, $item) = ($1, $2);
        if (not exists $castaways{$name}) {
            my $castaway_filename = lc($name) . ".info";
            open my $output, '>', $castaway_filename or die "Cannot open $castaway_filename: $!";
            $castaways{$name} = $output;
        }
        print { $castaways{$name} } $item . "\n";
    }
}
close $input_file;

# close all the file handles
foreach my $castaway ( keys %castaways ) {
    close $castaways{$castaway}; 
}


__END__

