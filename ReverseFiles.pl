#!/usr/bin/perl

use strict;
use warnings;


sub reverse_code {
  my $code = shift;
  my $reversed_code = "";
  for (my $i = length($code) - 1; $i >= 0; $i--) {
    $reversed_code .= substr($code, $i, 1);
  }
  return $reversed_code;
}
# Check if any filenames are provided as command-line arguments
if (@ARGV) {
    # Process each file provided as an argument
    foreach my $file (@ARGV) {
        open(my $fh, '<', $file) or die "Can't open $file: $!\n";
        my @lines = <$fh>;
        close($fh);

        # Reverse the lines and print them
        my $reversed_code = reverse_code(@lines);
        print $reversed_code;
    }
} else {
    # Read lines from standard input and store them in an array
    my @lines = <STDIN>;
    
    # Reverse the lines and print them
    my $reversed_code = reverse_code(@lines);
    print $reversed_code;
}
