
use strict;
use warnings;

use 5.010;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Object and class methods for working with British postcodes.",
  "AUTHOR" => "Michael Jemmeson <mjemmeson\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Geo-UK-Postcode",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Geo::UK::Postcode",
  "PREREQ_PM" => {
    "Exporter" => 0,
    "Geo::UK::Postcode::Regex" => "0.005",
    "Moo" => 0,
    "MooX::Aliases" => 0,
    "base" => 0,
    "overload" => 0
  },
  "TEST_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0,
    "File::Find" => 0,
    "File::Spec::Functions" => 0,
    "File::Temp" => 0,
    "List::Util" => 0,
    "Test::More" => 0,
    "Test::Most" => 0,
    "lib" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.006",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Exporter" => 0,
  "ExtUtils::MakeMaker" => 0,
  "File::Find" => 0,
  "File::Spec::Functions" => 0,
  "File::Temp" => 0,
  "Geo::UK::Postcode::Regex" => "0.005",
  "List::Util" => 0,
  "Moo" => 0,
  "MooX::Aliases" => 0,
  "Test::More" => 0,
  "Test::Most" => 0,
  "base" => 0,
  "lib" => 0,
  "overload" => 0,
  "strict" => 0,
  "warnings" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



