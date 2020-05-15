#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;

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

print Dumper(%wish_lists);

__END__

