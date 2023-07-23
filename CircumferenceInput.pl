#!/usr/bin/perl

use strict;
use warnings;

# Constants
my $PI = 3.14159;

# Prompt for the radius
print "Enter the radius of the circle: ";
my $radius = <STDIN>;
chomp $radius;

# Validate input as a number
unless ($radius =~ /^[+-]?\d+(\.\d+)?$/) {
    die "Invalid input. Please enter a valid number for the radius.\n";
}

# Calculate the circumference
my $circumference = 2 * $PI * $radius;

# Print the result
print "The circumference of the circle with radius $radius is: $circumference\n";
