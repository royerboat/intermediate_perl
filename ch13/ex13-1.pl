#!/usr/bin/env perl

use strict;
use warnings;

use Cow;
use Horse;
use Sheep;
use Mouse;
use Fox;

print "Enter in a list of animals: ";
chomp(my $input = <STDIN>);

my @animals = split / /, $input;

my @accepted_animals = qw/Cow Horse Sheep Mouse Fox/;
foreach my $animal ( @animals) {
    $animal = ucfirst lc $animal;
    my $found = grep { $animal eq $_ } @accepted_animals;
    if ($found) { 
        $animal->speak;
    } else {
        warn "Object type does not exist; must be one of @accepted_animals";
    }
}

__END__

