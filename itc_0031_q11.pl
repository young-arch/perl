#!/usr/bin/perl
sub numeric_to_english {
    my $num = shift;
    my %num_to_name = (
        1 => 'one',
        2 => 'two',
        3 => 'three',
        4 => 'four',
        5 => 'five',
        6 => 'six',
        7 => 'seven',
        8 => 'eight',
        9 => 'nine',
    );

    return $num_to_name{$num} // $num;
}

# Test the subroutine with sample input data
my @sample_input = (0, 3, 7, 9, 5, 2);

foreach my $num (@sample_input) {
    my $result = numeric_to_english($num);
    print "$num => $result\n";
}
