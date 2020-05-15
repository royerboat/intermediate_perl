#!/usr/bin/env perl

use strict;
use warnings;

use Cow;
use Horse;
use Sheep;
use Mouse;
use Person;

Person->speak;
Person->speak("Hello, world!");
Sheep->speak;
Sheep->speak("Der, I'm a sheep");
Horse->speak;
Mouse->speak;
Cow->speak;

__END__

