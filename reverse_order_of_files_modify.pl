#!/usr/bin/perl
use strict;
use warnings;
# Process files

sub reverse_code {
  my $code = shift;
  my $reversed_code = "";
  for (my $i = length($code) - 1; $i >= 0; $i--) {
    $reversed_code .= substr($code, $i, 1);
  }
  return $reversed_code;
}

foreach my $file (@ARGV) {
open(my $fh, '<', $file) or die "Cannot open file '$file': $!";
my @lines = <$fh>;
close($fh);
# Reverse the order of lines
@lines = reverse @lines;
# Print reversed lines for this file
print "File: $file";
my $reversed_code = reverse_code(@lines);
print $reversed_code;
print "\n";
}