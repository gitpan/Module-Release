# $Id: pod_coverage.t,v 1.2 2005/12/24 18:58:16 comdog Exp $
use Test::More;
eval "use Test::Pod 1.00";
plan skip_all => "Test::Pod 1.00 required for testing POD" if $@;
all_pod_files_ok(  );
