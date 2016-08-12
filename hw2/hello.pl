#!/usr/bin/perl
use CGI qw/:standard :html3/;
print "Content-type: text/html\n\n";
print "Hello world from CGI the time is \n";
$now_string = localtime();
print "$now_string";

$random_color = rand(0xffffff);

# # print $random_color;

print body();