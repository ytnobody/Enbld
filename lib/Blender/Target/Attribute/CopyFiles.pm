package Blender::Target::Attribute::CopyFiles;

use 5.012;
use warnings;

use Carp;

use parent qw/Blender::Target::Attribute/;

sub validate {
    my ( $self, $value ) = @_;

    unless ( ref( $value ) eq 'ARRAY' ) {
        my $type = ref( $self );
        $type =~ s/.*:://;

        my $err = "Attribute 'CopyFiles' isn't ARRAY reference";
        require Blender::Exception;
        croak( Blender::Exception->new( $err, $value ));
    }

    foreach my $string ( @{ $value } ) {
        $self->SUPER::validate( $string );
    }

    return $value;
}

sub to_value {
    my $self = shift;

    my $value = $self->evaluate;

    return [] if ( ! defined $value );

    $self->validate( $value );

    return $value;
}

1;