#!/usr/bin/perl

use strict;

Template;
my $t = new Template;

my $title = "Welcome";
my $menu  = "Menu";
my $text  = "Hello world.";

print $t->header();
print $t->content(
	TITLE => $title,
	MENU  => $menu,
	TEXT  => $text,
);