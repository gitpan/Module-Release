# $Id: pod_coverage.t,v 1.1 2005/11/11 02:59:00 comdog Exp $
use Test::More;
eval "use Test::Pod 1.00";
plan skip_all => "Test::Pod 1.00 required for testing POD" if $@;
my @poddirs = qw( blib script );
all_pod_files_ok( all_pod_files( @poddirs ) );
