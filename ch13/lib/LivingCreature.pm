package LivingCreature;

sub speak {
    my ($class, @says) = @_;

    if (@says) {
        print "a $class goes @says\n";
    } else {
        print "a $class goes ", $class->sound, "!\n";
    }
}

1;

