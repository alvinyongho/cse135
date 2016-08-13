#!/usr/bin/perl

use Data::Dumper;
use CGI;
my $q = CGI->new;
 
print $q->header;

print $q->start_html(-title => 'A web form');

my $request_type = $ENV{'REQUEST_METHOD'};


if ($request_type eq 'POST'){
	print 'THIS WAS A POST'
} elsif ($request_type eq 'GET'){
	print 'IT WAS A GET'
}