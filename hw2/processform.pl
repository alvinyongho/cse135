#!/usr/bin/perl

use Data::Dumper;
use CGI;
my $q = CGI->new;
 
print $q->header;

print $q->start_html(-title => 'A web form');




if {$ENV{'REQUEST_METHOD'} eq "GET"} {
	print $ENV{'REQUEST_METHOD'};
}