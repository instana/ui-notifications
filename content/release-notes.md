# Build 128
_03. August 2017_

[![Detailed Release Notes](https://img.shields.io/badge/detailed%20release%20notes-128-brightgreen.svg)](https://instana.atlassian.net/wiki/display/DOCS/Build+128)

**Features**
- Calls/s Aggregation in Charts
- Better Search for Spans - New HTTP Keywords
- Ignored Services
- New OS Supported for the Agent: z/OS
- Capturing custom http headers

**Newly Supported Technologies**
- Java tracing now supports Axis calls, @Schedule EJBs, Grizzly Http Server and Google Cloud Datastore
- .NET tracing now supports Memcached via Enyim Caching
- Agent now supports z/OS

**Improvements**
- Overall reduction of impact of Java tracing
- JBoss Data Grid has cache manager statistics
- Agent now recovers when PHP trace collection breaks temporarily
- JBoss/WildFly sensor automatically activates statistics for DataSources
- Multiple redis nodes supported on a single docker host
- IIS worker processes now have a better name
- nginx sensor now respects custom-compiled --prefixPath
- Java attach now supports Docker containers which use user ids that are not mapped to existing users
- .NET tracing for WebApi and MVC no longer requires an IHttpModule
- Improved performance for .NET tracing
- Groupings on infrastructure map are now persisted for current session
- Ruby: Backport instrumentation to support Ruby on Rails v2.3.8 (and LTS)
- Go: Event API: Make duration configurable
- Websphere instances can be searched by serverName / nodeName / cellName
- The agent is now available as Windows MSI for beta testing. Please contact us if you want to try it out and provide feedback.

**Fixes**
- Work stealing Fork Join Pools in Java now trace reliably
- Spring WebMVC DeferredResults now trace also correctly under contention
- Some API calls could have failed because of unknown ids, which were in fact known
- Ruby: Lower runtime version requirement for ffi dependency
- Go: Fix event <--> service linking & Protect against Event API panic

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
