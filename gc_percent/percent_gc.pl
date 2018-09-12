#!/usr/bin/perl
# use strict;
use warnings;
use utf8;
# use diagnostics;

print "Please enter a file \n";
chomp($dnaFile = <STDIN>);

$totalLetterCount = 0;
$totalCountGC = 0;

# Sub routine to count the occurence of a word in a file
  open(FILE, $dnaFile) or die "Could not read the file you have entered.";
  while(<FILE>) {
    chomp;
    @individualLettersArray = split('', $_);
  }
  close FILE;

  foreach (@individualLettersArray) {
    $totalLetterCount++;  
    if($_ eq "G" || $_ eq "G") {
      $totalCountGC++;
    }
  }

$percentage = ($totalCountGC / $totalLetterCount) * 100 . "%";

print "The Percent GC is " . $totalCountGC . " out of " . $totalLetterCount . " Therefore the percent is " . $percentage;
