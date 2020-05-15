package Mouse;
use parent qw(Animal);

sub sound { "squeak"; }

sub speak {
    my $class = shift;
    $class->SUPER::speak(@_);
    print "[but you can barely hear it!]\n";
}


1;

