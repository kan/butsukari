use strict;
use warnings;
use utf8;
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

subtest 'torikumi' => sub {
    my $kan = Butsukari::Rikishi->new(
        shikona => 'kan',
    );
    my $antipop = Butsukari::Rikishi->new(
        shikona => 'antipop',
    );
    $kan->torikumi($antipop);

    is scalar(@{$kan->hoshitori}), 1;
    is scalar(@{$antipop->hoshitori}), 1;
};

subtest 'kuroboshi/shiroboshi' => sub {
    my $kan = Butsukari::Rikishi->new(
        shikona => 'kan',
    );
    my $antipop = Butsukari::Rikishi->new(
        shikona => 'antipop',
    );
    $kan->torikumi($antipop);
    
    is $kan->shiroboshi, 1;
    is $antipop->shiroboshi, 0;
    is $kan->kuroboshi, 0;
    is $antipop->kuroboshi, 1;
};

done_testing;

