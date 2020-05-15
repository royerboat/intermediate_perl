package Animal;
use parent qw(LivingCreature);

use strict;
use warnings;

sub sound { die "All Animals must have their own sound"; }

sub speak {
    my ($class, @says) = @_;
    
    if (@says) {
        warn "An animal may not talk";
        return;
    }

    print "a $class goes ", $class->sound, "!\n";
}

1;

