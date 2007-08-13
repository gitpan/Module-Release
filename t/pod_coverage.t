# $Id: pod_coverage.t 2293 2007-06-21 18:46:55Z comdog $
use Test::More;
eval "use Test::Pod::Coverage 1.00";

plan $@ ? ( skip_all => "Test::Pod::Coverage 1.00 required for testing POD" )
	: 
	( tests => 1 )
	;

pod_coverage_ok(
               "Module::Release",
               { also_private => [ qw/DASHES/ ], },
           );

