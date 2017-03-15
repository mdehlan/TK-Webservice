package Backend::Controller::Hello;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub hello {
    my $self = shift;

    # Render template "example/welcome.html.ep" with message
    $self->render(gg => 'Hello');
}

1;