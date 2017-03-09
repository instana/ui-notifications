# Build 122
_09.March 2017_

**new Features**
- REST API
- Container Map
- Set time range
- Users & Permissions
- Custom Events API
- Ansible Event Integration
- Audit log
- Search improvements
- Web EUM unhandled error support
- On prem: Web EUM
- Improved Process Top List
- Statsd support
- Better insights into usage

**Newly supported Technologies**
- SAP HANA
- OpenLDAP
- Agent in DC/OS Universe
- Java Tracing: Mongo-Async, Ver.x#RunOnContext, OkHttpUrlConnection, HttpsUrlConnection, Jersey, Elasticsearch, Memcache Shade
- PHP CGI
- Ruby: ActionController, ActionController API, ActiveRecord, ActionView insights (layouts, templates, partials)

**Improvements**
- Messages going out via Integrations will now contain also the relevant metrics that triggered the notification
- Reduced required IOPS by an order of magnitude for on prem deployments
- Hostname for service instances in service dashboard
- Clicking on timestamps of events in incidents set now the selected moment
- Enlarge views (table, detail) in trace and event view
- Show duration of an incident/event
- Improved code highlighting in code view
- Add time indicator to timelines window size slider
- Add shortcut (F) to open the search bar
- Current layouting algorithm is persisted in browsers’ local storage.
- Add hostname, creation and start date to Docker comparison table.
- Labels for Docker containers now use the Amazon EC2 container service name when available.
- Sort host list in zone dashboards by FQDN and hostname.
- Spans are now indicating the corresponding services
- The number of connected services/hops can be configured in the settings when filtering services (Settings → User Interface → Number of shown hops when filtering services) This number is currently limited to 0 and 1
- Users can now toggle the left and right side of the event/trace view to have it full screen.
- The number of elements in comparison tables is now shown to enable quick counting.
- Java Tracing now captures also prepared statements that have been prepared before the agent was started.

More improvements and fixes

[Detailed Release Notes](https://instana.atlassian.net/wiki/display/DOCS/Build+122)

# Build 120
_19.January 2017_

**new Features**
- PHP Call Stacks and Errors in Traces
- Automatic Web EUM XMLHttpRequest Instrumentation
- Better Integration and References between EUM services and EUM traces
- Service impact correlated to traces
- Entity health in breadcrumbs
- Jumping to traces touching any service
- Block layout for infrastructure view
- New search bar
- Time window based metric aggregations
- JBoss Connection Pool Monitoring
- Kafka Cluster Monitoring
- Agent Update Timing Configuration

**Newly supported Technologies**
- Java Flow style Akka, Spymemcached, capturing Cassandra PreparedStatements
- PHP distributed Tracing for HTTP calls made via HTTP stream wrappers
- Ruby OpenTracing support, RestClient, Excon & Dali. Gem Bundle insights

**Improvements**
- Enhanced Kafka Monitoring and Dashboard
- Easier deployment of the agent: Putting the JDK to agent-dir/jvm will automatically use it without a JAVA_HOME set.
- The Instana agent is now monitoring container networks that are brought up dynamically (e.g. with docker compose).
- Agents that have been installed in 2015 and 2016 now start faster (Feel free to perform a fresh install on your own, to get rid of some baggage of early Instana days. Most recent downloads contain Bootstrap 1.1.5, the docker image id is a031cc1c777d)
- Container networks that are local no longer show up as unmonitored remote servers
- Restricted agent socket to the required local networks, no longer listening on all interfaces.
- Java Instrumentation is now much more robust against incomplete or buggy classloaders, as well as fully working in OSGi containers.
- Reduced garbage produced during async tracing.
- The postgres sensor will now respect command line arguments and additionally detect the postmaster process.
- Better discovery of httpd.worker processes
- Tweaks for parsing the main class from SAP JVM
- Services running on mod_php on Apache are now connected to the Apache
- Agent is now correctly monitoring volumes if deployed in a docker container
- Agent will use the correct docker process on Rancher OS
- Oracle DB sensor will handle insufficient permissions more graceful.

More improvements and fixes
 
[Detailed Release Notes](https://instana.atlassian.net/wiki/display/DOCS/Build+120)

# Build 119
_21.December 2016_

**new Features**
- Web EUM
- Ruby Tracing
- Go Tracing
- Application flow layouting
- Improved search
- Metric Chart and Trace export
- Agent JDK Support
- Agents for Solaris and AIX
- Show Entity hierarchy
- Show your Agent Key

**Newly supported Technologies**
- Open Tracing in Java, Go and Node!
- Beta Agent download for AIX PPC and Solaris SPARC
- Websphere Liberty
- Etcd
- OracleDB
- Java Tracing: Akka Spray Can
- NodeJs Tracing: Kafka
- mod_php Tracing

**Improvements**
- Glassfish AMX is enabled automatically by the sensor
- More docker installations and configurations supported (especially by RHEL)
- Do not show local Docker IPs as remote connections on the map
- Custom availability Zones can be added after agent start
- PHP Sensor now supports PHP 7.1
- Websphere Sensor will activate only for real application servers
- Optimized Memcached Metric calculations
- Agent backchannel can be turned off
- Http parameters are filtered by configured secrets
- PHP Sensor will sanitize SQL statements

More improvements and fixes
 
[Detailed Release Notes](https://instana.atlassian.net/wiki/display/DOCS/Build+119)

# Build 118
_23.November 2016_

**new Features**
- Service Mapper - Configuration of HTTP Services
- Apply time ranges in dashboards/timeline
- Host List in Zones
- Navigation to Version of entities
- Jump to traces for service instances

**Newly supported Technologies**
- Zookeeper Dashboard
- Marathon and Nomad Docker Container Data

**Improvements**
- Added ActiveMQ All Queues Messages DE-queue metric
- Feign Exit timing, response code and size is now more accurate
- Added Exits for Tracing: JerseyInvocation, Play 2 WS, cxf
- Chart showed mixed roll ups. Now showing one rollup for all displayed data points
- Changed transparency of application connections on map to allow better overview
- SQL select statement shortening now also works when shortening SQL statements with field names that contain from
- Charts for disk warnings are now shown in the incident view
- You can now reach support through the Profile menu
- Added a log message which alerts of incomplete backend configuration
- JBoss EJBs are automatically correlated

More improvements and fixes
 
[Detailed Release Notes](https://instana.atlassian.net/wiki/display/DOCS/Build+118)

# Build 117
_08.November 2016_

**new Features**
- Restructured Navigation
- Incident and Events View
- Comparison Tables
- Agent Self Monitoring
- Low Overhead Exit Call Aggregation
- Mark chart and timeline areas

**new Sensors**
- Ruby
- .NET CLR
- Websphere
- Zookeeper

**new Framework Support**
 - Java Tracing: HornetMQ, LDAP

**Improvements**
- Cleaned up icons throughout the UI
- The code view is much more readable and will automatically scroll to the requested line of code
- Sudden Drop detection has been further improved to take more historic patterns into account
- Mule HTTP calls now will be automatically correlated
- Much faster, less resources using and more robust Java Instrumentation. No longer complain on invalid bytecode generated by scala compilers
- Much improved HTTPd discovery and configuration parsing. Now supports more styles of includes and allows server-status urls to be retrieved via https. Missing status url will now be reported into the UI
- Manual process monitoring now accepts also specific arguments
- Kafka Sensor will now discover confluent Kafka
- Kafka cluster is now detected and nodes are grouped
- Solr Sensor will now detect a Solr deployed on application containers
- The Java sensor will now collect ImplementationTitle and ImplementationVersion from the Manifest.MF of the running application, which usually produces a much more friendly label for the JVM. The fallback to the executed commandline still exists
- Support attaching to JVMs of other users and services on Windows Systems

More improvements and fixes
 
[Detailed Release Notes](https://instana.atlassian.net/wiki/display/DOCS/Build+117)

# Build 115
_29.September 2016_

**new Features**
 - Node.js Tracing
 - Node.js On Demand Profiling
 - Cross-Language Tracing
 - Agent Self Monitoring Exposed via UI
 - Monitor Any Process
 - Switch to UTC Timestamps
 - Jump to Moment of Trace

**new Sensors**
 - Varnish Sensor
 - Glassfish Sensor
 
**new Framework Support**
 - PHP Tracing: IBM-DB2
 - Java Tracing: Java Mail, Nanohttpd, Mule, Vaadin, Camel, (S)Ftp, Wicket

**Improvements**
- You now can jump from the physical component directly to the implemented logical
services and service instances.
- Improved compatibility with Docker for PHP tracing, PHP-FPM, HTTPd, MySQL,
MariaDB sensors.
- Tracing now excludes commands for database drivers which are not actually
executed (like “set names utf-8;”).
- It is now possible to add specific queue names to RabbitMQ sensor, which will then
be monitored.
- PHP-FPM sensor now supports multiple master processes.
- MySQL metric collection is now much more efficient.
- Cassandra sensor now captures replication factor.
- Support Kubernetes Installations with flannel networking.
- Improved RabbitMQ and Oracle DB service detection.

More improvements and fixes
 
[Detailed Release Notes](notifications/files/InstanaReleaseNotes-Build115.pdf)

# Build 114
_04.September 2016_

**new Features**
 - PHP Tracing
 - Java SDK
 - Java Code View
 - Java Thread Dumps
 - Response Size Tracking
 - Charts and 3D Rework
 - Timeline zoom down to 1 Minute
 - Error Sorting in Traces
 - License Overview

**new Framework Support**
 - okhttp3
 - RESTeasy

**Improvements**
 - Detecting rejected connections in Redis
 - Showing Redis max memory configuration
 - Not attaching to jstat java process
 - MySQL wait states are now handled nicer
 - Tuned Sudden Drop Detection
 - Reduced overhead of rabbitMQ monitoring
 - Support for memcached authentication and better representation of auth errors
 - Improved stability of the Instana Agent Windows service (InstanaPCP.exe)
 - Optimized performance of sending large amounts of data
 - Improve Service Instance Naming
 - We now better resolve the Service Instances by traversing the Graph and taking the communication into account
 - Events show the exact moment in time they started
 - Trace Drill down on Services shows count of available Traces
 - Apache Modules overview cleaned up and added local search

More improvements and fixes
 
[Detailed Release Notes](notifications/files/InstanaReleaseNotes-Build114.pdf)

# Build 113
_15.August 2016_

**new Features**
 - Logical View
 - Trace View
 - Incidents based on Service Health
 - Dashboard Rework
 - Search in Logical and Trace
 - Extended Tracing Support
 - Extendes Async Tracing Support
 - Trace Error Tracking

**new Sensors**
 - ActiveMQ
 - JBoss Data Grid
 - Memcached
 - Solr

**Improvements**
 - Links to Events sent by Notifications directly open the time the Event has been detected
 - Support using container and bridge network addresses to monitor containerized components
 - Reduced agent overhead for systems running many network connections
 - Tomcat Dashboard now handles connectors which are using an executor pool correctly and displays also executor configuration
 - Links in the UI are now real links and can be opened in new tabs and are correctly recognized as links when right-clicking them
 - UI maintains connection to the backend dynamically
 - Disk Saturation Prediction tuned
 - Missing Configuration of Sensors shown in Dashboards
 - Usage Overview has consolidated forecast overview

More improvements and fixes
 
[Detailed Release Notes](notifications/files/InstanaReleaseNotes-Build113.pdf)

# Build 112
_22.July 2016_

**new Features**
 - Search
 - Agent as Container
 - Extended Tracing Support
 - Configurable Secrets

**new Sensors**
 - Jetty

**Improvements**
 - Apache HTTPd - added CPU, Traffic Metrics and Knowledge
 - Docker - added CPU, Memory, Block IO metrics and Knowledge
 - Knowledge added for Tomcat, Spring Boot, Redis, Cassandra
 - Collecting Stack Traces for all Exits
 - Timeline Minimization, further improvements
 - Shareable URLs include Timeline settings

More improvements and fixes
 
[Detailed Release Notes](notifications/files/InstanaReleaseNotes-Build112.pdf)

# Build 111
_21.June 2016_

**new Features**
 - Table view
 - Notifications on incidents, changes, offline and online events
 - tooltips in spark charts

**new Sensors**
 - Spring Boot

**Improvements**
 - Cassandra Cluster now aggregates node metrics to cluster.
 - Changes to Host tags in configuration.yaml are updated at runtime.

See the [detailed Release Notes](notifications/files/InstanaReleaseNotes-Build111.pdf) for more elaborate release notes.


# Build 110
_10.June 2016_

**new Features**
- Full historization of Components - fully persisting all configuration data of all Components over time including their Changes
- Locator - find components faster on the map
- Metrics in Charts can be deselected
- Maintenance and Release Information are now shown in the UI
- Dynamic Graph Showcase

**new Sensors**
- Dropwizard

**Improvements**
- Tomcat Sensor - Data Sources, Threads, Executor Monitoring
- MySQL and MariaDB - more Configuration Data, more and improved metrics
- Elasticsearch - Thread Monitoring, Node Dashboard, Indices in Cluster Dashboard
- Timeline - Scrollbar, Time Range indication, Event Time context is set on click on Event
- Host Tags sent in Notifications
- Reworked Account Menu

More improvements and fixes

[Detailed Release Notes Build 110](notifications/files/InstanaReleaseNotes-Build110.pdf)

# Build 108
_20.May 2016_

**new Features**
- New Timeline and Timeshift Investigation - hard to explain just with text. Please have a look into the detailed Release Notes
- Tag Search

**new Sensors**
- HAProxy
- PostgreSQL

**Improvements**
- Kafka Sensor - metrics, configuration and knowledge
- Tomcat Sensor - shows currentThreadsBusy

More improvements and fixes

[Detailed Release Notes Build 108](notifications/files/Instana%20Release%20Notes%20-%20Build%20%23108.pdf)


# Build 106
_09.May 2016_

**new Features**
- Incidents - Incidents intelligently group issues and changes by taking the dependencies and relations of
the affected entities and the appearance in time of the issues into account. This helps to
understand the impact and evolution of problems on a new level.
- Timeshift - first step - full historization of metrics and the map.
- Trace View - We also introduce our Java Tracing capabilities with this release in a first version.
Our Agent automatically attaches the tracing sensor to JVMs and traces calls using a very
lightweight bytecode instrumentation approach.
- Webhook and Slack Integration
- SIM Usage Overview

and more...

**new Sensors**
- RabbitMQ
- JBoss Application Server/Wildfly

**Improvements**
- Elasticsearch Sensor - Cluster Detection and monitoring, more knowledge and deeper insights
- Redis Sensor - Metrics and Health Signatures
- Agent now supports HTTP/2 as standard protocol

More improvements and fixes

[Detailed Release Notes Build 106](notifications/files/Instana%20Release%20Notes%20-%20Build%20%23106.pdf)

# Build 87
_24.March 2016_

**new Features**
- Universal Change Detection - we now track all changes to configuration data the sensors track
- DNS resolution of unmonitored Hosts
and more...

**new Sensors**
- MariaDB
- IBM J9

More improvements and fixes

[Detailed Release Notes Build 87](notifications/files/InstanaReleaseNotes-Release87.pdf)


# Build 65
_25.February 2016_

**new Features**
- Custom Zones
- Custom JMX
- Centralized configuration
- first Change Detection
- Opsgenie Integration
and more...

**new Sensors**
- Microsoft SQL
- Microsoft IIS
- PHP-FPM

More improvements and fixes

[Detailed Release Notes Build 65](notifications/files/Instana_Beta_ReleaseNotesBackendBuild65.pdf)
