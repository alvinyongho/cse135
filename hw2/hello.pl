#!/usr/bin/perl

use Template;
print "Content-type: text/html\n\n";
print "Hello world from CGI the time is \n";
$now_string = localtime();
print "$now_string";

$random_color = rand(0xffffff);

# print $random_color;

$template = Template->new;
$template->process(\*DATA, {random_color => $random_color});

__DATA__
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf=8">
        <title>Demo</title>
        <style>
            body {
                background-color: [% random_color | html %];
            }

       </style>
    </head>
    <body>
        # <h1>Your content here</h1>
    </body>
</html>