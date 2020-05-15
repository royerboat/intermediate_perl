package Horse;
use parent qw(Animal);

sub sound { "neigh"; }

sub DESTROY {
    my $body = shift;
    $body->SUPER::DESTROY;
    print $body->name, " goes off to the glue factory.\n";
}

1;

