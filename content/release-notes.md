# Build 127
_11.July 2017_

[![Detailed Release Notes](https://img.shields.io/badge/detailed%20release%20notes-127-brightgreen.svg)](https://instana.atlassian.net/wiki/display/DOCS/Build+127)

**New Features**
 - Message flyout system

**Newly supported Technologies**
 - Monitoring of Liferay Portal Server
 - Monitoring of Varnish MSE extension
 - Monitoring of Spark
 - Batch applications
 - Streaming applications
 - Tracing across GRPC in Java and Ruby
 - Finagle, Aerospike and Tabex tracing in Java

**Improvements**
 - Performance improvements for the application map
 - Performance improvements when showing host/SIM usage in UMP
- The agent one-liner now checks for su privileges
- The UI settings now have a dedicated save button
- The search input for the dynamic focus is now always visible to the user
- The hosts process top list in the dashboard now serves the deepest entity in the graph so that the user can directly detect the causing technology.
- In the service extraction configurations, it’s now possible to clone a rule by using a shortcut button without editing the JSON by hand. The cloned rule can be found in the corresponding list with the same name plus “_CLONE” at the end. It is also disabled by default.
- The incidents table view now enables filtering by issues and changes in order to improve event exploration
- Docker memory rule is now more reliably catching containers that go out of memory very fast
- Host sensor can be configured to monitor additional network filesystems
- Improved automatic discovery of memcached and etcd listen ports
- Spring boot sensor parses build-info file
- Jersey exception mapper status codes are now respected by java tracing
- If javascript is deactivated in the browser, we now show a message

**Fixes**
- Batch services are not showing correctly on the application map
- Fixed invalid etcd leader health check on single node etcd
- Fixed display problems in UMP when copying the one-liner
- Scrolling into the map is now the same speed in every browser
- Mysql wait states have been occasionally missing. We found them.
