#!/usr/bin/perl

use strict;
use warnings;

# Prompt for the temperature
print "Enter the temperature outside: ";
my $temperature = <STDIN>;
chomp $temperature;

# Check the temperature and print the result
if ($temperature > 72) {
    print "Too hot\n";
} else {
    print "Too cold\n";
}
