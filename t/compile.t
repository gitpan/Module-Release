# $Id: compile.t 2515 2008-04-05 11:58:48Z comdog $

use Test::More tests => 2;

eval "use Module::Release::Subversion";

my $file = 'blib/script/release';

SKIP: {
	skip "Need Module::Release::Subversion for this test", 2 unless
		( ! $@ and -e $file );
	
	use_ok( 'Module::Release' );
	
	my $output = `$^X -Mblib -c $file 2>&1`;
			
	like( $output, qr/syntax OK$/, 'script compiles' );
	}
           
