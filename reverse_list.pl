#!/usr/bin/perl
# use strict;
use warnings;
use utf8;
use warnings;
use diagnostics;

print "Enter your list motherfucker ";
@list = <STDIN>;
# print @list;
@reverse = reverse(@list);
print @reverse;