#!/usr/bin/perl

use strict;
use warnings;

sub number_to_english {
    my $num = shift;

    my @names = qw(one two three four five six seven eight nine);

    if ($num >= 1 && $num <= 9) {
        return $names[$num - 1];
    } else {
        return $num;
    }
}

# Prompt for input
print "Enter a number (1-9): ";
my $input = <STDIN>;
chomp $input;

# Test the subroutine with the user-provided input
my $result = number_to_english($input);
print "Number: $input, English Name: $result\n";
