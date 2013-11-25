package Butsukari::Banduke;

sub new {
    my ($class, @rikishis) = @_;

    bless { rikishis => \@rikishis }, $class;
}

sub torikumi {
    my $self = shift;
    my @result;
    my @tmp = @{$self->{rikishis}};
    while (@tmp) {
        my $foo = shift @tmp;
        my $bar = shift @tmp;
        push @result, [$foo, $bar];
    }

    return \@result;
}


1;

