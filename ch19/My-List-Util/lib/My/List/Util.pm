package My::List::Util;

use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use My::List::Util ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(
    sum
    shuffle	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
    sum
    shuffle
);

our $VERSION = '0.01';

=item sum()

Take a list of numbers and return their sum

=cut

sub sum {
    my $total = 0;
    foreach my $num ( @_ ) {
        $total += $num;
    } 
    return $total;
}


=item shuffle()

Takes a list of items and returns them in random order

=cut

sub shuffle {
    my @original = @_;
    my @shuffled;
    my $original_length = scalar(@original);
    my $count = 0;

    while ($count < $original_length) {
        my $random = int(rand($original_length));
        unless (defined($shuffled[$random])) {
            $shuffled[$random] = $original[$count]; 
            $count++; 
        } 
    } 

    return @shuffled;
}

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

My::List::Util - Perl extension for blah blah blah

=head1 SYNOPSIS

    use My::List::Util;
  
    print sum(0..9);
    print shuffle(0..9);

=head1 DESCRIPTION

Provides some custom methods for lists.

=head2 EXPORT

sum
shuffle


=head1 SEE ALSO

List::Util

=head1 AUTHOR

Jeffrey Royer, E<lt>jeffrey.royer@cpanel.netE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2014 by Jeffrey Royer

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.20.0 or,
at your option, any later version of Perl 5 you may have available.


=cut
