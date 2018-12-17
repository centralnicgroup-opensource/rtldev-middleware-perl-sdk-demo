# perl-sdk-demo
Perl SDK Demo App

## Requirements

* Having the most current perl v5 release installed
* Having cpanm installed (App::cpanminus)

Now install our Perl API Connector Library:

```bash
# by Module ID
cpanm WebService::Hexonet::Connector

# or by filename
cpanm HEXONET/WebSservice-Hexonet-Connector-1.03.tar.gz
```
NOTE: I got this only working by sudo'ing these commands.
In case you install by filename, please check the [release overview](https://github.com/hexonet/perl-sdk/releases) for the most current release and use that version instead.

## Run the App

```bash
# session-based communication
perl app_session.pl

# session-less communication
perl app_nosession.pl
```
