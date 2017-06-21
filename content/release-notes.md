# Build 126
_22.June 2017_

[![Detailed Release Notes](https://img.shields.io/badge/detailed%20release%20notes-126-brightgreen.svg)](https://instana.atlassian.net/wiki/display/DOCS/Build+126)

**New Features**
 - EUM Uncaught Error Breakdown
 - EUM Resource Overview
 - EUM Span Search Keywords
 - Office 365 Chat Integration
 - Docker Container Port Mappings

**Newly supported Technologies**
 - Support Java tracing for S3, ehcache, IBM MQ, Spring Scheduled, Akka Http 10, WebMethods http
 - PHP tracing now supports 32bit PHP on Linux
 - Apache HBase Database Dashboard

**Improvements**
 - Support monitoring JVMs that are run as systemd process with private PrivateTmp=yes.
 - ActiveMQ Sensor now tracks server role (master/slave)
 - OpenLDAP is now supported within containers
 - Httpd Sensor now supports AIX (as IBM httpd)
 - Add support for GRPC client/server span types and their correlation
 - Add option to install the agent as a service using the one liner
 - Improved UI performance, reduced flickering when maps are very dynamic
 - The time picker now closes automatically when a valid time range is applied
 - Host and container view switcher will now remain open when switching between host and container view.
 - Zoom controls in 3D map now no longer work linearly so that zooming via controls works as expected.
 - Tooltips now work as expected for small charts.
 - Latency charts are now easier to read for services which have a small number of calls.
 - Deselection of the min data set now works for latency charts.
 - The connection lost notification is now reliable.
 - More keyboard controls for our tables (up, down and space bar to expand rows).
 - Break down EUM TCP time into TCP and SSL time.
 - The API is now rate limited to 5,000 calls per hour. How many calls are left and when new calls can be executed is available in the HTTP response via the `X-RateLimit-*` headers.

**Fixes**
 - Httpd Sensor now handles Apache config case insensitive and considers absolute includes outside the config root directory
 - Postgresql Sensor no longer miscounts query counts
 - Fixed Akka message passing tracing in Scala 2.12
 - Memcached Sensor now correctly calculates hit rate
 - Agent misinterpreted --bridge=none for Docker
 - Java Tracing: Fixed rare case of async spans attached to the wrong trace
 - Java Tracing: Fixed rare case of async vertex spans not attached to a trace
 - .Net Tracing: Fixed not so rare case of async spans not attached to a trace
 - Fixed OpenTracing correlation between Java and Go
 - Fixed Camel and Spring Batch traces rendering
 - Ruby: log_info/add_info should properly translate span.kind #76
 - Ruby: Lower logging verbosity & levels #78
 - EUM: Resources with $ characters in the URL can now be tracked.
 - EUM: Timeouts are now used for beacon transmissions.
