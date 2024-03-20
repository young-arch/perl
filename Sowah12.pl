#!/usr/bin/perl

use strict;
use warnings;

# Prompt for input
print "Enter the filename: ";
my $filename = <STDIN>;
chomp $filename;

# Open the file
open my $fh, '<', $filename or die "Cannot open $filename: $!";

# Read and display each line with the filename prefix
while (my $line = <$fh>) {
    chomp $line;
    print "$filename:$line\n";
}

# Close the file
close $fh;
