#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

my @mary_ann_list_of_items = (
    "Van de Graaff generator",
    "vanishing cream",
    "vanilla milkshake",
    "van Gogh painting, Sunflowers",
    "vanadium mine"
);

sub dictionary_word {
    my $item = shift;
    $item =~ tr/A-Z/a-z/;
    $item=~ tr/a-z//cd;
    return $item;
}

my @sorted_list_of_items =
    map $_->[0],
    sort { $a->[1] cmp $b->[1] }
    map [ $_, dictionary_word($_) ],
    @mary_ann_list_of_items;

print Dumper(@sorted_list_of_items);

__END__

