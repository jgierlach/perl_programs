#!/usr/bin/perl
# use strict;
use utf8;
use warnings;
use diagnostics;

$argSize = @ARGV;
if($argSize > 1 || $argSize == 0) {
  die "You have failed to enter the proper number of arguments. This program has ceased to process your request.";  
} 

# Instantiate the hash we will be using to update the count of amino acids
%amino_acid_count = (
  A => 0,
  C => 0,
  D => 0,
  E => 0,
  F => 0,
  G => 0,
  H => 0,
  I => 0,
  K => 0,
  L => 0,
  M => 0,
  N => 0,
  P => 0,
  Q => 0,
  R => 0,
  S => 0,
  T => 0,
  V => 0,
  W => 0,
  Y => 0,  
);

#1. Create a hash of all valid amino acids
#2. Iterate through the file using split to create an array of individual characters
#3. Iterate through that array and update the count of each Amino Acid in the hash when there is an occurence
#4. Convert the hash into a list so you can then sort it alphabetically and numerically
#5. Print that list

open(FILE, $ARGV[0]) or die "Could not read one of your files so this program has terminated.";
  while(<FILE>) {
    chomp;
    @amino_acids_array = split('', $_);
    foreach $acid (@amino_acids_array) {
      if(exists $amino_acid_count{$acid}) {
        $amino_acid_count{$acid}++;   
      } else {
        die "There is a character that is not a valid amino acid in this file.";
      }
    }
  }
close FILE;

@sorted_keys = sort keys %amino_acid_count;
$unique_amino_acid_count;

print "Order of aminos alphabetically. \n";
foreach $key (@sorted_keys) {
  if($amino_acid_count{$key} > 0) {
    $unique_amino_acid_count++;
  }
  if($amino_acid_count{$key} == 0) {
    $unused_amino_acids .= "$key ";
  }
  print "$key $amino_acid_count{$key} \n";
}

print "Number of different amino acids $unique_amino_acid_count \n";

print "No occurences of $unused_amino_acids \n";

print "Order of aminos by values greatest to least \n";

foreach my $acid (sort { $amino_acid_count{$b} <=> $amino_acid_count{$a} } keys %amino_acid_count) {
    print "$acid $amino_acid_count{$acid} \n";
}

