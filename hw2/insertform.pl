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
    );

print $q->popup_menu(-name=>'entrees',
				 -values=>['Steak','Seafood','Veggies'],
				 -default=>'Veggies');

print $q->end_form;