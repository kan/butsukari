package Butsukari::Rikishi;
use strict;
use warnings;

sub new {
    my ($class, %data) = @_;
    $data{hoshitori} = [];
    bless \%data, $class;
}

sub shikona {
    my ($self) = @_;
    $self->{shikona};
}

sub hoshitori {
    my ($self) = @_;
    $self->{hoshitori};
}

sub power {
    my ($self) = @_;
    rand(10);
}

sub kachiboshi {
    my ($self) = @_;
    scalar(grep { $_->{result} } @{$self->{hoshitori}});
}

sub makeboshi {
    my ($self) = @_;
    scalar(grep { !$_->{result} } @{$self->hoshitori});
}

sub match {
    my ($self, $rikishi) = @_;
    my $result = $self->power > $rikishi->power;

    push @{$self->{hoshitori}}, {
        rikishi => $rikishi,
        result  => $result,
    };
    push @{$rikishi->{hoshitori}}, {
        rikishi => $self,
        result  => $result,
    };
}

1;
