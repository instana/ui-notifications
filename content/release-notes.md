# Build 135
_19. March 2018_

[![Detailed Release Notes](https://img.shields.io/badge/detailed%20release%20notes-135-brightgreen.svg)](https://docs.instana.io/releases/notes/build_135/)

## Features

### Grafana Plugin

Create your own dashboards with the Instana data source plugin for Grafana. To get started, head over to the [plugin page on Grafana.com](https://grafana.com/plugins/instana-datasource) 

### AWS Kinesis

Instana now automatically discovers and monitors AWS Kinesis. Read more about our [AWS support](https://docs.instana.io/ecosystem/aws)

### HashiCorp Nomad

We've added monitoring for the Nomad cluster scheduler. Read more on our [Nomad docs](https://docs.instana.io/ecosystem/nomad)

### ClickHouse

Support for the column-oriented DBMS from Yandex is now here. Read more on our [ClickHouse docs](https://docs.instana.io/ecosystem/clickhouse)   

## Improvements

- Java Tracing support for JBoss 4 EJBs, Elasticsearch 6 High Level API, Distribute Me remoting, Asynchttpclient, HttpKit (Clojure)
- SSO/LDAP: New "default" role assigned to users created through SSO/LDAP authentication
- PHP: Allow configuration of executorThreads and executorQueueLimits for performance tuning
- PHP: Download, installation and activation of PHP tracing is now fully automatic
- PHP: Add support for tracing PHP 7.2
- Integrations: Include availability-zone name for all infrastructure entities
- Improved agent support for Kubernetes and Calico Networking
- Elasticsearch Sensor performance has been much improved
- JVMs can now be named with a System property: `-Dcom.instana.agent.jvm.name=InvisiblePinkUnicorn`
- Java tracing will now capture errors from Spring JMS consumers and Memcached calls (via Spymemcached)
- HAProxy Sensor now supports the old version 1.4 as well
- The agent will now handle various specifics of Solaris
- EJB method can now be used for service extraction.
- Node.js sensor: Read env vars by default to determine agent connection config
- Node.js sensor: Do not enable tracing in Node.js v9
- Node.js sensor: Limit maximum database statement length that is stored in spans
- Node.js sensor: Allow retrieval of TypeScipt and JSX files via view code
- Node.js sensor: Reduce severity in log messages which describe dependency analysis failures

## Fixes

- PHP: Support multiple Ini directories in Additional Ini Files
- PHP: Prevent reading of large FPM configs to abort with timeouts
- PHP: Fix issues with Daemon not getting unloaded during sensor updates
- PHP: Fix databases from showing up as Unknown service in traces
- PHP: Lowered the log level of several log messages to debug for less noisy logs
- PHP: Preserve HTTP Headers when doing multiple curl_exec calls on the same cURL resource
- Httpd: Prevent reading of large Httpd configs to abort with timeouts
- Httpd: Improve process detection to work in less common setup
- Httpd: Support config files located outside the webserver's root directory
- Integrations: Fixed missing entity type and entity name in affected notifications
- Java Tracing on IBM J9 requires class sharing to be off. Now checked by the agent
- Java Tracing could fail on IBM J9 1.6
- Very restrictive security managers could prevent java monitoring from working
- When returning a Response from RestEasy Instana did not capture the status code correctly
- Fixes a rare problem that could prevent Glassfish servers from starting while the agent is running
- Redis Sensor will be able to monitor containerized instances that are configured with a 0.0.0.0 listen.
- MongoDB Sensor will no longer get stuck in a discovery loop when it fails to access the database
- ActiveMQ sensor will now react more quickly to creation and deletion of queues.
- Incorrectly routed link local ips used by sensors will no longer create startup delays.
- Go Sensor: Fix: Potential Deadlock in Recorder
- Python Sensor: Urllib3: More safeties in KV collection & processing
- Node.js sensor: Fix support for mysql2 versions prior to 1.5.0
- Node.js sensor: HTTPS exit spans can have the wrong protocol set
- Node.js sensor: Fix an async correlation issue caused by outgoing HTTP calls
- Node.js sensor: MongoDB spans are nested in a wrong way
- Node.js sensor: Updated transitive dependency `debug` which has security vulnerabilities. This dependency is unused, in the context of the Node.js sensor and therefore didn't pose a security risk.
- EC2 tags are now presented within the host dashboard and sidebar. Additionally, they can now also be used for grouping within the infrastructure map.
