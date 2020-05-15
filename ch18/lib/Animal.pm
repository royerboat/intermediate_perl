package Animal;

use strict;
use warnings;

use Carp qw(croak carp);
use Data::Dumper;

sub create {
    my ($class, $name) = @_;
    croak "class name needed" unless(not ref($class)); 
    croak "name parameter needed" unless($name);
    my $self = {
        Name => $name,
        Color => $class->default_color,
    };
    bless $self, $class;
}

sub default_color { "brown"; }
sub sound { croak "All Animals must have their own sound"; }
sub eat {
    my $class = shift;
    my $food = shift;
    print $class->name, " eats $food.\n";
}

sub name {
    my $class = shift;
    ref $class ? $class->{Name} : "an unamed $class"; 
}

sub set_name {
    my $class = shift;
    if ( ref($class) ) {
        $class->{Name} = shift;
    } else {
        carp "Instance variable required to call set_name";
        return;
    }
}

sub color {
    my $class = shift;
    ref $class ? $class->{Color} : default_color(); 
}

sub set_color {
    my $class = shift;
    if ( ref($class) ) {
        $class->{Color} = shift;
    } else {
        carp "Instance variable required to call set_color";
        return;
    }
}

sub speak {
    my ($class, @says) = @_;
    
    if (@says) {
        carp "An animal may not talk";
        return;
    }

    print "a $class goes ", $class->sound, "!\n";
}

sub DESTROY {
    print $_[0]->name, " has died, R.I.P.\n";
}


1;

