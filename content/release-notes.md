# Build 125
_29.May 2017_

[![Detailed Release Notes](https://img.shields.io/badge/detailed%20release%20notes-125-brightgreen.svg)](https://instana.atlassian.net/wiki/display/DOCS/Build+125)

**New Features**
- Endpoint monitoring
- Timeline filtering
- OS process environment variables
- Group by host tags


**Newly supported Technologies**
- PHP ZTS

**Improvements**
- Improved support for Rancher and Weave networks in Kubernetes
- Trace time skew adjustments are much more reliable
- Improve .Net tracing performance
- Capture request params and uncaught exceptions thrown from http handlers in Java
- Support for Etcd running multiple api endpoints, and improved performance
- Support “Show source” for PHP
- Reduced memory consumption in the agent process for tracing
- The containerized agent will automatically configure itself for docker pre 1.10
- StatsD sensor now supports consuming Nomad StatsD data
- Httpd sensor respects vhost name based resolution
- Go: Better Error reporting and translation for the backend
- Search for process arguments is now possible

**Fixes**
- Oracle Prepared statement could show up as oracle.jdbc.driver.T4CPreparedStatement@774b7e01
- No longer produce empty changes for Websphere data sources
- Nging Sensor did not work when using a complex custom log_format 
- Go: X-Instana-S and X-Instana-T context conversion and handling
- Ruby: ActionView span description
- Ruby: HTTP Header values should not contain leading zeros
- Ruby ActiveRecord: Accessing adapter name triggers DB connection

