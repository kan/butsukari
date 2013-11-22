use strict;
use Test::More;

use Butsukari::Banduke;

subtest 'new' => sub {
    my $banduke = Butsukari::Banduke->new;
    isa_ok $banduke, 'Butsukari::Banduke';
};

subtest 'torikumi' => sub {
    my $banduke  = Butsukari::Banduke->new;
    my $torikumi = $banduke->torikumi;

    isa_ok $torikumi, 'Butsukari::Torikumi';
};

subtest 'result' => sub {
    my $banduke = Butsukari::Banduke->new;
    my $result  = $banduke->result;

    is ref($result), 'ARRAY';
};

done_testing;
