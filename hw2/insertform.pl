#!/usr/bin/perl

use Data::Dumper;
use CGI;
my $q = CGI->new;
 
print $q->header;

print $q->start_html(-title => 'A web form');


print "<script src='form.js'    type='text/javascript'></script>\n";


print $q->start_form(
        -name    => 'main_form',
        -id      => 'myForm',
        -method  => 'POST',
        -enctype => &CGI::URL_ENCODED,
        -onsubmit => 'validate()',
        -action => 'processform.pl', # Defaults to 
                                                 # the current program
);


print "Name: ".$q->textfield(
        -name      => 'name',
        -value     => '',
        -size      => 20,
        -maxlength => 30,
    );

print $q->br;

print "Favorite Color: ".$q->textfield(
        -name      => 'color',
        -value     => '',
        -size      => 20,
        -maxlength => 30,
    );

print $q->br;

print $q->popup_menu(-name=>'ins_method',
				 -values=>['GET','POST'],
				 -default=>'POST');

print $q->br;

print $q->submit(-value=>'Submit');

print $q->end_form;

print $q->end_html;