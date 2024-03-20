#!/usr/bin/perl

use strict;
use warnings;

# Mapping table
my %mapping = (
    'Red'   => 'Apple',
    'Green' => 'Leaves',
    'Blue'  => 'Ocean'
);

# Prompt for input
print "Enter a color (Red, Green, or Blue): ";
my $input = <STDIN>;
chomp $input;

# Convert input to title case
$input = ucfirst lc $input;

# Check if input exists in the mapping table
if (exists $mapping{$input}) {
    # Print the input and its mapped value
    print "$input -> $mapping{$input}\n";
} else {
    print "Invalid color entered!\n";
}
