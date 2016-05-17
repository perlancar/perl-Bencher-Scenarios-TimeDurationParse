package Bencher::Scenario::TimeDurationParse::parse_duration;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark parse_duration()',
    participants => [
        {name => 'TDP' , fcall_template => 'Time::Duration::Parse::parse_duration(<str>)'},
        {name => 'TDPA', fcall_template => 'Time::Duration::Parse::AsHash::parse_duration(<str>)'},
    ],
    datasets => [
        {args => {'str@' => ['3h', '3 hours 4 minutes']}},
    ],
};

1;
# ABSTRACT:

=head1 BENCHMARK NOTES

L<Time::Duration::Parse::AsHash> is expected to be slightly slower since it
needs to build and return a hashref instead of a single number.
