#!/usr/bin/env perl
use strict;
use warnings;
use Test::More tests => 3;
use Test::Exception;
use autobox::Closure::Attributes;

my ($inc, $double) = do {
    my $x = 10;
    (sub { ++$x }, sub { $x *= 2 });
};

is($inc->x, 10);
is($inc->x = 33, 33);
is($inc->x, 33);

