package Oogaboogoo::Date;
use strict;
use vars qw( @EXPORT );
use base qw( Exporter );
@EXPORT = qw( day month );

$VERSION = '0.0.1';

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

Oogaboogoo::Date - Perl module for translating a date into the Oogaboogoo language

=head1 SYNOPSIS

    use Oogaboogoo::Date
