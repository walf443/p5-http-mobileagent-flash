#!/usr/bin/perl

use strict;
use warnings;
use Jcode;
use LWP::UserAgent;

my $URL = 'http://www.nttdocomo.co.jp/service/imode/make/content/spec/flash/index.html';

do_task(@ARGV);

sub do_task {
    my $ua = LWP::UserAgent->new;
    my $res = $ua->get($URL);
    unless ($res->is_success) {
        die "Can't get $URL : " . $res->status_line;
    }

    my $html = Jcode->new($res->content)->euc;

    my @flash;
    {
        my $re = regexp_model();
        while ($html =~ /$re/igs) {
            push(@flash, {
                model          => uc $1,
                width          => $2,
                height         => $3,
                max_file_size  => $4,
            });
        }
    }

    {
        my $re = regexp_ver();
        while ($html =~ /$re/igs) {
            my($count, $version) = ($1, $2);
            my $i = 1;
            for my $f (@flash) {
                last if ($i > $count);
                unless ($f->{version}) {
                    $i++;
                    $f->{version} = $version;
                }
            }
        }
    }

    for my $f (@flash) {
        printf "%s:\n", $f->{model};
        for my $key (qw(version width height max_file_size)) {
            printf "  %s : %s\n", $key, $f->{$key};
        }
    }
}

sub regexp_model {
    return <<'REGEX';
<TD><FONT SIZE="2">([A-Z]+\d+\w*).*?</FONT></TD>\s*
<TD><FONT SIZE="2">(\d+)¡ß(\d+)</FONT></TD>\s*
<TD><FONT SIZE="2">.+?</FONT></TD>\s*
<TD><FONT SIZE="2">(\d+)</FONT></TD>\s*
<TD><FONT SIZE="2">.+?</FONT></TD>\s*
<TD><FONT SIZE="2">.+?</FONT></TD>\s*
REGEX
}

sub regexp_ver {
    return <<'REGEX';
<TR ALIGN="CENTER" BGCOLOR="#FFFFFF">\s*
<TD ROWSPAN="(\d+)" BGCOLOR="#FFFFCC"><FONT SIZE="2" COLOR="#009900">(\d+\.\d+)</FONT></TD>\s*
<TD ROWSPAN="\d+" BGCOLOR="#FFFFCC"><FONT SIZE="2" COLOR="#009900">\w+</FONT></TD>\s*
REGEX
}
