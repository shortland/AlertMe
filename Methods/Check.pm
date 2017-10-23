#!/usr/bin/perl

package Methods::Check;

use v5.10;
use strict;
use warnings;

use Exporter qw(import);
our @EXPORT_OK = qw(check_item);

use File::Slurp;
use JSON;

sub check_item {
	# for each read_item if time_to_alert is in <300 seconds (5min) alert
}

1;