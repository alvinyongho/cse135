#!/usr/bin/perl
print "Content-type: text/html\n\n";
print "Hello world from CGI the time is \n";
$now_string = localtime();
print "$now_string";



# for (1 .. 10) {
    printf "%08X\n", rand(0xffffff);
# }