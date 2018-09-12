#!/usr/bin/perl
# use strict;
use utf8;
use warnings;
use diagnostics;

#The problem here is straight forward. You need to assign word to the first argument of this @ARGV. 
#After you have done so you must slice the first argument off. 

@ARGV = ("file_one.txt", "file_two.txt");
$argSize = @ARGV;
if($argSize < 2) {
  print "it aint gonna work you don't have enough files";
}

# chomp($word = $ARGV[0]);
$word = "poop";
# splice @ARGV, $argSize, $argSize -1; 
# print "this is the word " . $word;
# For some reason the array is coming back in scalar context
# print "This is the updated array " . @ARGV;
$maxFile = '';
$maxCount = 0;


# Sub routine to count the occurence of a word in a file
sub read_file_count_word {
  $currentWordCount = 0;
  open(FILE, $_[0]) or die "Could not read this file.";

  while(<FILE>) {
    chomp;
    @fileWordsArray = split(' ', $_);
  }
  close FILE;

  foreach (@fileWordsArray) {
    if($_ eq $word) {
      $currentWordCount++;
    }
  }
  return $currentWordCount;
}

# Loop through array of all arguements and pass them into the subroutine
foreach $fileName (@ARGV) {
  read_file_count_word($fileName);
  if($currentWordCount > $maxCount) {
    $maxCount = $currentWordCount;
    $maxFile = $fileName;
  }
  print "This is current maxCount " . $maxCount . "\n";
  print "This is current maxFile " . $maxFile . "\n";
}

print "The file " . $maxFile . " has the most occurences of the word " . $word . " It occurs " . $maxCount . " number of times."; 
