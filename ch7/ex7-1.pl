#!/usr/bin/env perl

use strict;
use warnings;
use utf8;

use File::Find;
use Time::Local;

use Data::Dumper;

# Implement this
# Given a starting and ending timestamp, returns a pair of coderefs.
# First coderef:
# Saves the names of only the items which were modified between those
# two times.
# Second coderef:
# Returns the list of items found.
sub gather_mtime_between {
    my( $start_time, $stop_time ) = @_;
    
    my @file_list;
 
    my $callback = sub {
        return if not -f _; 

        my $mod_time = (stat)[9];

        unless (defined $mod_time) {
            warn "Couldn't stat the file $File::Find::name: $!, skipping\n";
            return;
        }

        if ($mod_time >= $start_time and $mod_time <= $stop_time) {
            push @file_list, $File::Find::name;        
        } 
    };

    my $report = sub {
        return @file_list;
    };

    return ($callback, $report); 
}

my $target_dow = 0;        # Sunday is 0, Monday is 1, ...
my @starting_directories = (".");

my $seconds_per_day = 24 * 60 * 60;
my($sec, $min, $hour, $day, $mon, $yr, $dow) = localtime;
my $start = timelocal(0, 0, 0, $day, $mon, $yr);        # midnight today

while ($dow != $target_dow) {
  # Back up one day
  $start -= $seconds_per_day;        # hope no DST! :-)
  if (--$dow < 0) {
    $dow += 7;
  }
}
my $stop = $start + $seconds_per_day;

my($gather, $yield)  = gather_mtime_between($start, $stop);
find($gather, @starting_directories);
my @files = $yield->(  );

for my $file (@files) {
  my $mtime = (stat $file)[9];        # mtime via slice
  my $when = localtime $mtime;
  print "$when: $file\n";
}

