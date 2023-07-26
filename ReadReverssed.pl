#!/usr/bin/perl

use strict;
use warnings;

# Read lines from standard input or files provided in command line arguments
my @lines;
if (@ARGV) {
    foreach my $filename (@ARGV) {
        open my $fh, '<', $filename or die "Cannot open $filename: $!";
        push @lines, reverse <$fh>;
        close $fh;
    }
} else {
    @lines = reverse <STDIN>;
}

# Print the reversed lines
print @lines;
