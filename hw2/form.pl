 #!/usr/bin/perl
# use strict;
use warnings;
use CGI;
# use CGI::Carp qw(fatalsToBrowser);

my $q = CGI->new;

# print $q->header;

# print $q->start_html(-title => 'A web form');

print $q->start_form;