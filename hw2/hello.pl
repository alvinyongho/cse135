#!/usr/bin/perl
use CGI;
$co = new CGI;  

print "Content-type: text/html\n\n";
print "Hello world from cgi which is not another name for perl although it is written in perl... anyways, the time is \n";
$now_string = localtime();
print "$now_string";


my @colors = map { 
  join "", map { sprintf "%02x", rand(255) } (0..2) 
} (0..63);


$co->start_html
(
    # -title=>'CGI Example', 
    # -author=>'your Name', 
    # -meta=>{'keywords'=>'CGI Perl'}, 
    -BGCOLOR=>'black', 
    # -LINK=>'red'
)