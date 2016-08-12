#!/usr/bin/perl


sub xcgi_InitForm
{
  my($h) = '[a-fA-F0-9]';
  my($buff, @params, $param);
  my($param_name, $param_value);
  local(*xcgi_form) = @_ if @_;

  read(STDIN, $buff, $ENV{'CONTENT_LENGTH'});

  @params = split(/&/, $buff);

  foreach $param (@params)
  {
    ($param_name, $param_value) = split(/=/, $param);

    $param_value =~ tr/+/ /;
    $param_value =~ s/%($h$h)/pack("C",hex($1))/eg;

    $xcgi_form{$param_name} = $param_value;
  }
}

{
  my(@form);

  xcgi_InitForm(*form);

  $url = $form{'url'};
  print "Location: $urlnn";
}