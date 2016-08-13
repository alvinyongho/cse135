#!/usr/bin/perl

use Data::Dumper;
use CGI;
my $q = CGI->new;
 
$request_method = $ENV{'REQUEST_METHOD'};
if ($request_method eq "GET") {
    $query_string = $ENV{'QUERY_STRING'};
} elsif ($request_method eq "POST") {
    read (STDIN, $query_string, $ENV{'CONTENT_LENGTH'});
} else {
    &return_error (500, "Server Error",
                        "Server uses unsupported method");
}