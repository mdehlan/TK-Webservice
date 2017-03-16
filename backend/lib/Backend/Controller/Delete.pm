package Backend::Controller::Delete;
use Mojo::Base 'Mojolicious::Controller';
use strict;
use warnings FATAL => 'all';

sub delete {
    my $self = shift;
    my $id -> self($id);
    $self->render(msg => $id);

    #############################################################
    #!/usr/bin/perl

}
1;