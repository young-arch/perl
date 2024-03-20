#!/usr/bin/perl

use strict;
use warnings;

# Prompt for input
print "Enter a list of words (press Ctrl+D on Unix/Linux or Ctrl+Z on Windows to finish):\n";

# Read the words from standard input
my @words;
while (my $input = <STDIN>) {
    chomp $input;
    push @words, $input;
}

# Check if any word contains all five vowels
my $found = 0;
foreach my $word (@words) {
    if ($word =~ /a/i && $word =~ /e/i && $word =~ /i/i && $word =~ /o/i && $word =~ /u/i) {
        print "Word with all five vowels: $word\n";
        $found = 1;
        last;  # Stop searching after finding one word with all five vowels
    }
}

unless ($found) {
    print "Word with all five vowels found.\n";
}
