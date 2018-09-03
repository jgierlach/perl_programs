#!/usr/bin/perl
# use strict;
use warnings;
use utf8;
use warnings;
use diagnostics;

print "Enter the radius of your circle ";
$radius = <STDIN>;
if($radius > 0) {
  $circumference = 2 * 3.141592654 * $radius;
  print "The circumference is " . $circumference;   
} else {
  print "The circumference would be 0";
}