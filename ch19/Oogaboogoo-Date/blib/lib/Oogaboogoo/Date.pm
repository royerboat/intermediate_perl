package Oogaboogoo::Date;

use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Oogaboogoo::Date ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(
	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
    day
    month	
);

our $VERSION = '1.00';

my @day = qw(ark dip wap sen pop sep kir);
my @month = qw(diz pod bod rod sip wax lin sen kun fiz nap dep);

sub day {
    my $num = shift;
    return $day[$num] if defined($num);
}

sub month {
    my $num = shift;
    return $month[$num] if defined($num);
}

1;
__END__

=head1 NAME

Oogaboogoo::Date - Perl extension for converting numeric dates to Oogaboogoo

=head1 SYNOPSIS

    use Oogaboogoo::Date qw(day month);

    my $time = time;
    my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
    $year += 1900;
    $mon += 1;

    printf "Today is %s, %s %g, %g\n", day($wday), month($mon), $mday, $year;

=head1 DESCRIPTION

Convert your date to Oogaboogoo so the natives on the island can know
what date you are talking about.

=head2 EXPORT

day
month

=head1 SEE ALSO

Nothing to see here.

=head1 AUTHOR

Jeffrey Royer, E<lt>jeffrey.royer@cpanel.netE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2014 by Jeffrey Royer

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.14.0 or,
at your option, any later version of Perl 5 you may have available.


=cut
