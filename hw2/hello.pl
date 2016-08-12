#!/usr/bin/perl

print "Content-type: text/html\n\n";
print "Hello world from CGI the time is \n";
$now_string = localtime();
print "$now_string";

$random_color = rand(0xffffff);

# # print $random_color;
print start_html(-title=>'Secrets of the Pyramids',
			    -author=>'fred@capricorn.org',
			    -base=>'true',
			    -target=>'_blank',
			    -meta=>{'keywords'=>'pharaoh secret mummy',
				    'copyright'=>'copyright 1996 King Tut'},
			    -style=>{'src'=>'/styles/style1.css'},
			    -BGCOLOR=>'blue');
