#!/usr/bin/perl

use strict;
use warnings;

# Read /etc/passwd from standard input
while (my $line = <>) {
    chomp $line;
    my @fields = split /:/, $line;

    # Check if there are at least six fields (login, uid, gid, realname, home, shell)
    if (@fields >= 6) {
        my ($login, undef, $uid, $gid, $realname, $home, $shell) = @fields;
        
        # Print login and realname
        print "Login Name: $login, Real Name: $realname\n";
    }
}
