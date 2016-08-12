#!/usr/bin/perl

use CGI;
print "Content-type: text/html\n\n";
print "Hello world from CGI the time is \n";
$now_string = localtime();
print "$now_string";

$random_color = rand(0xffffff);

# print $random_color;


print start_html( -title=>'Body with background image',
                  -style=>{'background-color:#$random_color'}
             );