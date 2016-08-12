#!/usr/bin/perl

use Data::Dumper;
use CGI;
my $q = CGI->new;
 
print $q->header;

print $q->start_html(-title => 'A web form');
print $q->start_form(
        -name    => 'main_form',
        -method  => 'GET',
        -enctype => &CGI::URL_ENCODED,
        -onsubmit => 'return javascript:validation_function()',
        -action => '/where/your/form/gets/sent', # Defaults to 
                                                 # the current program
);


print "Name: ".$q->textfield(
        -name      => 'name',
        -value     => '',
        -size      => 20,
        -maxlength => 30,
    );

print "Favorite Color: ".$q->textfield(
        -name      => 'color',
        -value     => '',
        -size      => 20,
        -maxlength => 30,
    );

print $q->popup_menu(-name=>'entrees',
				 -values=>['GET','POST'],
				 -default=>'POST');

# print $q->br;
print $q->submit(-value=>'Submit');

print $q->end_form;

print $q->end_html;