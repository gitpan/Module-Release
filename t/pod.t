#$Id: pod.t,v 1.8 2005/11/11 02:54:10 comdog Exp $
use Test::More;
eval "use Test::Pod 1.00";
plan skip_all => "Test::Pod 1.00 required for testing POD" if $@;
all_pod_files_ok( all_pod_files( qw(blib) ) );
