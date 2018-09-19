#!/usr/bin/perl
# use strict;
use utf8;
use warnings;
# use diagnostics;

print "What is your first name? ";
chomp ($first_name = <STDIN>);

print "What is your last name? ";
chomp ($last_name = <STDIN>);

print "Please enter your favorite foods, one per line. \n If at any point you want to enable the oxford comma setting type 'true'. \n Otherwise by default it will be set to 'false'. \n After you have finished listing items type break in order to allow the program to run and process your requests. \n";

# Get our user input and create the foods array
while() {
	chomp($input = <STDIN>);
	if($input eq "break") {
	  	last;
	}
	push @foods, $input;
}

# By default the oxford comma will be set to false
# If user enters true find it and change variable to true
$include_oxford_comma = "false";
foreach $userInput (@foods) {
  if($userInput eq "true") {
    $include_oxford_comma = "true";
  }
}

# Find the last food item entered and save it to a variable
# If item is the string true or false look one more index back
if($foods[-1] ne "true" && $foods[-1] ne "false") {
  $lastFood = 'and ' . $foods[-1];
  splice @foods, -1;
} else {
  $lastFood = 'and ' . $foods[-2];
  splice @foods, -2;
}

# Whether variable is true false run the oxford comma or not
if ($include_oxford_comma eq "true") {
	$withoutLastFood = join (", ", @foods);
	print "You are $first_name $last_name, and you like to eat " . $withoutLastFood . "," . " " . $lastFood . "!"; 
}
else {
	$withoutLastFood = join (", ", @foods);
	print "You are $first_name $last_name, and you like to eat " . $withoutLastFood . " " . $lastFood . "!";
}

