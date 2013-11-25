package Butsukari::Rikishi;
use Moo;

has 'shikona' => (is => 'rw');
has 'hoshitori' => (is => 'rw', default => sub { [] });

no Moo;
__PACKAGE__->meta->make_immutable;

sub torikumi {
    my ($self, $aite) = @_;

    push @{$self->hoshitori}, { aite => $aite, hoshi => 1 };
    push @{$aite->hoshitori}, { aite => $self, hoshi => 0 };
}

sub shiroboshi {
    my $self = shift;

    scalar(grep { $_->{hoshi} } @{$self->hoshitori});
}

sub kuroboshi {
    my $self = shift;

    scalar(grep { !$_->{hoshi} } @{$self->hoshitori});
}

1;

