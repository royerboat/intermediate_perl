#!/usr/bin/env perl

# This is actually supposed to be a drawing, so I will just explain it

use strict;
use warnings;

# $ginger->[2][1]
# 
# $ginger is an array refernce
# [2] is the 3rd item and is an array
# [1] is the 2nd item in the array

# ${$ginger[2]}[1]
#
# $ginger is an array
# $ginger[2] gets the 3rd item from an array
# ${$ginger[2]}[1] gets the 2nd item from that array

# $ginger->[2]->[1]
#
# $ginger is an array ref
# $ginger->[2] gets the 3rd item from the array
# $ginger->[2]->[1] gets the 2nd item from that array 

# ${$ginger->[2]}[1]
#
# $ginger is an array ref
# $ginger->[2] gets the 3rd item from the array
# ${$ginger->[2]}[1] gets the 2nd item from that array

# So they all reference the same data.
# Whoops, guess I'm wrong. The second one is using an array, instead
# of an array ref.


__END__

