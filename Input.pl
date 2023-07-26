#!/usr/bin/perl

use strict;
use warnings;

# Prompt for input
print "Enter a list of numbers (one per line) and finish with 999:\n";

# Read the numbers from the terminal and calculate the total
my $total = 0;
while (my $input = <STDIN>) {
    chomp $input;
    last if $input == 999;  # Break the loop if 999 is entered
    $total += $input;       # Add the number to the total
}

# Print the total
print "Total of all the numbers: $total\n";
