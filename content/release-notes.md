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

# Build 138

6 June 2018

[![Detailed Release Notes](https://img.shields.io/badge/detailed%20release%20notes-138-brightgreen.svg)](https://docs.instana.io/releases/notes/build_138/)

## Features

### AWS Lambda

Instana now automatically discovers and monitors AWS Lambda. Read more about our [AWS support](https://docs.instana.io/ecosystem/aws)

## Improvements

- Various performance & reliability improvements.

## Fixes

- Node.js sensor: Correctly manage tracing context in ioredis instrumentation


# Build 137

29 May 2018

[![Detailed Release Notes](https://img.shields.io/badge/detailed%20release%20notes-137-brightgreen.svg)](https://docs.instana.io/releases/notes/build_137/)

## Features

### Kubernetes

Instana now automatically discovers and monitors Kubernetes clusters. See our [Kubernetes docs](https://docs.instana.io/ecosystem/kubernetes/) for details.

**Please Note:** An update your instana-agent Kubernetes configuration is required. For more details see [Kubernetes agent setup](https://docs.instana.io/quick_start/agent_setup/container/kubernetes/)

### OpenShift

Along with our Kubernetes monitoring, we also now support OpenShift. See our [Openshift docs](https://docs.instana.io/ecosystem/openshift/) for details.

**Please Note:** An update to your instana-agent OpenShift configuration is required. For more details see [Openshift setup](https://docs.instana.io/quick_start/agent_setup/container/openshift/)

### Ceph

We've also added monitoring of the Ceph distributed storage system. See our [Ceph docs](https://docs.instana.io/ecosystem/ceph/) for details.

### Node.js v10

Ahead of official LTS in October, we now support Node.js versions 10.0.0 and above. See our [Node.js docs](https://docs.instana.io/ecosystem/node-js/#supported-versions) for details.

### Python SUDS (SOAP) Visibility

The latest Python sensor now includes instrumentation for the [suds-jurko package](https://pypi.org/project/suds-jurko/).

## Improvements

- RabbitMq Sensor: Added [Network Partition Detection](https://www.rabbitmq.com/partitions.html) and alerting both as an incident and on dashboard.
- MongoDB Sensor: Added set of new metrics for [MongoDB Replica Set](https://docs.mongodb.com/manual/replication/).
- Postgresql Sensor: Added info about database size and number of active connection
- ActiveMQ Sensor: Monitor a defined amount of topics/queues (including Dead-Letter queues) and alerting if filling
- Python Sensor: Added safeties to Django calls
- Python Sensor: Removed unused snapshot fields
- Python Sensor: Show package version on boot
- Ruby Sensor: Improved logger levels, hints and supported environment variables
- Ruby Sensor: Show gem version in boot message
- Go Sensor: re-use http client (performance)
- Consul Sensor: Added configuration for ACL policy [Consul Sensor Configuration](https://docs.instana.io/ecosystem/consul/#configuration)


## Fixes

- Node.js Sensor: Properly initialize and assure operationId is generated in MongoDB instrumentation.
- Node.js Sensor: Support for 128bit trace IDs.
- Node.js Sensor: Reduce memory footprint when using HTTP agents with `maxSockets: Infinity`
- Python Sensor: Specify exception class to be caught
- Ruby Sensor: Update sys-proctable API call to follow upstream changes in v1.2.0
