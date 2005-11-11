# $Id: compile.t,v 1.4 2005/11/11 02:54:10 comdog Exp $

use Test::More tests => 2;

my $file = 'blib/script/release';

print "bail out! Script file is missing!" unless ok( -e $file, "File exists" );

my $output = `$^X -c $file 2>&1`;

like( $output, qr/syntax OK$/, 'script compiles' );
