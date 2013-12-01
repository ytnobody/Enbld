package Enbld::Definition::Pkgconfig;

use 5.012;
use warnings;

use parent qw/Enbld::Definition/;

sub initialize {
    my $self = shift;

    $self->SUPER::initialize;

    $self->{defined}{ArchiveName}       =   'pkg-config';
    $self->{defined}{WebSite}           =
        'http://www.freedesktop.org/wiki/Software/pkg-config/';
    $self->{defined}{VersionForm}       =   '\d\.\d{1,2}(?:\.\d)?';
    $self->{defined}{DownloadSite}      =
        'http://pkgconfig.freedesktop.org/releases/';

    $self->{defined}{AdditionalArgument} = '--with-internal-glib';

    return $self;
}

1;
