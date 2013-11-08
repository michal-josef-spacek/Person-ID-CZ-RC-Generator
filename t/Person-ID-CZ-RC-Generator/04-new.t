# Pragmas.
use strict;
use warnings;

# Modules.
use English qw(-no_match_vars);
use Error::Pure::Utils qw(clean);
use Person::ID::CZ::RC::Generator;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Test.
eval {
	Person::ID::CZ::RC::Generator->new('');
};
is($EVAL_ERROR, "Unknown parameter ''.\n", 'Bad \'\' parameter.');
clean();

# Test.
eval {
	Person::ID::CZ::RC::Generator->new(
		'something' => 'value',
	);
};
is($EVAL_ERROR, "Unknown parameter 'something'.\n",
	'Bad \'something\' parameter.');
clean();

# Test.
my $obj = Person::ID::CZ::RC::Generator->new;
isa_ok($obj, 'Person::ID::CZ::RC::Generator');
