#!/usr/bin/perl

use Data::Dumper;
use CGI;
my $q = CGI->new;



my @set = ('0' ..'9', 'A' .. 'F');
my $random_color = join '' => map $set[rand @set], 1 .. 6;



print $q->header;

print $q->start_html(-title => 'A web form');

my $request_type = $ENV{'REQUEST_METHOD'};
my $query_to_parse = '';

if ($request_type eq 'POST'){
	print 'THIS WAS A POST';
	# read(STDIN, $request, $ENV{'CONTENT_LENGTH'}) || die "Couldn't get the query\n";
	# print $request;

	print "These are the parameters I received:\n\n";


	print "Hello " . $q->param('name');


	# print $q->param('color');

	# my( $name, $value );

	# foreach $name ( $q->param ) {
 #    	print "$name:\n";
 #    	foreach $value ( $q->param( $name ) ) {
 #        	print "  $value\n";
 #    }
}

} elsif ($request_type eq 'GET'){
	print 'IT WAS A GET';
	$request = $ENV{'QUERY_STRING'};
	print $request;
}


