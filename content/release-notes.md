# Build 140

August 7th, 2018

[![Detailed Release Notes](https://img.shields.io/badge/detailed%20release%20notes-140-brightgreen.svg)](https://docs.instana.io/releases/notes/build_139/)

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
 - Issue severity levels for issues reported for infrastructure entities were redefined. See full list of tuned issues [here](/releases/notes/data_140). Critical severity now means that the entity is not able to fulfill its purpose anymore or will not be able to fulfill its purpose in the nearest future. An example would be a split-brain state in the Elasticsearch cluster or a disk empty on a host. Warning severity means that the performance of an entity is negatively affected, e.g. increased response time or GC time below 80%.

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
