package Enbld::Definition::Libtool;

use strict;
use warnings;

use parent qw/Enbld::Definition/;

sub initialize {
    my $self = shift;

    $self->SUPER::initialize;

    $self->{defined}{WebSite}      = 'http://www.gnu.org/software/libtool/';

    $self->{defined}{DownloadSite} = 'http://ftp.gnu.org/gnu/libtool/';
    $self->{defined}{ArchiveName}  = 'libtool';
    $self->{defined}{VersionForm}  = '\d\.\d\.\d{1,2}';

    return $self;
}

1;

=pod

=head1 NAME

Enbld::Definition::Libtool - definition module for GNU Libtool

=head1 SEE ALSO

L<GNU Libtool|http://www.gnu.org/software/libtool/>

L<Enbld::Definition>

=head1 COPYRIGHT

copyright 2013- Magnolia C<< <magnolia.k@me.com> >>.

=head1 LICENSE

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
