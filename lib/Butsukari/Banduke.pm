package Butsukari::Banduke;
use strict;
use warnings;
use Butsukari::Torikumi;

sub new {
    my ($class, @rikishis) = @_;
    bless { rikishis => \@rikishis }, $class;
}

sub torikumi {
    my ($self) = @_;
    Butsukari::Torikumi->new(@{$self->{rikishis}});
}

sub result {
    my ($self) = @_;
    [
        sort { $b->kachiboshi <=> $a->kachiboshi } @{$self->{rikishis}}
    ]
}

1;
