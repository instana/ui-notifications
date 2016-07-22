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
