use strict;
use Test::More;

use Butsukari::Rikishi;
use Butsukari::Torikumi;

subtest 'new' => sub {
    my $kan      = Butsukari::Rikishi->new(shikona => 'kan');
    my $antipop  = Butsukari::Rikishi->new(shikona => 'antipop');
    my $mizzy    = Butsukari::Rikishi->new(shikona => 'mizzy');
    my $r7kamura = Butsukari::Rikishi->new(shikona => 'r7kamura');
    my $torikumi = Butsukari::Torikumi->new($kan, $antipop, $mizzy, $r7kamura);

    isa_ok $torikumi, 'Butsukari::Torikumi';

    is ref($torikumi->{pairs}), 'ARRAY';
    is scalar(@{$torikumi->{pairs}}), 2;
};

subtest 'match' => sub {
    my $kan      = Butsukari::Rikishi->new(shikona => 'kan');
    my $antipop  = Butsukari::Rikishi->new(shikona => 'antipop');
    my $mizzy    = Butsukari::Rikishi->new(shikona => 'mizzy');
    my $r7kamura = Butsukari::Rikishi->new(shikona => 'r7kamura');
    my $torikumi = Butsukari::Torikumi->new($kan, $antipop, $mizzy, $r7kamura);
       $torikumi->match;

    is scalar(@{$kan->hoshitori}),      1;
    is scalar(@{$antipop->hoshitori}),  1;
    is scalar(@{$mizzy->hoshitori}),    1;
    is scalar(@{$r7kamura->hoshitori}), 1;
};

done_testing;
