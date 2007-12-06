#!/usr/bin/perl
use strict;
use warnings;
use utf8;
use Encode;
use LWP::UserAgent;
use Web::Scraper;
use URI;

my $URL = 'http://www.nttdocomo.co.jp/service/imode/make/content/spec/flash/index.html';

main(@ARGV);

sub main {
    my @args = @_;

    my $stuff = (@args == 1) ? _slurp($args[0]) : URI->new($URL);

    my $versions = _scrape($stuff);
    _output($versions);
}

sub _scrape {
    my $stuff = shift;

    my $ret = scraper {
        process '//div[position()<7]/div/div[@class="section"]', 'versions[]', scraper {
            process '//h2/a/text()', 'version', ['TEXT', sub { s/^Flash Lite // }];
            process '//tr[@class="acenter"]', 'models[]', [sub {
                my $elem = $_;
                my $tree = $elem->as_tree;
                $_->delete for $tree->findnodes('//td[@class="brownLight acenter middle"]'); # remove series info.

                scraper {
                    process '//td[position()=1]', 'model', ['TEXT', sub { s/μ/myu/; s/\（.+）// }, sub { uc } ];
                    process '//td[position()=2]', 'display', ['TEXT', sub { /(\d+)×(\d+)/; +{width=>$1, height => $2} }];
                    process '//td[position()=4]', 'max_file_size', 'TEXT';
                }->scrape($tree);
            }];
        };
    }->scrape($stuff);

    $ret->{versions};
}

sub _output {
    my $versions = shift;

    for my $version (@{$versions}) {
        for my $model (@{$version->{models}}) {
            printf "%s:\n", $model->{model};
            printf "  version : %s\n", $version->{version};
            for my $key (qw/width height/) {
                printf "  $key : $model->{display}->{$key}\n";
            }
            printf "  max_file_size : $model->{max_file_size}\n";
        }
    }
}

sub _slurp {
    my $fname = shift;

    open my $fh, '<', $fname or die $!;
    my $content = do { local $/; <$fh> };
    close $fh;

    decode('cp932', $content);
}

sub HTML::Element::as_tree {
    my $self = shift;

    my $tree = HTML::TreeBuilder::XPath->new;
    $tree->parse($self->as_HTML);
    $tree;
}

