#!/usr/bin/env perl

use strict;
use warnings;

use Horse;
use Sheep;

my $talking = Horse->create("Mr. Ed");
$talking->set_name("Mister Ed");
$talking->set_color("grey");
print $talking->name, " is ", $talking->color, "\n";
print Sheep->name, " colored ", Sheep->color, " goes ", Sheep->sound, "\n";
print Sheep->set_name("Some random sheep");
print Sheep->set_color("Transparent");

1;

