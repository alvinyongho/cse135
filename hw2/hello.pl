#!/usr/bin/perl
use CGI qw/:standard :html3/;
# print "Content-type: text/html\n\n";
# print "Hello world from CGI the time is \n";
# $now_string = localtime();
# print "$now_string";

$random_color = rand(0xffffff);

# # # print $random_color;

# print body();



$newStyle=<<END;
<!-- 

Body {
	background-color: $random_color
}
P.Tip {
margin-right: 50pt;
margin-left: 50pt;
    color: red;
}
P.Alert {
font-size: 30pt;
    font-family: sans-serif;
  color: red;
}
-->
END
print header();
print start_html( 
	-title=>'Hello CGI',
	-style=>
	{
#		-src=>'http://www.capricorn.com/style/st1.css',
	    -code=>$newStyle}
);

print "Hello world from CGI the time is \n";
$now_string = localtime();
print "$now_string";


# print h1('CGI with Style'),
#       p({-class=>'Tip'},
#     "Better read the cascading style sheet spec before playing with this!"),
#       span({-style=>'color: magenta'},
#        "Look Mom, no hands!",
#        p(),
#        "Whooo wee!"
#        );
print end_html;