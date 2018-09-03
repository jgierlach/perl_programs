#!/usr/bin/perl
# use strict;
use warnings;
use utf8;
use warnings;
use diagnostics;

$line = <STDIN>;
if($line > 0) {
  print 'this number is greater than 0';
} else {
  print "this number is less than 0";
}