use strict;
use warnings;
use WebService::Hexonet::Connector;

my $api = WebService::Hexonet::Connector::connect(
	{
		url => "https://coreapi.1api.net/api/call.cgi",
        entity => "1234",
        login => "test.user",
        password => "test.passw0rd"
	}
);

# Call a command
my $response = $api->call(
	{
		command => "QueryDomainList",
		limit => 5
	}
);

# get the result in the format you want
my $res = $response->as_list();
$res = $response->as_list_hash();
$res = $response->as_hash();

# get the response code and the response description
my $code = $response->code();
my $description = $response->description();

print "$code $description";
