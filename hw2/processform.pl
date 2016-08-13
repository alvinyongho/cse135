#!/usr/bin/perl

use Data::Dumper;
use CGI qw/:standard :html3/;
my $q = CGI->new;
 
print $q->header;

print $q->start_html(-title => 'A web form');

my $request_type = $ENV{'REQUEST_METHOD'};
my $query_to_parse = '';




$newStyle=<<END;
<!-- 

Body {
	background-color: #CCDDEE
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
# print header();
# print start_html( 
# 	-title=>'Hello CGI',
# 	-style=>
# 	{
# 	    -code=>$newStyle}
# );


if ($request_type eq 'POST'){
	print 'THIS WAS A POST';
	# read(STDIN, $request, $ENV{'CONTENT_LENGTH'}) || die "Couldn't get the query\n";
	# print $request;

	print "These are the parameters I received:\n\n";


	print "Hello " . $q->param('name');


} elsif ($request_type eq 'GET'){
	print 'IT WAS A GET';
	$request = $ENV{'QUERY_STRING'};
	print $request;
}



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