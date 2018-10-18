# Build 143

October 18th, 2018

[![Detailed Release Notes](https://img.shields.io/badge/detailed%20release%20notes-143-brightgreen.svg)](https://docs.instana.io/releases/notes/build_143/)

## Features

- Analyze Traces: Traces are now available to analyze in addition to calls.
- Error and Log Messages: Call error messages and log messages are now exposed for applications, services and endpoints.
- More Application Perspectives Features: issue detection for endpoints; service mapping for Tomcat and JBoss based on deployments; tags can now be combined with both AND/OR when defining applications.
- Google Chat integration: You can now send alerts to Google Chat.
- Ruby Resque Instrumentation
- Google Bigtable Instrumentation
- Vert.x Redis Instrumentation
- Python RabbitMQ Instrumentation
- NGINX Plus Sensor

## Improvements

- SAML: Multi tenant support; download of SAML Metadata XML for IdP; upload of SAML Metadata XML from IdP; bidirectional signatures of the AuthN Request.
- Amazon EC2 Name tags are now used to name hosts.
- Host Sensor: Hot-reloading filesystems and NFS mounts configuration; added ability to extract installed packages on Debian based Linux systems.
- Python Sensor: Improved host communications - lighter weight; better error handling.
- Ruby Sensor: Better Rails initialization.
- Ruby Sensor: Span Reporting: Don’t report nils.
- Kubernetes Sensor: Added Namespaces support (including resource quotas).
- Hazelcast Sensor: Added operation count and connected clients.
- Hazelcast Sensor: Added capacity of event queue.
- OracleDb Sensor: Added support for remote monitoring.
- PHP Sensor: Improved detection for mod_php.
- PHP Sensor: calls made via the official ElasticSearch client now show up as ElasticSearch spans.
- Tomcat Sensor: Added health issues for sudden drop and increase of number of session.
- UI: Numbers are now formatted according to users’ preferred locale (preferred locale defined in the browser).
- Website Monitoring: The ID of the current page load is now accessible.
- Dynamic Focus for endpoints: Issues and infrastructure related to endpoints can be searched/filtered by Dynamic Focus using queries like entity.endpoint.name:"GET /articles".

## Fixes

- Ruby Sensor: Add safety and avoid triggering DB connections when unknown adapter in use.
- Ruby Sensor: Support ::Instana::Tracer.xxx call style for the instantiated tracer.
- Ruby Sensor: Update stack reporting key.
- Ruby Sensor: Delay announce on boot; Fix header reference.
- Hazelcast Sensor: Fixed a performance issue in the cluster safe state monitoring.
- PHP Sensor: fixes a bug with predis connection objects when using clusters.
- PHP Sensor: fixes segfaults when using mpm_worker/ZTS on PHP 7.x.
- PHP Sensor: fixes interleaving batches showing as concurrent spans.


# Build 142

September 20th, 2018

[![Detailed Release Notes](https://img.shields.io/badge/detailed%20release%20notes-142-brightgreen.svg)](https://docs.instana.io/releases/notes/build_142/)

## Features

- Application Dependency Map: Visualize service dependencies and inter-service communication within your applications.
- Custom Endpoint Mapping: Define how endpoints are extracted for HTTP services.
- SAML authentication: Support authentication via SAML compliant identity providers.
- Node.js: MSSQL (Microsoft SQL Server) instrumentation
- Node.js: Report uncaught exceptions as incidents and via span/trace (disabled by default).

## Improvements

- Application Perspectives: The Analyze view now has a progress indication for long running queries.
- Application Perspectives: PHP services defined based on HTTP host header (when available).
- MySQL Sensor reports if performance_schema is not accessible.
- JVM sensor: Number of collected dropwizard metrics is limited and configurable. No longer collect dropwizard metrics for cassandra and elasticsearch as they are already monitored
- AWS Lambda Sensor Dashboard will display attached [triggers](https://docs.aws.amazon.com/lambda/latest/dg/invoking-lambda-function.html) in sidebar.

## Fixes

- Services are sometimes not correctly linked to infrastructure entities.
- Node.js: Tracing context sometimes getting lost after a MySQL call.
- AWS sensors: AWS entities are sometimes not removed in ui when deleted (e.g. Kinesis stream)


# Build 141

September 6th, 2018

[![Detailed Release Notes](https://img.shields.io/badge/detailed%20release%20notes-141-brightgreen.svg)](https://docs.instana.io/releases/notes/build_141/)

## Features
 - Application Perspectives: Tag suggestions for Analyzing Calls
 - Application Perspectives: Additional tags `service.name`, `endpoint.name` and `call.technology` for creating Application Perspectives
 - Application Perspectives: Default application showing all services receiving calls
 - Application Perspectives: Handling of 'late spans' so they become visible and searchable in the calls view
 - Application Perspectives: Improved several of the default 'service rules' to create better named services
 - Custom metrics (eg. Dropwizard, JMX or StatsD) can now be used in custom rules definition
 - Python & Ruby Sensor: Support Custom Header collection.  See the [documentation](https://docs.instana.io/quick_start/agent_configuration/#capturing-custom-http-headers) for details on how to specify custom headers to be collected.
 - Java Sensor: Added Support for Async Servlet API, Scalatra, Neo4J tracing and Novell LDAP driver
 - New Hazelcast Server Sensor
 - New Neo4j Server Sensor

## Improvements
 - Python Sensor: Snapshot reporting: Better version extraction
 - Python Sensor: Better Fork detection & handling
 - Python Sensor: pkg_resources: Add discovery support and add safeties
 - Python Sensor: Better boot behavior; Respect load dynamics
 - JBoss EJB tracing will now capture exceptions
 - Apache CXF Tracing will capture WSDL urls
 - Solr Sensor: Support Solr 7.x
 - Kubernetes Sensor now has greatly reduced memory and CPU usage for large clusters. If you gave the agent more memory, you can revert that now.
 - Improved support for monitoring newer OpenJ9 JVMs
 - Custom rules can be now defined on the custom metrics, such as Dropwizard, JMX or StatsD
 - When a service or an application suffers a drop to zero in requests, a new issue with a title "Complete drop in the number of requests" and severity CRITICAL is triggered. In case there is a drop but the service is still being called, an issue "Sudden drop in requests" with severity WARNING is triggered.

## Fixes
 - Application Perspectives: application creation based on multi-value tags such as `host.tag`
 - Python Sensor: Django: Store scope on the request object
 - Ruby Sensor: Add support for common configuration (standard environment variables)
 - StatsD Sensor: Fixes problem where it could no longer update under high load
 - Solr Sensor: Fixes locale dependent parsing problems


# Build 140

August 7th, 2018

[![Detailed Release Notes](https://img.shields.io/badge/detailed%20release%20notes-140-brightgreen.svg)](https://docs.instana.io/releases/notes/build_140/)

## Application Perspectives

This release introduces application perspectives for our SaaS customers! We've put together a dedicated [transition page](https://docs.instana.io/how_to/transition_to_application_perspectives) to provide guidance on successfully adopting the changes and new capabilities.

Note: Some of our largest customers may experience slow queries for large time windows in the new Analyze view, but optimizations are already on the way.

## Other Features
 - Kubernetes 1.10 support
 - Azure Kubernetes Service (AKS): 1.10.x
 - Node.js Sensor: Support recording of user-configurable HTTP headers in HTTP client and server instrumentation.
 - Node.js Sensor: PostgreSQL instrumentation ([docs](https://docs.instana.io/ecosystem/node-js/#supported-versions))
 - Node.js Sensor: `https` client calls are now instrumented
 - Node.js Sensor: [express.js](http://expressjs.com) and [fastify](https://fastify.io) path templates, e.g. `/articles/:articleId`, are now captured for better insights into the executed server side logic.
 - Python Sensor [version 1.0](https://github.com/instana/python-sensor/releases)!
 - Python MySQLdb Instrumentation ([docs](https://docs.instana.io/ecosystem/python/#supported-versions))
 - Failed Dropwizard healthchecks are now displayed as an issue in Instana
 - Metric capture support for Spring Boot 2
 - Tracing of Async OkHttp3 requests
 - Support Tracing Java -> Amazon SNS -> Amazon SQS -> JMS -> Spring call flows
 - Widened JBoss AS Monitoring support to 4 - 13

## Improvements
 - Integrations now include container labels whenever applicable.
 - Improved Slack integration which makes use of Slack's formatting capabilities for message that are a lot easier to read.
 - Node.js Sensor: Allow retrieval of package.json files.
 - Python Sensor: Updates to support OpenTracing v2.0
 - Python Sensor: Django & WSGI Improvements; More Safeties, Precision & Tests
 - Python Sensor: Add setuptools check on install with clear message
 - MongoDb Sensor: Supports connecting agent over TLS/SSL to MongoDb servers.
 - GWT RPC Calls are now displayed as such
 - Status Code Canges performed by ServletFilters are now captured correctly
 - Spring Web Path templates are captured and used for endpoint mapping
 - Better hostname detection on Windows Servers
 - Improved tracing through Mule ESB
 - Etcd sensor now more reliably detecs different etc configurations
 - Httpd Sensor will now prefer non-ssl status urls to reduce CPU usage
 - Improve Java 9 + 10 compatibility. Experimental Java 11 support.
 - Improved compatibility to Docker Container User Namespaces
 - Agent CPU usage reductions
 - Issue severity levels for issues reported for infrastructure entities were redefined. See full list of tuned issues [here](https://docs.instana.io/releases/notes/data_140/).
 Critical severity now means that the entity is not able to fulfill its purpose anymore or will not be able to fulfill its purpose in the nearest future. An example would be a split-brain state in the Elasticsearch cluster or a disk empty on a host.
 Warning severity means that the performance of an entity is negatively affected, e.g. increased response time or GC time below 80%.

## Fixes
 - Node.js Sensor: Only try to instrument bluebird if it is actually available.
 - Node.js Sensor: Avoid sending batch size 0 for Redis multi commands.
 - Python Sensor: Format & clean up imports via isort
 - Dropwizard Sensor: Failing health checks are now correctly discovered.

# Build 139

July 9, 2018

[![Detailed Release Notes](https://img.shields.io/badge/detailed%20release%20notes-139-brightgreen.svg)](https://docs.instana.io/releases/notes/build_139/)

## Features
 - New: Splunk downstream integration
 - New: OpenShift 3.7 support
 - New: Kubernetes 1.7 support
 - New: Python REST API Client – [access your data](https://github.com/instana/python-sensor/pull/52) from Python!
 - New: Support recording of user-configurable HTTP headers in HTTP client and server instrumentation in Node.js
 - New: Automatically track HTTP requests initiated within web browsers via the [fetch API](https://fetch.spec.whatwg.org/).
 - New: Extended error tracking to get more insights into `Script Error`s. Requires [manual opt-in](/products/website_monitoring/api#insights-into-script-errors).
 - New: OpsGenie's [European service region](https://docs.opsgenie.com/docs/european-service-region) can now be configured for integrations.

## Improvements
 - Node.js Sensor: Correctly manage tracing context in ioredis instrumentation
 - Node.js Sensor: Abort HTTP requests to the agent on timeouts
 - Node.js Sensor: Include reporting PID in agent logs
 - Node.js Sensor: Include additional debugging data in log when data transmission to agent fails
 - Python Sensor: Improved Logger Naming & Formatting (thanks [@arnulfojr](https://github.com/instana/python-sensor/pull/82)!)
 - Python Sensor: Smarter, better, easier [Django initialization](https://github.com/instana/python-sensor/releases/tag/0.9.0)
 - RabbitMQ queue filling alerting
 - WebLogic v12 support and metrics improvements
 - The trace view will now differentiate between the following two states for HTTP spans: *"no query parameters recorded"* and *"the HTTP request did not contain any query parameters"*.
 - MongoDb Replica Set Grouping (and replica set metrics)

## Fixes
 - Httpd Sensor: fixed a issue with certain config files being unreadable in containers
 - Httpd Sensor: will now ignore busybox httpd
 - Node.js Sensor: Fix OpenTracing baggage when using getCurrentlyActiveInstanaSpanContext
 - Node.js Sensor: Protect spans from accidental retransmission
 - Node.js Sensor: Fix: HTTP client instrumentation does not correctly interpret HTTP client timeouts
 - PHP Sensor: improved detection of httpds running mod_php
 - PHP Sensor: closed a possible gap between sending and acceptance of traces causing spurious services
 - PHP Sensor: fixed an issue with symlinked FPM configs in docker containers being unreadable
 - PHP Sensor: fixed wrong PHP version displayed in traces
 - Python Sensor: Add OpenShift note on exposing the host IP
 - Python Sensor: Remove debug message that may cause errors in certain version of Python
 - Metric retrieval is now more reliable in cases where a lot of metrics are shown, e.g. within large tables.
 - Long dynamic focus queries will no longer push the filter and save button off screen.
 - MongoDb connection issues fixed
 - Spark chart tooltip fixed
 - Java thread dump fixed
 - OpsGenie region configuration
 - Kubernetes namespace as tag for app definition
 - Host tags without equal sign can now be used for app definition
 - Fixed charts in config view
