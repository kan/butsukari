#!/usr/bin/env perl
use strict;
use warnings;
use Butsukari;
use Butsukari::Rikishi;

my $kan      = Butsukari::Rikishi->new(shikona => 'kan');
my $antipop  = Butsukari::Rikishi->new(shikona => 'antipop');
my $mizzy    = Butsukari::Rikishi->new(shikona => 'mizzy');
my $r7kamura = Butsukari::Rikishi->new(shikona => 'r7kamura');

Butsukari->geiko(
    $kan,
    $antipop,
    $mizzy,
    $r7kamura,
);
