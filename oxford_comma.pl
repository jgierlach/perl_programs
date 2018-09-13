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

# 1. splice the array for the last index
# 2. take that and add an and
# 3. join the other array with commas
# 4. concatenate the two at the end in your final print statement
$arraySize = @foods;

@lastFood = splice @foods, -1;
@withoutLastFood = @foods;

print "This is the lastFood array \n", @lastFood;
print "\n";
print "This is the withoutLastFood array \n", @withoutLastFood;

#  Using the oxford comma means that we should have a comma after each word in the list
if ($include_oxford_comma eq "true") {
	print "We're inside of the include oxford comma conditional \n";
	# $foods = join (", ", @foods[0..2]);
}
else {
	print "We're inside of the else block \n";
	# $foods = join (", ", ($foods[0], $foods[1]));
	# $foods .= " $foods[3]";
}

# print "You are $first_name $last_name, and you like to eat $foods!\n";
