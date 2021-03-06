package Enbld::Definition::Git;

use strict;
use warnings;

use parent qw/Enbld::Definition/;

sub initialize {
    my $self = shift;

    $self->SUPER::initialize;

    $self->{defined}{IndexSite}         =
        'http://code.google.com/p/git-core/downloads/list?num=1000&start=0';
    $self->{defined}{ArchiveName}       =   'git';
    $self->{defined}{WebSite}           =   'http://git-scm.com';
    $self->{defined}{VersionForm}       =   '1\.\d\.\d{1,2}(\.\d{1,2})?';
    $self->{defined}{DownloadSite}      =
        'http://git-core.googlecode.com/files/';

    $self->{defined}{IndexParserForm}   =   \&set_index_parser_form;

    $self->{defined}{AdditionalArgument} = '--without-tcltk';

    $self->{defined}{TestAction}        =   'test';

    return $self;
}

sub set_index_parser_form {
    my $attributes = shift;

    my $filename_form = quotemeta( $attributes->ArchiveName ) . '-' .
                $attributes->VersionForm . '\.' . 
                quotemeta( $attributes->Extension );

    my $index_parser_form = 'name=' . $filename_form . '&amp';

    return $index_parser_form;
}

1;

=pod

=head1 NAME

Enbld::Definition::Git - definition module for git

=head1 SEE ALSO

L<git|http://git-scm.com>

L<Enbld::Definition>

=head1 COPYRIGHT

copyright 2013- Magnolia C<< <magnolia.k@me.com> >>.

=head1 LICENSE

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
