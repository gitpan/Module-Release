#$Id: pod.t 2326 2007-10-04 02:51:43Z comdog $

use Test::More;
eval "use Test::Pod 1.00";
plan skip_all => "Test::Pod 1.00 required for testing POD" if $@;
all_pod_files_ok( );
