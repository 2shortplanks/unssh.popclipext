#!/usr/bin/perl

use strict;
use warnings;

use Tie::File;

# get what popclip passed us
my $input = $ENV{POPCLIP_TEXT};
chomp $input;

# parse it
my ($path,$lineno) = $input =~ m/key in (.*):([0-9]+)\z/;

# open the file by tie-ing it to the array
my @array;
tie @array, 'Tie::File', $path
	or die "Can't tie the file";

# delete the line by altering the array
splice @array, $lineno-1, 1;