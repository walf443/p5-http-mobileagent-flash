use strict;
use warnings;

use YAML;
use Data::Dumper;
my $yaml = YAML::Load(join "", <STDIN>);

print Dumper $yaml;
