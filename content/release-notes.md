# Build 124
_03.May 2017_

[![Detailed Release Notes](https://img.shields.io/badge/detailed%20release%20notes-124-brightgreen.svg)](https://instana.atlassian.net/wiki/display/DOCS/Build+124)

**New Features**
- Dynamic search
- Sortable tables
- Comparison table for processes
- LDAP authorisation for on-prem
- Easier agent installation
- Node.js health check support

**Newly supported Technologies**
- .NET tracing
- Hadoop YARN
- OpenLDAP

**Improvements**
- Various performance improvements
- Improved incident detection
- Host sidebar shows uptime/start timestamp of server
- Docker container table shows creation and start date and time
- Support monitoring of the same Docker container ID on different hosts.
- Notifications always show entity type and name.
- Support for OpenStack Nova virtualization
- Prevent misdetection of proxy responses as valid Google Compute or Amazon Ec2 metadata responses
- Improved permission checking in mysql sensor
- Improved distributed tracing in Mule ESB when vm transport is used.
- Initial support for garden/runc containers running in Cloud Foundry
- Improved discovery of Websphere Servers, support jmx requiring authentication.
- Extended Memcached Sensor support to memcached 1.2
- Golang: Now reports using SDK span types; better display and mapping
- Golang: New Events API. Report events directly from Go to your dashboard
- PHP: Support for PHP compiled with ZTS
- PHP: Batching of large amounts of SQL spans
- PHP: Error reporting for PDO
- Redis Slow log will now discard binary data (and replace it with `<binary>`)
- EUM application error counts are now broken down into XMLHttpRequest (AJAX) errors and general uncaught JavaScript errors. The old error_rate metric was deprecated for EUM service due to its unpredictable behavior.
- Support Amazon SES for on prem backends
- Slack notifications of incidents and issues now contain the same detailed information as email notifications.
- Unmonitored Hosts table now has a separate column for the reverse lookup
- Trace Table marks traces that ended with an error
- Go is now named Go instead of Golang
- Configurable Service Extraction for Message Brokers
- ActiveMQ Dashboard is now sorted consistently
- Support searching docker containers by their Id
- UI login cookies live now 2 weeks instead of one day
- Improved compatibility of the agent with Kubernetes CNI networking
- Reverse resolved DNS names no longer have the trailing dot
- Support CPU profiling in Node.js >=7.0.0.
- Grouping of hosts in the infrastructure map according to their EC2 / GCE instance type.

**Fixes**
- Agent could leave temp files behind when trying to monitor an incompatible JVM
- Agent could stop communicating with apps running in docker
- Slf4j loggers are no longer counted multiple times against error totals.
- Fixed crash in Php 5.3 when Suhosin patch is used.
- Golang: Fixed ID generation
- Processes that had a filtered command line argument could not be monitored if that command line argument was important for configuration or authentication
