# perl-sdk-demo

Perl SDK Demo App

## Requirements

* Having the most current perl v5 release installed
* Having cpanm installed [App::cpanminus](https://metacpan.org/pod/App::cpanminus)

Now install our Perl API Connector Library:

```bash
cpanm --installdeps --no-test --quiet .
```

or

```bash
cpanm http://www.cpan.org/authors/id/H/HE/HEXONET/WebService-Hexonet-Connector-v2.10.2.tar.gz
```

Find the recent module version listed [here](https://metacpan.org/pod/WebService::Hexonet::Connector).

NOTE: Eventually you need to use the --sudo flag in the above command.

## Run the App

```bash
# session-based communication
perl app_session.pl

# session-less communication
perl app_nosession.pl
```
