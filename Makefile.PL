use ExtUtils::MakeMaker;
WriteMakefile(
        'NAME'         => 'HTTP::MobileAgent::Flash',
        'VERSION_FROM' => 'lib/HTTP/MobileAgent/Flash.pm', # finds $VERSION
        'PREREQ_PM'    => {
                'Test::More' => 0.32,
                'HTTP::MobileAgent' => 0,
                'Class::Accessor'   => 0,
        },
);
