#!/usr/bin/perl

use Data::Dumper;
use CGI;
use CGI ':standard';
my $q = CGI->new;
 
print $q->header;

print $q->start_html(-title => 'A web form');

my $request_type = $ENV{'REQUEST_METHOD'};
my $query_to_parse = '';

if ($request_type eq 'POST'){
	print 'THIS WAS A POST';
	# read(STDIN, $request, $ENV{'CONTENT_LENGTH'}) || die "Couldn't get the query\n";
	# print $request;

	print "These are the parameters I received:\n\n";


	my( $name, $value );

	foreach $name ( $q->param ) {
    	print "$name:\n";
    	foreach $value ( $q->param( $name ) ) {
        	print "  $value\n";
    }
}

} elsif ($request_type eq 'GET'){
	print 'IT WAS A GET';
	$request = $ENV{'QUERY_STRING'};
	print $request;
}


