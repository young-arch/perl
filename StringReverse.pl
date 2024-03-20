#!/usr/bin/perl

use strict;
use warnings;

# Prompt for input
print "Enter a list of strings (press Ctrl+D on Unix/Linux or Ctrl+Z on Windows to finish):\n";

# Read the input strings from the terminal
my @strings;
while (my $input = <STDIN>) {
    chomp $input;
    push @strings, $input;
}

# Print the list in reverse order
print "List in reverse order:\n";
print "$_\n" for reverse @strings;
