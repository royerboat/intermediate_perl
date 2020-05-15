package RaceHorse;
use parent qw(Horse);

use strict;
use warnings;

use Carp qw(carp croak);

dbmopen (my %STANDINGS, "standings", 0666);

sub create {
    my $self = shift->SUPER::create(@_);
    my $name = $self->name;
    my @standings = split ' ', $STANDINGS{$name} || "0 0 0 0";
    @$self{qw(wins places shows losses)} = @standings;
    return $self;
}

sub DESTROY {
    my $self = shift;
    $STANDINGS{$self->name} = "@$self{qw(wins places shows losses)}";
    $self->SUPER::DESTROY;
}

sub won { shift->{wins}++; }
sub placed { shift->{places}++; }
sub showed { shift->{shows}++; }
sub lost { shift->{losses}++; }


sub standings {
    my $self = shift;
    join ", ", map "$self->{$_} $_", qw( wins places shows losses );
}

1;

