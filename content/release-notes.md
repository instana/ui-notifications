# Build 108
_20.May 2016_

**new Features**
- New Timeline and Timeshift Investigation - hard to explain just with text. Please have a look into the full release notes
- Tag Search

**new Sensors**
- HAProxy
- PostgreSQL

**Improvements**
- Kafka Sensor - metrics, configuration and knowledge
- Tomcat Sensor - shows currentThreadsBusy

More improvements and fixes

[Full Release Notes Build 108](notifications/files/Instana%20Release%20Notes%20-%20Build%20%23108.pdf)


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

[Full Release Notes Build 106](notifications/files/Instana%20Release%20Notes%20-%20Build%20%23106.pdf)

# Build 87
_24.Mar 2016_

**new Features**
- Universal Change Detection - we now track all changes to configuration data the sensors track
- DNS resolution of unmonitored Hosts
and more...

**new Sensors**
- MariaDB
- IBM J9

More improvements and fixes

[Full Release Notes Build 87](notifications/files/InstanaReleaseNotes-Release87.pdf)


# Build 65
_25.Feb 2016_

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

[Full Release Notes Build 65](notifications/files/Instana_Beta_ReleaseNotesBackendBuild65.pdf)
