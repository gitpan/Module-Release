use ExtUtils::MakeMaker 6.64;
use strict;
use warnings;

require 5.010;

eval "use Test::Manifest 1.21";

WriteMakefile(
	'NAME'         => 'Module::Release',
	'AUTHOR'       => 'brian d foy <bdfoy@cpan.org>',
	'ABSTRACT'     => 'Automate Perl distribution releases',
	'VERSION_FROM' => "lib/Module/Release.pm",
	'LICENSE'      => 'perl',

	'EXE_FILES'    =>  [ 'script/release' ],

	'PREREQ_PM'    => {
		'CACertOrg::CA'         => '0',
		'ConfigReader::Simple'  => '0',
		'IO::Null'              => '0',
		'Mojolicious'           => '4.50',
		'URI'                   => '0',
		},

	'TEST_REQUIRES' => {
		'Test::More'            => '0.95',
		'Test::Output'          => '0',
		'Test::Without::Module' => '0',
		},
	
	'CONFIGURE_REQUIRES' => {
		'ExtUtils::MakeMaker'   => '6.64',
		},

	'MIN_PERL_VERSION' => 5.010,

	'META_MERGE' => {
		'meta-spec' => { version => 2 },
		resources => {
			repository => {
				type => 'git',
				url  => 'git@github.com:briandfoy/module-release.git',
				web  => 'https://github.com/briandfoy/module-release',
				},
			},
		keywords => ['workflow', 'module', 'distribution', 
			'pause', 'automation', 'testing'],
		},

	'MAN1PODS'     => {
		'script/release' => '$(INST_MAN1DIR)/release.$(MAN1EXT)',
		},

	'clean' => { FILES => '*.bak release-* Module-*' },
	);
