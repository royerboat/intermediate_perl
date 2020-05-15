#!/usr/bin/env perl

use strict;
use warnings;

my $file = "wish_lists";

my %wish_lists;

open my $fh, '<', $file or
    die "Cannot open $file: $!";
while(<$fh>) {
    chomp;
    my( $person, $list ) = split /\t/;
    push @{ $wish_lists{$person} }, $list;    
}
close $fh;

foreach my $person ( sort keys %wish_lists ) {
    print "$person: ";
    print join ", ", @{ $wish_lists{$person} };
    print "\n"; 
}

__END__

