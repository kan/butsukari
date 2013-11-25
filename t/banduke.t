use strict;
use warnings;
use utf8;
use Test::More;
use Butsukari::Banduke;
use Butsukari::Rikishi;

subtest 'new' => sub {
    my $kan = Butsukari::Rikishi->new(
        shikona => 'kan',
    );
    my $antipop = Butsukari::Rikishi->new(
        shikona => 'antipop',
    );
    my $banduke = Butsukari::Banduke->new($kan, $antipop);

    isa_ok $banduke, 'Butsukari::Banduke';
};

subtest 'torikumi' => sub {
    my $kan = Butsukari::Rikishi->new(
        shikona => 'kan',
    );
    my $antipop = Butsukari::Rikishi->new(
        shikona => 'antipop',
    );
    my $mizzy = Butsukari::Rikishi->new(
        shikona => 'mizzy',
    );
    my $r7kamura = Butsukari::Rikishi->new(
        shikona => 'r7kamura',
    );
    my $banduke = Butsukari::Banduke->new($kan, $antipop, $mizzy, $r7kamura);

    is ref($banduke->torikumi), 'ARRAY';
    is scalar(@{$banduke->torikumi}), 2;
};

done_testing;

