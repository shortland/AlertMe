#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

binmode STDOUT, ":utf8";

use File::Slurp;
use JSON;

use Methods::Insert;
use Methods::Read;
#Methods::Insert->new();

#insert_item("hi");

my $path = "items.json";
my $userID = "12341";

print read_item($path, $userID, 1);