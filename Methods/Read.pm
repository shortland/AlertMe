#!/usr/bin/perl

package Methods::Read;

# read the specific item_array from json

use v5.10;
use strict;
use warnings;

use Exporter;

our @ISA = qw(Exporter);

#can be
#default
our @EXPORT_OK = qw(read_item);
our @EXPORT = qw(read_item);

use File::Slurp;
use JSON;

sub read_item {
	my ($path, $userID, $decode) = @_;

	my $c_json = read_file($path);
	$c_json = decode_json($c_json)->{$userID};

	if ($decode) {
		$c_json = encode_json($c_json);
	}
	
	return $c_json;
}

1;