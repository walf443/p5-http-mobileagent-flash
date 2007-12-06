package HTTP::MobileAgent::Flash;
use strict;
use warnings;
use vars qw($VERSION);
$VERSION = '0.04';

use Carp;

use base qw(Class::Accessor);
__PACKAGE__->mk_ro_accessors(qw(max_file_size version width height));

sub new {
    my $class = shift;
    my %data  = @_;
    return bless {
        max_file_size => -1,
        version       => -1,
        width         => -1,
        height        => -1,
        %data
    }, $class;
}

sub is_supported {
    my $self = shift;
    my $version = shift || "";

    croak "You must set version before call is_supported()" if ($version eq "");

    $version =~ s/Lite//ig;
    return ($version <= $self->version)? 1 : 0;
}


# -------------------------------------------------------------------------
#  HTTP::MobileAgent
#
# -------------------------------------------------------------------------
package HTTP::MobileAgent;
sub flash {
    my $self = shift;
    unless ($self->{flash}) {
        if ($self->can("_make_flash")) {
            $self->{flash} = $self->_make_flash;
        } else {
            $self->{flash} = HTTP::MobileAgent::Flash->new();
        }
    }
    return $self->{flash};
}

sub is_flash {
    my $self = shift;
    return ($self->flash->version > 0)? 1 : 0;
}

# -------------------------------------------------------------------------
# HTTP::MobileAgent::DoCoMo
#
# -------------------------------------------------------------------------
package HTTP::MobileAgent::DoCoMo;
use HTTP::MobileAgent::Flash::DoCoMoFlashMap qw($FLASH_MAP);
sub _make_flash {
    my $self = shift;
    my $flash = $FLASH_MAP->{uc($self->model)};
    return HTTP::MobileAgent::Flash->new(
        %$flash
    );
}

# -------------------------------------------------------------------------
# HTTP::MobileAgent::EzWeb
#
# -------------------------------------------------------------------------
package HTTP::MobileAgent::EZweb;
sub _make_flash {
    my $self = shift;

    my %flash;
    my $accept = $self->get_header('accept') || '';
    if ($accept =~ m[application/x-shockwave-flash]) {
        %flash = (
            # http://www.au.kddi.com/ezfactory/mm/flash01.html
            max_file_size => $self->is_win ? 100 : 48,
            version  => 1.1,
            width    => $self->display->width,  # FIXME 待ち受けのサイズで
            height   => $self->display->height,
        );
    }

    return HTTP::MobileAgent::Flash->new(%flash);
}

1;
__END__

=head1 NAME

HTTP::MobileAgent::Flash - Flash information for HTTP::MobileAgent

=head1 SYNOPSIS

  use HTTP::MobileAgent;
  use HTTP::MobileAgent::Flash;


  my $agent = HTTP::MobileAgent->new;
  print "Flash Version : " . $agent->flash->version;

  if ($agent->is_flash )   { ...... }
  
  if ($agent->flash->is_supported('lite1.1') and $agent->flash->width <= 230) {
    :
  }
  if ($agent->flash->is_supported('lite1.0') and $agent->flash->max_file_size <= 48) {
    :
  }

=head1 DESCRIPTION

This module adds C<flash>, C<is_flash> method to HTTP::MobileAgent

=head1 METHODS

=head2 is_flash

=head2 flash

=item version

=item max_file_size

=item is_supported

  $agent->flash->is_supported('Lite1.1')
  $agent->flash->is_supported('Lite1.0')

=head1 AUTHOR

KIMURA, takefumi E<lt>takefumi@mobilefactory.jpE<gt>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 BUGS

This module does not support the Vodafone, yet.

=head1 SEE ALSO

L<HTTP::MobileAgent>,
L<http://www.nttdocomo.co.jp/p_s/imode/spec/flash.html>,
L<http://www.au.kddi.com/ezfactory/mm/flash01.html>,
L<http://developers.vodafone.jp/>

=cut
