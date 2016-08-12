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
        -name      => 'Name',
        -value     => '',
        -size      => 20,
        -maxlength => 30,
    ) . "Animal Name: ".
 popup_menu(-name => "methods", -values => \@results).
 submit.

print $q->end_form;