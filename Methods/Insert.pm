#!/usr/bin/perl

package Methods::Insert;

use v5.10;
use strict;
use warnings;

use Exporter;

our @ISA = qw(Exporter);

#can be
#default
our @EXPORT_OK = qw(insert_item);
our @EXPORT = qw(insert_item);

use File::Slurp;
use JSON;

sub insert_item {
	my ($path, $userID, $name, $details, $due) = @_;
	my $current_json = decode_json(read_file($path))->{$userID};
	print "ok " .$name;
}

1;