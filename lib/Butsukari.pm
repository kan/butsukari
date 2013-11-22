package Butsukari;
use 5.008005;
use strict;
use warnings;
use Butsukari::Banduke;

our $VERSION = "0.01";

sub geiko {
    my ($class, @rikishis) = @_;
    my $count   = scalar(@rikishis) - 1;
    my $banduke = Butsukari::Banduke->new(@rikishis);

    for my $day (1..$count) {
        my $torikumi = $banduke->torikumi;
           $torikumi->match;
    }

    for my $rikishi (@{$banduke->result}) {
        print "@{[$rikishi->shikona]}: @{[$rikishi->kachiboshi]}勝 @{[$rikishi->makeboshi]}敗\n";
    }
}

1;
__END__

=encoding utf-8

=head1 NAME

Butsukari - It's new $module

=head1 SYNOPSIS

    use Butsukari;

=head1 DESCRIPTION

Butsukari is ...

=head1 LICENSE

Copyright (C) Kan Fushihara.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

Kan Fushihara E<lt>kan.fushihara@gmail.comE<gt>

=cut

