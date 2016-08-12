#!/usr/bin/perl

use strict;

use CGI::Template;
my $t = new CGI::Template;

my $title = "Welcome";
my $menu  = "Menu";
my $text  = "Hello world.";

print $t->header();
print $t->content(
	TITLE => $title,
	MENU  => $menu,
	TEXT  => $text,
);