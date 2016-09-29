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
