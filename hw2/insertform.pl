#!/usr/bin/perl

use strict;
use warnings;
use CGI;
use CGI::Carp qw{ fatalsToBrowser };
use Template;

my $local_label = 'Choose a size:';
my $local_name = 'size_select';
my $db_eq_val = '20mm';
my @sizes = ( "15mm", "20mm", "25mm"); 


my $vars = {
   select_label => $local_label,
   select_name  => $local_name,
   default      => $db_eq_val,
   sizes        => \@sizes,
};

my $tname = 'templates/form.html';

my $template = Template->new({
    INCLUDE_PATH => '/Users/7stud/perl_programs/cgi_projects/1proj',
});

$template->process($tname, $vars)
    or die "*MY* template process failed: ", $template->error(), "\n";