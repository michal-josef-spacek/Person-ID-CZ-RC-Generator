# Pragmas.
use strict;
use warnings;

# Modules.
use Person::ID::CZ::RC::Generator;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Person::ID::CZ::RC::Generator->new;
my $ret = $obj->rc;
like($ret, qr{^\d{9}\d?$}, 'Generate RC number.');
