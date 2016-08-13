#!/usr/bin/perl

use Data::Dumper;
use CGI qw/:standard :html3/;
use CGI::Carp qw(fatalsToBrowser); # show errors in browser
use CGI::Session;

my $q = CGI->new;
 
my $s = CGI::Session->new($q);

print $s->header();

print $q->header;




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

print $q->start_html(-title=>'Insert Form CGI',
    -style=>{
        -code=>$newStyle
    }
);


print "<script src='form.js'    type='text/javascript'></script>\n";


printf "Your session ID is: %s\n", $s->id;
printf "This sessin is: %s\n", $s->is_new ? 'NEW': 'old';
printf "Stored session 'test' value: '%s'\n", $q->escapeHTML($s->param('test'));
printf "CGI Params: %s\n", join ', ', $q->param;


print $q->start_form(
        -name    => 'main_form',
        -id      => 'myForm',
        -method  => 'POST',
        -enctype => &CGI::URL_ENCODED,
        -onsubmit => 'validate_session()',
        -action => 'sessionpage2.pl', # Defaults to 
                                                 # the current program
);


print "Name: ".$q->textfield(
        -name      => 'name',
        -value     => '',
        -size      => 20,
        -maxlength => 30,
    );

# print $q->br;

# print "Favorite Color: ".$q->textfield(
#         -name      => 'color',
#         -value     => '',
#         -size      => 20,
#         -maxlength => 30,
#     );

print $q->br;

# print $q->popup_menu(-name=>'ins_method',
# 				 -values=>['GET','POST'],
# 				 -default=>'POST');

# print $q->br;

print $q->submit(-value=>'Submit');

print $q->end_form;

print $q->end_html;