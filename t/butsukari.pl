#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use Butsukari::Banduke;
use Butsukari::Rikishi;

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

my $banduke = Butsukari::Banduke->new(
    $kan, $antipop, $mizzy, $r7kamura,
);
my $torikumi = $banduke->torikumi;
for my $rikishi (@{$torikumi}) {
    print "@{[$rikishi->[0]]} vs @{[$rikishi->[1]]}\n";
}
