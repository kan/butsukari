#!/usr/bin/env perl
use strict;
use warnings;
use Butsukari::Banduke;
use Butsukari::Rikishi;

my $kan      = Butsukari::Rikishi->new(shikona => 'kan');
my $antipop  = Butsukari::Rikishi->new(shikona => 'antipop');
my $mizzy    = Butsukari::Rikishi->new(shikona => 'mizzy');
my $r7kamura = Butsukari::Rikishi->new(shikona => 'r7kamura');

map { print $_->[0]->shikona . " vs " . $_->[1]->shikona . "\n" } @{Butsukari::Banduke->new(
    $kan,
    $antipop,
    $mizzy,
    $r7kamura,
)->torikumi};
