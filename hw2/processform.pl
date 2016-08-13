#!/usr/bin/perl

use Data::Dumper;
use CGI;
my $q = CGI->new;
 
print $q->header;

print $q->start_html(-title => 'A web form');

print $ENV{'REQUEST_METHOD'};


if {$ENV{'REQUEST_METHOD'} eq "GET"} {
	print $ENV{'REQUEST_METHOD'};
	} elsif ($ENV{'REQUEST_METHOD'} eq "POST") {
	print $ENV{'REQUEST_METHOD'};
}