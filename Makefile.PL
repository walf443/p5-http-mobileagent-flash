use inc::Module::Install;

all_from 'lib/HTTP/MobileAgent/Flash.pm';

test_requires 'Test::More' => 0.32;
recommends 'WWW::MobileCarrierJP' => 0.37;
requires 'HTTP::MobileAgent' => 0;
requires 'Class::Accessor' => 0;

install_script 'bin/make_map_flash_lite.pl';

WriteAll;


