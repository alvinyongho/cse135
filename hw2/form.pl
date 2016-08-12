#!/usr/bin/perl

use Data::Dumper;
use CGI;
my $q = CGI->new;
 
my %data;
$data{fullname} = $q->param('fullname');
$data{country} = $q->param('country');
$data{question} = $q->param('question');
 
print $q->header;
if ($data{fullname} !~ /^[\s\w.-]+$/) {
	print "Name must contain only alphanumerics, spaces, dots and dashes.";
	exit;
}