use 5.026_000;
use strict;
use warnings;
use WebService::Hexonet::Connector;

my $cl = WebService::Hexonet::Connector::APIClient->new();
$cl->useOTESystem();
$cl->setCredentials( 'test.user', 'test.passw0rd' );
$cl->setRemoteIPAddress('1.2.3.4');
# in case of 2FA use:
# $cl->setOTP("12345678")

# Call a command
my $response = $cl->request(
    {   COMMAND => 'QueryDomainList',
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

1;