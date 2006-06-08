# $Id: pod_coverage.t,v 1.3 2006/06/08 05:48:24 comdog Exp $
use Test::More;
eval "use Test::Pod::Coverage 1.00";
plan skip_all => "Test::Pod::Coverage 1.00 required for testing POD" if $@;
all_pod_coverage_ok();
