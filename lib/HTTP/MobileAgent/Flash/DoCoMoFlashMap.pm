package HTTP::MobileAgent::Flash::DoCoMoFlashMap;
# -------------------------------------------------------------------------
# This file is autogenerated by make_map_flash_lite.pl
# in HTTP::MobileAgent::Flash distribution.
#
# make_map_flash_lite.pl --output=pm --carrier=docomo
# -------------------------------------------------------------------------

use strict;
use warnings;

require Exporter;
use base qw(Exporter);
our @EXPORT_OK = qw($FLASH_MAP);
our $FLASH_MAP;

BEGIN {
    if ($ENV{DOCOMO_FLASH_MAP}) {
        eval q{
            require YAML::Syck;
            $FLASH_MAP = YAML::Syck::LoadFile($ENV{DOCOMO_FLASH_MAP});
        };
        if ($@) {
            eval q{
                require YAML;
                $FLASH_MAP = YAML::LoadFile($ENV{DOCOMO_FLASH_MAP});
            };
        }
        warn "using normal hash map: $@" if $@;
    }
}

$FLASH_MAP ||= {
    'D505I' => {
        version        => '1.0',
        width          => '240',
        height         => '320',
        max_file_size  => '200',
    },
    'D505IS' => {
        version        => '1.0',
        width          => '240',
        height         => '320',
        max_file_size  => '300',
    },
    'D506I' => {
        version        => '1.0',
        width          => '240',
        height         => '320',
        max_file_size  => '300',
    },
    'D701I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'D701IWM' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'D702I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'D702IBCL' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'D702IF' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'D703I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'D704I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'D705I' => {
        version        => '1.1',
        width          => '240',
        height         => '400',
        max_file_size  => '2048',
    },
    'D705IMYU' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'D800IDS' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'D851IWM' => {
        version        => '1.1',
        width          => '240',
        height         => '400',
        max_file_size  => '2000',
    },
    'D900I' => {
        version        => '1.0',
        width          => '240',
        height         => '320',
        max_file_size  => '1024',
    },
    'D901I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'D901IS' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'D902I' => {
        version        => '1.1',
        width          => '240',
        height         => '400',
        max_file_size  => '2000',
    },
    'D902IS' => {
        version        => '1.1',
        width          => '240',
        height         => '400',
        max_file_size  => '2000',
    },
    'D903I' => {
        version        => '1.1',
        width          => '240',
        height         => '400',
        max_file_size  => '2048',
    },
    'D903ITV' => {
        version        => '1.1',
        width          => '240',
        height         => '400',
        max_file_size  => '2048',
    },
    'D904I' => {
        version        => '1.1',
        width          => '240',
        height         => '400',
        max_file_size  => '2048',
    },
    'D905I' => {
        version        => '3.0',
        width          => '480',
        height         => '864',
        max_file_size  => '3072',
    },
    'F-01A' => {
        version        => '3.1',
        width          => '480',
        height         => '864',
        max_file_size  => '3072',
    },
    'F-02A' => {
        version        => '3.0',
        width          => '480',
        height         => '854',
        max_file_size  => '3072',
    },
    'F-03A' => {
        version        => '3.1',
        width          => '480',
        height         => '960',
        max_file_size  => '3072',
    },
    'F-06A' => {
        version        => '3.0',
        width          => '480',
        height         => '864',
        max_file_size  => '3072',
    },
    'F505I' => {
        version        => '1.0',
        width          => '240',
        height         => '268',
        max_file_size  => '300',
    },
    'F505IGPS' => {
        version        => '1.0',
        width          => '240',
        height         => '268',
        max_file_size  => '300',
    },
    'F506I' => {
        version        => '1.0',
        width          => '240',
        height         => '268',
        max_file_size  => '300',
    },
    'F700I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'F700IS' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'F702ID' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'F703I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'F704I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'F705I' => {
        version        => '1.1',
        width          => '240',
        height         => '432',
        max_file_size  => '2048',
    },
    'F706I' => {
        version        => '3.0',
        width          => '240',
        height         => '432',
        max_file_size  => '3072',
    },
    'F801I' => {
        version        => '1.1',
        width          => '240',
        height         => '432',
        max_file_size  => '2048',
    },
    'F882IES' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'F883I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'F883IES' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'F883IESS' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'F883IS' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'F884I' => {
        version        => '3.0',
        width          => '240',
        height         => '432',
        max_file_size  => '3072',
    },
    'F884IES' => {
        version        => '3.0',
        width          => '240',
        height         => '352',
        max_file_size  => '3072',
    },
    'F900I' => {
        version        => '1.0',
        width          => '240',
        height         => '320',
        max_file_size  => '1000',
    },
    'F900IC' => {
        version        => '1.0',
        width          => '240',
        height         => '320',
        max_file_size  => '1000',
    },
    'F900IT' => {
        version        => '1.0',
        width          => '240',
        height         => '320',
        max_file_size  => '1000',
    },
    'F901IC' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'F901IS' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'F902I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'F902IS' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'F903I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'F903IBSC' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'F903IX' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'F904I' => {
        version        => '1.1',
        width          => '240',
        height         => '432',
        max_file_size  => '2048',
    },
    'F905I' => {
        version        => '3.0',
        width          => '480',
        height         => '864',
        max_file_size  => '3072',
    },
    'F905IBIZ' => {
        version        => '3.0',
        width          => '480',
        height         => '864',
        max_file_size  => '3072',
    },
    'F906I' => {
        version        => '3.0',
        width          => '480',
        height         => '864',
        max_file_size  => '3072',
    },
    'L-01A' => {
        version        => '1.1',
        width          => '240',
        height         => '400',
        max_file_size  => '3072',
    },
    'L704I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '3072',
    },
    'L705I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '3072',
    },
    'L705IX' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '3072',
    },
    'L706IE' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '3072',
    },
    'L852I' => {
        version        => '1.1',
        width          => '240',
        height         => '400',
        max_file_size  => '3072',
    },
    'M702IG' => {
        version        => '1.1',
        width          => '240',
        height         => '267',
        max_file_size  => '600',
    },
    'M702IS' => {
        version        => '1.1',
        width          => '240',
        height         => '267',
        max_file_size  => '600',
    },
    'N-01A' => {
        version        => '3.1',
        width          => '480',
        height         => '854',
        max_file_size  => '3072',
    },
    'N-02A' => {
        version        => '3.1',
        width          => '480',
        height         => '854',
        max_file_size  => '3072',
    },
    'N-03A' => {
        version        => '3.0',
        width          => '240',
        height         => '427',
        max_file_size  => '3072',
    },
    'N-04A' => {
        version        => '3.1',
        width          => '480',
        height         => '854',
        max_file_size  => '3072',
    },
    'N505I' => {
        version        => '1.0',
        width          => '240',
        height         => '320',
        max_file_size  => '200',
    },
    'N505IS' => {
        version        => '1.0',
        width          => '240',
        height         => '320',
        max_file_size  => '400',
    },
    'N506I' => {
        version        => '1.0',
        width          => '240',
        height         => '320',
        max_file_size  => '400',
    },
    'N506IS' => {
        version        => '1.0',
        width          => '240',
        height         => '320',
        max_file_size  => '400',
    },
    'N506ISII' => {
        version        => '1.0',
        width          => '240',
        height         => '320',
        max_file_size  => '400',
    },
    'N601I' => {
        version        => '1.1',
        width          => '240',
        height         => '345',
        max_file_size  => '2048',
    },
    'N700I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'N701I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'N701IECO' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'N702ID' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'N702IS' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'N703ID' => {
        version        => '1.1',
        width          => '240',
        height         => '345',
        max_file_size  => '2048',
    },
    'N703IMYU' => {
        version        => '1.1',
        width          => '240',
        height         => '345',
        max_file_size  => '2048',
    },
    'N704IMYU' => {
        version        => '1.1',
        width          => '240',
        height         => '345',
        max_file_size  => '2048',
    },
    'N705I' => {
        version        => '3.0',
        width          => '240',
        height         => '427',
        max_file_size  => '3072',
    },
    'N705IMYU' => {
        version        => '3.0',
        width          => '240',
        height         => '427',
        max_file_size  => '3072',
    },
    'N706I' => {
        version        => '3.0',
        width          => '240',
        height         => '427',
        max_file_size  => '3072',
    },
    'N706IE' => {
        version        => '3.0',
        width          => '240',
        height         => '427',
        max_file_size  => '3072',
    },
    'N706III' => {
        version        => '3.0',
        width          => '240',
        height         => '427',
        max_file_size  => '3072',
    },
    'N900I' => {
        version        => '1.0',
        width          => '240',
        height         => '269',
        max_file_size  => '1024',
    },
    'N900IG' => {
        version        => '1.0',
        width          => '240',
        height         => '269',
        max_file_size  => '1024',
    },
    'N900IL' => {
        version        => '1.0',
        width          => '240',
        height         => '269',
        max_file_size  => '1024',
    },
    'N900IS' => {
        version        => '1.0',
        width          => '240',
        height         => '269',
        max_file_size  => '1024',
    },
    'N901IC' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'N901IS' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'N902I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'N902IL' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'N902IS' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'N902IX' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'N903I' => {
        version        => '1.1',
        width          => '240',
        height         => '345',
        max_file_size  => '2048',
    },
    'N904I' => {
        version        => '1.1',
        width          => '240',
        height         => '427',
        max_file_size  => '2048',
    },
    'N905I' => {
        version        => '3.0',
        width          => '480',
        height         => '854',
        max_file_size  => '3072',
    },
    'N905IBIZ' => {
        version        => '3.0',
        width          => '480',
        height         => '854',
        max_file_size  => '3072',
    },
    'N905IMYU' => {
        version        => '3.0',
        width          => '480',
        height         => '854',
        max_file_size  => '3072',
    },
    'N906I' => {
        version        => '3.0',
        width          => '480',
        height         => '854',
        max_file_size  => '3072',
    },
    'N906IL' => {
        version        => '3.0',
        width          => '480',
        height         => '854',
        max_file_size  => '3072',
    },
    'N906IMYU' => {
        version        => '3.0',
        width          => '480',
        height         => '854',
        max_file_size  => '3072',
    },
    'P-01A' => {
        version        => '3.1',
        width          => '480',
        height         => '854',
        max_file_size  => '3072',
    },
    'P-02A' => {
        version        => '3.1',
        width          => '480',
        height         => '854',
        max_file_size  => '3072',
    },
    'P-03A' => {
        version        => '3.1',
        width          => '240',
        height         => '427',
        max_file_size  => '3072',
    },
    'P505I' => {
        version        => '1.0',
        width          => '240',
        height         => '210',
        max_file_size  => '256',
    },
    'P505IS' => {
        version        => '1.0',
        width          => '240',
        height         => '210',
        max_file_size  => '404',
    },
    'P506IC' => {
        version        => '1.0',
        width          => '240',
        height         => '210',
        max_file_size  => '404',
    },
    'P506ICII' => {
        version        => '1.0',
        width          => '240',
        height         => '210',
        max_file_size  => '404',
    },
    'P700I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'P701ID' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'P702I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'P702ID' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'P703I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'P703IMYU' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'P704I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'P704IMYU' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'P705I' => {
        version        => '3.0',
        width          => '240',
        height         => '427',
        max_file_size  => '3072',
    },
    'P705ICL' => {
        version        => '3.0',
        width          => '240',
        height         => '427',
        max_file_size  => '3072',
    },
    'P705IMYU' => {
        version        => '3.0',
        width          => '240',
        height         => '427',
        max_file_size  => '3072',
    },
    'P706IE' => {
        version        => '3.0',
        width          => '240',
        height         => '427',
        max_file_size  => '3072',
    },
    'P706IMYU' => {
        version        => '3.0',
        width          => '240',
        height         => '427',
        max_file_size  => '3072',
    },
    'P851I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'P900I' => {
        version        => '1.0',
        width          => '240',
        height         => '266',
        max_file_size  => '1024',
    },
    'P900IV' => {
        version        => '1.0',
        width          => '240',
        height         => '266',
        max_file_size  => '1024',
    },
    'P901I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'P901IS' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'P901ITV' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'P902I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'P902IS' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'P903I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'P903ITV' => {
        version        => '1.1',
        width          => '240',
        height         => '400',
        max_file_size  => '2048',
    },
    'P903IX' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'P904I' => {
        version        => '1.1',
        width          => '240',
        height         => '400',
        max_file_size  => '2048',
    },
    'P905I' => {
        version        => '3.0',
        width          => '480',
        height         => '854',
        max_file_size  => '3072',
    },
    'P905ITV' => {
        version        => '3.0',
        width          => '480',
        height         => '854',
        max_file_size  => '3072',
    },
    'P906I' => {
        version        => '3.0',
        width          => '480',
        height         => '854',
        max_file_size  => '3072',
    },
    'SA700IS' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => ' 2048',
    },
    'SA702I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'SA800I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'SH-01A' => {
        version        => '3.1',
        width          => '480',
        height         => '854',
        max_file_size  => '3072',
    },
    'SH-02A' => {
        version        => '3.0',
        width          => '480',
        height         => '854',
        max_file_size  => '3072',
    },
    'SH-03A' => {
        version        => '3.1',
        width          => '480',
        height         => '854',
        max_file_size  => '3072',
    },
    'SH505I' => {
        version        => '1.0',
        width          => '240',
        height         => '252',
        max_file_size  => '200',
    },
    'SH505IS' => {
        version        => '1.0',
        width          => '240',
        height         => '252',
        max_file_size  => '300',
    },
    'SH506IC' => {
        version        => '1.0',
        width          => '240',
        height         => '252',
        max_file_size  => '300',
    },
    'SH700I' => {
        version        => '1.1',
        width          => '240',
        height         => '252',
        max_file_size  => '2048',
    },
    'SH700IS' => {
        version        => '1.1',
        width          => '240',
        height         => '252',
        max_file_size  => '2048',
    },
    'SH702ID' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'SH702IS' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'SH703I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'SH704I' => {
        version        => '1.1',
        width          => '240',
        height         => '400',
        max_file_size  => '2048',
    },
    'SH705I' => {
        version        => '1.1',
        width          => '240',
        height         => '400',
        max_file_size  => '2048',
    },
    'SH705III' => {
        version        => '1.1',
        width          => '240',
        height         => '400',
        max_file_size  => '2048',
    },
    'SH706I' => {
        version        => '3.0',
        width          => '480',
        height         => '854',
        max_file_size  => '3072',
    },
    'SH706IE' => {
        version        => '1.1',
        width          => '240',
        height         => '400',
        max_file_size  => '2048',
    },
    'SH706IW' => {
        version        => '3.0',
        width          => '480',
        height         => '854',
        max_file_size  => '3072',
    },
    'SH851I' => {
        version        => '1.1',
        width          => '240',
        height         => '252',
        max_file_size  => '2048',
    },
    'SH900I' => {
        version        => '1.0',
        width          => '240',
        height         => '252',
        max_file_size  => '1000',
    },
    'SH901IC' => {
        version        => '1.1',
        width          => '240',
        height         => '252',
        max_file_size  => '2048',
    },
    'SH901IS' => {
        version        => '1.1',
        width          => '240',
        height         => '252',
        max_file_size  => '2048',
    },
    'SH902I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'SH902IS' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'SH902ISL' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2048',
    },
    'SH903I' => {
        version        => '1.1',
        width          => '240',
        height         => '400',
        max_file_size  => '2048',
    },
    'SH903ITV' => {
        version        => '1.1',
        width          => '240',
        height         => '400',
        max_file_size  => '2048',
    },
    'SH904I' => {
        version        => '1.1',
        width          => '240',
        height         => '400',
        max_file_size  => '2048',
    },
    'SH905I' => {
        version        => '3.0',
        width          => '480',
        height         => '854',
        max_file_size  => '3072',
    },
    'SH905ITV' => {
        version        => '3.0',
        width          => '480',
        height         => '854',
        max_file_size  => '3072',
    },
    'SH906I' => {
        version        => '3.0',
        width          => '480',
        height         => '854',
        max_file_size  => '3072',
    },
    'SH906ITV' => {
        version        => '3.0',
        width          => '480',
        height         => '854',
        max_file_size  => '3072',
    },
    'SO505I' => {
        version        => '1.0',
        width          => '256',
        height         => '240',
        max_file_size  => '200',
    },
    'SO505IS' => {
        version        => '1.0',
        width          => '240',
        height         => '320',
        max_file_size  => '400',
    },
    'SO506I' => {
        version        => '1.0',
        width          => '240',
        height         => '320',
        max_file_size  => '400',
    },
    'SO506IC' => {
        version        => '1.0',
        width          => '240',
        height         => '320',
        max_file_size  => '400',
    },
    'SO506IS' => {
        version        => '1.0',
        width          => '240',
        height         => '320',
        max_file_size  => '400',
    },
    'SO702I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'SO703I' => {
        version        => '1.1',
        width          => '240',
        height         => '432',
        max_file_size  => '2048',
    },
    'SO704I' => {
        version        => '1.1',
        width          => '240',
        height         => '432',
        max_file_size  => '2048',
    },
    'SO705I' => {
        version        => '3.0',
        width          => '240',
        height         => '427',
        max_file_size  => '3072',
    },
    'SO706I' => {
        version        => '3.0',
        width          => '240',
        height         => '427',
        max_file_size  => '3072',
    },
    'SO902I' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'SO902IWP+' => {
        version        => '1.1',
        width          => '240',
        height         => '320',
        max_file_size  => '2000',
    },
    'SO903I' => {
        version        => '1.1',
        width          => '240',
        height         => '432',
        max_file_size  => '2000',
    },
    'SO903ITV' => {
        version        => '1.1',
        width          => '240',
        height         => '432',
        max_file_size  => '2048',
    },
    'SO905I' => {
        version        => '3.0',
        width          => '480',
        height         => '864',
        max_file_size  => '3072',
    },
    'SO905ICS' => {
        version        => '3.0',
        width          => '480',
        height         => '864',
        max_file_size  => '3072',
    },
    'SO906I' => {
        version        => '3.0',
        width          => '480',
        height         => '864',
        max_file_size  => '3072',
    },
};

1;