package Butsukari::Torikumi;
use strict;
use warnings;

sub new {
    my ($class, @rikishis) = @_;
    my $self = bless {
        rikishis => \@rikishis,
        pairs    => [],
    }, $class;
    $self->init;
    $self;
}

sub init {
    my ($self) = @_;
    my @rikishis = @{$self->{rikishis}};

    while (scalar(@rikishis) > 1) {
        my $rikishi = shift @rikishis;
        my $index   = int(rand(scalar(@rikishis)));
        my $target  = splice(@rikishis, $index, 1);

        push @{$self->{pairs}}, [
            $rikishi,
            $target,
        ];
    }
}

sub match {
    my ($self) = @_;
    for my $pair (@{$self->{pairs}}) {
        $pair->[0]->match($pair->[1]);
    }
}

1;
