# Build 130
_05. October 2017_

[![Detailed Release Notes](https://img.shields.io/badge/detailed%20release%20notes-130-brightgreen.svg)](https://docs.instana.io/releases/notes/build_130/)

05. October 2017

## Features

- Python: New TextMap OT propagator (thanks @elgris!) [#16](https://github.com/instana/python-sensor/pull/16)

## Newly Supported Technologies

- Mule ESB: Initial discovery and dashboards
- Java 9 support

## Improvements

- Go: Delete pre-existing HTTP Header keys to avoid append (thanks @vetinari for pointing this out!) [#40](https://github.com/instana/golang-sensor/pull/40)
- Go: Better locking to avoid data races [#41](https://github.com/instana/golang-sensor/pull/41)
- Go: Only report custom service name from tracer (if configured) [#43](https://github.com/instana/golang-sensor/pull/43)
- Python: Handle errors and make best effort to report what we have for snapshot collection (thanks @elgris!) [#24](https://github.com/instana/python-sensor/pull/24)
- Python: Fix exception logging: convert to string (thanks @elgris) [#22](https://github.com/instana/python-sensor/pull/22)
- Python: Add handle_fork function for eventual pid change detection [#21](https://github.com/instana/python-sensor/pull/21)
- Python: Implement advanced announce for containers [#20](https://github.com/instana/python-sensor/pull/20)
- Python: Improved detection of the default gateway (thanks @elgris!) [#18](https://github.com/instana/python-sensor/pull/18)
- Python: Logging: Make sure the arg we are passing is a string [#19](https://github.com/instana/python-sensor/pull/19)
- Python: Better process/entity naming [#27](https://github.com/instana/python-sensor/pull/27)
- Python: Custom service name support [#25](https://github.com/instana/python-sensor/pull/25)
- Ruby Performance: Don't create a new Integer Range on each ID generation [#92](https://github.com/instana/ruby-sensor/pull/92)
- Ruby: Loosen up the dependency on timers to >= 4.0 [#95](https://github.com/instana/ruby-sensor/pull/95)
- Ruby: Require entire CGI due to Ruby 2.4.1 bug #13539 [#94](https://github.com/instana/ruby-sensor/pull/94)
- Ruby Performance: Use clock_gettime instead of converting Time object [#93](https://github.com/instana/ruby-sensor/pull/93)
- Ruby Performance: Disable backtrace collection by default; add config option [#98](https://github.com/instana/ruby-sensor/pull/98)
- Ruby: Report spans in batches [#96](https://github.com/instana/ruby-sensor/pull/96)
- Ruby: Improved debug checks and logging [#97](https://github.com/instana/ruby-sensor/pull/97)
- Ruby Performance: Switch to Oj for faster json processing. [#101](https://github.com/instana/ruby-sensor/pull/101)
- Java: Reduced memory usage for tracing
- Java: Trace remote vertx communication
- Java: automatic attachment improvements for early Java 6 builds
- JBoss: AS 7.0 compatibility, fixed incorrect servlet invocation counts
- PHP: Performance Improvements
- Kafka: Corrected partition count
- MongoDB: Support strings in bindIP config
- Etcd: added more client url discoveries
- RabbitMQ: Corrected reported port list. Performance improvements.
- Docker: fixed missing network metrics under some configurations
- .Net: Performance improvements
- Varnish: Support Varnish v3 metrics
- PostgreSQL: Fix communication with postgres when running on default interface

### Agent Health Monitoring

Based on feedback from the last release we've introduced a chart to visualize change in reporting agents over time and improved the design of the overview and agent dashboard. Enjoy!
