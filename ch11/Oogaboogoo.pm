#!/usr/bin/env perl

use strict;
use warnings;

# Fix up Gilligan's code!
# my @day = (ark, dip, wap, sen, pop, sep, kir);
# sub number_to_day_name { my $num = shift @_; $day[$num]; }
# my @month = (diz, pod, bod, rod, sip, wax, lin, sen, kun, fiz, nap, dep);

package Oogaboogoo;

my @day = qw(ark dip wap sen pop sep kir);
my @month = qw(diz pod bod rod sip wax lin sen kun fiz nap dep);

sub number_to_day_name {
    my $num = shift;
    return $day[$num] if defined($num);
}

sub number_to_month_name {
    my $num = shift;
    return $month[$num] if defined($num);
}


__END__

