use strict;
use Test::More;

use Butsukari::Rikishi;

subtest 'new' => sub {
    my $rikishi = Butsukari::Rikishi->new(
        shikona => 'kan',
    );

    isa_ok $rikishi, 'Butsukari::Rikishi';
};

subtest 'shikona' => sub {
    my $rikishi = Butsukari::Rikishi->new(
        shikona => 'kan',
    );

    is $rikishi->shikona, 'kan';
};

subtest 'hoshitori' => sub {
    my $rikishi = Butsukari::Rikishi->new(
        shikona => 'kan',
    );

    is ref($rikishi->hoshitori), 'ARRAY';
};

subtest 'power' => sub {
    my $rikishi = Butsukari::Rikishi->new(
        shikona => 'kan',
    );

    ok $rikishi->power < 10;
};

subtest 'kachiboshi/makeboshi' => sub {
    my $kan = Butsukari::Rikishi->new(
        shikona => 'kan',
    );
    my $antipop = Butsukari::Rikishi->new(
        shikona => 'antipop',
    );

    push @{$kan->{hoshitori}},(
        {
            rikishi => $antipop,
            result  => 1,
        },
        {
            rikishi => $antipop,
            result  => 0,
        },
        {
            rikishi => $antipop,
            result  => 1,
        },
    );

    is $kan->kachiboshi, 2;
    is $kan->makeboshi,  1;
};

subtest 'match' => sub {
    my $kan = Butsukari::Rikishi->new(
        shikona => 'kan',
    );
    my $antipop = Butsukari::Rikishi->new(
        shikona => 'antipop',
    );
    $kan->match($antipop);

    is scalar(@{$kan->hoshitori}),     1;
    is scalar(@{$antipop->hoshitori}), 1;
};

done_testing;
