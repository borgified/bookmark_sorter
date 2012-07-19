#!/usr/bin/env perl

use warnings;
use strict;
use JSON;
use File::Slurp;
use Data::Dumper;
use Hash::Flatten qw(:all);


my $json = JSON->new->utf8;

my $bookmarks = $json->decode( read_file("bookmarks-2012-05-03.json"));

my $flat_hash = flatten($bookmarks);

foreach my $key (keys %$flat_hash){
	if($key =~ /\.uri$/ && $$flat_hash{$key} =~ /^http:\/\//){
		print "$$flat_hash{$key}\n";
	}
}

#should we uniquify the urls?
