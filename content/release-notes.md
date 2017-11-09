# Build 131
_09. November 2017_

[![Detailed Release Notes](https://img.shields.io/badge/detailed%20release%20notes-131-brightgreen.svg)](https://docs.instana.io/releases/notes/build_131/)

## Features

- Agent installer for Windows
- Usage API endpoint
- Custom JavaScript error reporting

## Improvements

- The infrastructure map now loads much faster. It shows an abstraction of the inner inventory on higher zoom levels, and the concrete inventory when zooming into the map and/or over the hosts tooltip.
- The MongoDB dashboard got a small overhaul and more sensible metric presentations.
- We switched the position of the service and infrastructure elements within the trace view to account for their respective significance.
- HTTP status codes can now be used for service extraction.
- The dynamic focus input field got some small improvements so that typing in queries feels more natural.
- Saving and accessing dynamic focus filters has been improved.
- WebApps have been renamed to web services.
- The Docker CPU metric now follows the same algorithm as the Docker CLI.
- PHP Services running on Apache with mod_php show now up in the Apache Sidebar
- DB2 calls traced via PHP will now result in database services.
- PHP infrastructure is now also included when running PHP in Docker containers
- Stacked area charts are now rendered even when a data series is missing values.
- The PHP sensor now supports a notificationScript that is triggered whenever the sensor is updated.
- Greatly improved Play 2 tracing support that now captures way more styles of registering http handlers.
- Java tracing can now handle much higher load with the same memory usage on the agent process.
- PHP config data is now showing in parent dashboards
- Go Sensor: Improved Recorder: better queue locking & management [#46](https://github.com/instana/golang-sensor/pull/46)
- Go Sensor: Improved log output: Less noise; proper log levels. [#45](https://github.com/instana/golang-sensor/pull/45)
- NodeJS Sensor: Added Request query capture & reporting [#13](https://github.com/instana/nodejs-sensor/pull/13)

## Fixes

- Event detail panes are closable even when no event is selected.
- Clicking on a health indicator will now correctly encode IDs and thus result in valid dynamic focus entries.
- `span.erroneous` and `trace.erroneous` are now working again.
- Trace search now works for URLs, e.g. `span.http.url`.
- Navigating to traces from website monitoring errors could result in errors, and now work in all cases.
- PHP tracing extension will no longer cause 400 - Bad Request on some CURL calls
- Monitoring certain Weblogic Servers did not work. Now it does.
- Custom JMX values containing a # can now be monitored.
- The containerized agent can now read filesystems even when /etc/mtab is a symlink.
- Incidents are triggered as configured on entity going offline detection rules.
- Search for longer running traces now works with entities-related queries.
- Wild cards and phrase queries are working when filtering events by problem text.
- Wild card queries using `?` symbol are working as expected.
- Python Sensor: Fixed Instana context HTTP headers prefix [#28](https://github.com/instana/python-sensor/pull/28)
- Python Sensor: OpenTracing Propagators now support all forms of Instana Headers [#29](https://github.com/instana/python-sensor/pull/29)
- Python Sensor: Protect against byte based json [#31](https://github.com/instana/python-sensor/pull/31)
- Go Sensor: Report Go version in snapshot [#44](https://github.com/instana/golang-sensor/pull/44)
- Ruby Sensor: Fix latest Redis & GRPC gem support [#103](https://github.com/instana/ruby-sensor/releases/tag/1.7.7)
- Metric rollups for services with very infrequent requests are now created correctly.
