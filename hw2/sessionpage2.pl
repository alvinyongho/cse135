#!/usr/bin/perl

use Data::Dumper;
use CGI qw/:standard :html3/;

use CGI::Carp qw(fatalsToBrowser); # show errors in browser
use CGI::Session;



my $q = CGI->new;
 
my $s = CGI::Session->new($q);


print $q->header;

print $q->start_html(-title => 'Process form');

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
print start_html( 
	-title=>'Process Form CGI',
	-style=>
	{
	    -code=>$newStyle}
);


if ($request_type eq 'POST'){
	# print 'THIS WAS A POST';
	# read(STDIN, $request, $ENV{'CONTENT_LENGTH'}) || die "Couldn't get the query\n";
	# print $request;

	# print "These are the parameters I received:\n\n";


	printf "Your session ID is: %s\n", $s->id;
	printf "This sessin is: %s\n", $s->is_new ? 'NEW': 'old';
	printf "Stored session 'test' value: '%s'\n", $q->escapeHTML($s->param('test'));
	printf "CGI Params: %s\n", join ', ', $q->param;


	print "Hello " . $q->param('name');
	print " nice to meet you!";


	print "<button id='clear_session' onclick='deleteSession'>Clear Session</button>";


} elsif ($request_type eq 'GET'){
	# print 'IT WAS A GET';
	# $request = $ENV{'QUERY_STRING'};
	# print $request;

	print "Uhh what are you doing!?";

}




sub deleteSession {
	$s->delete;
}




# print h1('CGI with Style'),
#       p({-class=>'Tip'},
#     "Better read the cascading style sheet spec before playing with this!"),
#       span({-style=>'color: magenta'},
#        "Look Mom, no hands!",
#        p(),
#        "Whooo wee!"
#        );
print end_html;