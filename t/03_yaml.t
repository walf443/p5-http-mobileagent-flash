use strict;
use Test::More;

eval q{ use YAML };
if ($@) {
    plan skip_all => 'YAML not installed';
}
else {
    plan tests => 8;
    $ENV{DOCOMO_FLASH_MAP} = 't/docomo.yaml';
    use_ok 'HTTP::MobileAgent';
    use_ok 'HTTP::MobileAgent::Flash';
}

my @TESTS = (
    [
        {HTTP_USER_AGENT => 'DoCoMo/2.0 D000i(c100;TB;W24H12)'},
        {version => '1.0', width => 240, height => 270,  max_file_size => 200} 
    ],
);

for (@TESTS) {
    my ($env, $check) = @$_;
    local *ENV = $env;

    my $agent = HTTP::MobileAgent->new;
    my $flash = $agent->flash;
    isa_ok $flash, 'HTTP::MobileAgent::Flash';
    if ($agent->is_flash) {
        for my $method (keys %$check) {
            is(
                $flash->$method(),
                $check->{$method}, 
                sprintf("%s : %s = %s", $agent->model, $method, $check->{$method})
            );
        }
        my $version = $check->{version};

        ok $agent->flash->is_supported($version), sprintf("%s : is_supported = %s", $agent->model, $version);
    }
    else {
        is scalar keys %$check, 0, sprintf("%s : none flash", $agent->model);
        ok !$agent->flash->is_supported('0.0'), sprintf("%s : is_supported 0.0", $agent->model);
    }
}
