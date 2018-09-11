#!/usr/bin/perl

print "What is your first name? ";
chomp ($first_name = <STDIN>);

print "What is your last name? ";
chomp ($last_name = <STDIN>);

print "Please enter your three favorite foods, one per line\n";
chomp ($foods[0] = <STDIN>);
chomp ($foods[1] = <STDIN>);
chomp ($foods[2] = <STDIN>);

#  Insert the word "and" into the list of foods, so the user doesn't have 
#  to type it
($foods[2], $foods[3]) = ("and", $foods[2]);


#  Assume that we won't include the Oxford comma
$include_oxford_comma = 1;

#  If there is 1 command line argument, check to see if it's the word true
if ($ARGV == 1) {
	$include_oxford_comma = ($ARGV[1] == "true");
}

#  Using the oxford comma means that we should have a comma after each word in the list
if ($include_oxford_comma) {
	print "we're inside of the include oxford comma conditional \n";
	$foods = join (", ", @foods[0..2]);
}
else {
	$foods = join (", ", ($foods[0], $foods[1]));
	$foods .= " $foods[3]";
}

print "You are $first_name $last_name, and you like to eat $foods!\n";
