#!/usr/bin/perl

print "What is your first name? ";
chomp ($first_name = <STDIN>);

print "What is your last name? ";
chomp ($last_name = <STDIN>);

print "Please enter your three favorite foods, one per line\n";
chomp ($foods[0] = <STDIN>);
chomp ($foods[1] = <STDIN>);
chomp ($foods[2] = <STDIN>);

print "Type 'true' if you want there to be an oxford comma and 'false' if you don't want there to be an oxford comma.\n";
chomp($include_oxford_comma = <STDIN>);

@lastFood = splice @foods, -1;
@withoutLastFood = @foods;

#  Using the oxford comma means that we should have a comma after each word in the list
if ($include_oxford_comma eq "true") {
	$withoutLastFood = join (", ", @withoutLastFood);
	unshift @lastFood, 'and';
	$lastFood = join(" ", @lastFood);
	print "You are $first_name $last_name, and you like to eat " . $withoutLastFood . "," . " " . $lastFood . "!"; 
}
else {
	$withoutLastFood = join (", ", @withoutLastFood);
	unshift @lastFood, 'and';
	$lastFood = join(" ", @lastFood);
	print "You are $first_name $last_name, and you like to eat " . $withoutLastFood . " " . $lastFood . "!";
}