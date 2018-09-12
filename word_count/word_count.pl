#!/usr/bin/perl
# use strict;
use utf8;
use warnings;
# use diagnostics;

@ARGV = ("texas", "file_one.txt", "file_two.txt", "texas.txt");

$argSize = @ARGV;
@fileArgs = splice @ARGV, 1, $argSize;

if($argSize < 3) {
  print "it aint gonna work you don't have enough files to compare string occurences";
}

chomp($word = $ARGV[0]);
$maxFile = '';
$maxCount = 0;

# Sub routine to count the occurence of a word in a file
sub read_file_count_word {
  $currentWordCount = 0;
  open(FILE, $_[0]) or die "Could not read one of your files so the program is stopping.";
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
foreach $fileName (@fileArgs) {
  read_file_count_word($fileName);
  if($currentWordCount > $maxCount) {
    $maxCount = $currentWordCount;
    $maxFile = $fileName;
  }
}

print "The file " . $maxFile . " has the most occurences of the word " . $word . " It occurs " . $maxCount . " number of times."; 





  