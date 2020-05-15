#!/usr/bin/env perl

# Write a sub check_items_for_all that takes a hash ref as the only param.
# The sub should call check_required_items() for each person in the hash, 
# updating the provisions list to include required items. Everything must
# be accessed by reference.

use strict;
use warnings;

# Straight from the book
sub check_required_items {
    my( $who, $items) = @_;

    my %whos_items = map { $_, 1 } @{ $items };

    my @required = qw(preserver sunscreen water_bottle jacket);
    my @missing = ();

    for my $item ( @required ) {
        unless ( $whos_items{$item} ) {
            print "$who is missing $item.\n";
            push @missing, $item;
        }
    }

    if (@missing) {
        print "Adding @missing to @$items for $who.\n";
        push @$items, @missing;
    }
}

# the function we are supposed to implement
sub check_items_for_all {
    my ( $hash_ref ) = @_;

    foreach my $person ( keys %{ $hash_ref } ) {
         check_required_items( $person, $hash_ref->{$person} ); 
    }
}

# code taken from the exercise
my @gilligan = qw(red_shirt hat lucky_socks water_bottle);
my @professor = qw(sunscreen water_bottle slide_rule batteries radio);
my @skipper = qw(blue_shirt hat jacket preserver sunscreen);

my %all = (
    "Gilligan" => \@gilligan,
    "Skipper" => \@skipper,
    "Professor" => \@professor,
);

check_items_for_all(\%all);

__END__

