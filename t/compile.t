# $Id: compile.t 2263 2007-05-03 15:08:00Z comdog $

use Test::More tests => 2;

eval "use Module::Release::Subversion";

my $file = 'blib/script/release';

SKIP: {
	skip "Need Module::Release::Subversion for this test", 2 unless
		( ! $@ and -e $file );
	
	use_ok( 'Module::Release' );
	
	my $output = `$^X -c $file 2>&1`;
			
	like( $output, qr/syntax OK$/, 'script compiles' );
	}
           
