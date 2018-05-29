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
