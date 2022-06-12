#!/usr/bin/perl -w -CSDA
use v5.022;
use strict;
use utf8;


my $text_file = 'harpocration-tlg1389_001.utf';
my $tmp = 'harpocration.txt';
my $dsl = './dictionary/harpocration.dsl';
my $header = 'harpocration-header';

open IN, "<$text_file";
open OUT, ">$tmp";
my $head = "";
my $body = "";
while (my $line = <IN>){
  next if $line =~ /^\{/;
  chomp $line;
  $line =~ s/\s+$//;
  $line =~ s/^[”“]//;
  if ($line =~ /^(.+):(.+)$/)
  {
    &print_lemma($head, $body);
    $head = $1;
    $body = $2;
  }
  else
  {
    $body .= " $line";
  }
}
close IN;
close OUT;

qx{cat $header $tmp > $dsl};

unlink $tmp;


sub print_lemma
{
  my $head = shift @_;
  my $body = shift @_;
  return unless $head && $body;
  $body =~ s/-\s+//g;
  $body =~ s/(“.+?”)/[b]$1\[\/b]/g;
  say OUT $head;
  say OUT "\t[m1]$body\[/m]";
}



