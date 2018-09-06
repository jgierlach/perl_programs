#!/usr/bin/perl
# use strict;
use warnings;
use utf8;
use warnings;
use diagnostics;

#1. correctly read in all the number to create list
#2. create hard coded name array
#3. create an empty string variable to hold all the names
#4. iterate over list of number and concatenate them 

print "enter a list of numbers \n";
chomp(@numberList = <STDIN>);
@names = qw(bill john wiat poop);
$result = '';
for($i = 0; $i <= scalar @numberList; $i++) {
  $result = $result . @names[@numberList[$i]] . ' ';  
}
print $result;