# $Id: compile.t 2257 2007-05-01 21:57:53Z comdog $

use Test::More tests => 2;

eval "use Module::Release::Subversion";

my $file = 'blib/script/release';

SKIP: {
	skip "Need Module::Release::Subversion for this test", 3 unless
		( ! $@ and -e $file );
	
	use_ok( 'Module::Release' );
	
	my $output = `$^X -c $file 2>&1`;
			
	like( $output, qr/syntax OK$/, 'script compiles' );
	}
           
