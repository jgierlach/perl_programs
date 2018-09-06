#!/usr/bin/perl
# use strict;
use warnings;
use utf8;
use warnings;
use diagnostics;


print "Enter a string ";
$userString = <STDIN>;
print "Enter a number ";
$userNumber = <STDIN>;

for($i = 0; $i < $userNumber; $i = $i + 1) {
    print $userString;
}