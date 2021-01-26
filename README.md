# perl-sdk-demo

Perl SDK Demo App

## Requirements

* Having the most current perl v5 release installed
* Having cpanm installed [App::cpanminus](https://metacpan.org/pod/App::cpanminus)

Now install our Perl API Connector Library:

```bash
perl cpanm --installdeps --no-test --quiet .
```

NOTE: Eventually you need to use the --sudo flag in the above command.

## Run the App

```bash
# session-based communication
perl app_session.pl

# session-less communication
perl app_nosession.pl
```
