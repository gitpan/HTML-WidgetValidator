use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'HTML::WidgetValidator',
    license             => 'perl',
    dist_author         => 'Takaaki Mizuno <cpan@takaaki.info>',
    dist_version_from   => 'lib/HTML/WidgetValidator.pm',
    requires => {
        'Test::Base'      => 0,
        'Class::Accessor' => 0,
        'HTML::Parser'    => 3.56,
        'version'         => 0,
    },
    add_to_cleanup      => [ 'HTML-WidgetValidator-*' ],
);

$builder->create_build_script();
