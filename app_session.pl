use 5.026_000;
use strict;
use warnings;
use WebService::Hexonet::Connector;

my $cl = WebService::Hexonet::Connector::APIClient->new();
$cl->useOTESystem();
$cl->setCredentials( 'test.user', 'test.passw0rd' );
$cl->setRemoteIPAddress('1.2.3.4');

my $response = $cl->login();
# in case of 2FA use:
# my $response = $cl->login("12345678");

if ( $response->isSuccess() ) {
    # now the session will be used for communication in background
    # instead of the provided credentials
    # if you need something to rebuild connection on next page visit,
    # so in a frontend-session based environment, please consider
    # saveSession and reuseSession methods

    # Call a command
    $response = $cl->request(
        {   COMMAND => "QueryDomainList",
            LIMIT   => 5
        }
    );

    # get the result in the format you want
    my $res;
    $res = $response->getListHash();
    $res = $response->getHash();
    $res = $response->getPlain();

    # get the response code and the response description
    my $code        = $response->getCode();
    my $description = $response->getDescription();

    print "$code $description";

    # close Backend API Session
    # you may verify the result of the logout procedure
    # like for the login procedure above
    $cl->logout();
}

1;
