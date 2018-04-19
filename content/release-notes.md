# Build 136

19 April 2018

[![Detailed Release Notes](https://img.shields.io/badge/detailed%20release%20notes-136-brightgreen.svg)](https://docs.instana.io/releases/notes/build_136/)

## Features

### AWS DynamoDB

Instana now automatically discovers and monitors AWS DynamoDB. Read more about our [AWS support](https://docs.instana.io/ecosystem/aws)

### AWS ELB

We've also extended AWS support to AWS ELB. Read more on our [AWS support](https://docs.instana.io/ecosystem/aws)

### HashiCorp Consul Service Discovery

We've added monitoring for the Consul service discovery. Read more on our [Consul docs](https://docs.instana.io/ecosystem/consul)

### Couchbase

Instana also now monitors Couchbase. Read more on our [Couchbase docs](https://docs.instana.io/ecosystem/couchbase)

### NodeJS v9 Support

Instana now supports NodeJS versions 9.1.0 and above. See our [NodeJS docs](https://docs.instana.io/ecosystem/node-js/#supported-versions) for details.

### Java 10 (and experimental 11) Support

Instana now supports Java 10. See our [JVM docs](https://docs.instana.io/ecosystem/jvm/#supported-versions) for details.
Support for Java 11 is experimental as it is still in development and contains significant changes for Java Agents like Instana.

## JVM Deadlock detection

Instana applies a low overhead deadlock detection. Should we see the same threads blocked over a longer period, we will check if they are deadlocked and report this as an issue on the JVM.

## JBoss EJB monitoring

Instana now monitors deployed Session Beans and their pool usage on JBoss/Wildfly Application Servers.

## Improvements

- lots of Agent performance improvements for reduced CPU and IO usage.
- The JVM name can now be used for service mapping, see [Service Management](https://docs.instana.io/products/application_service_management/#jvm).
- Container Processes will now include their container name and in-container PID in the sidebar
- Improved network communication between PHP sensor and PHP tracing extension
- NodeJS Sensor: Add tracing support for mysql2/promise
- Python Sensor: Avoid pre-emptively loading Django middleware
- Python Sensor: Improved thread metrics
- Python Sensor: Standardize on `INSTANA_AGENT_HOST` environment variable; Deprecate `INSTANA_AGENT_IP`
- Python Sensor: Unify Django middleware for multiple versions into one
- Improved tracing support for Play 2.6, Scala Executors and Akka Fork Join Pool
- Supports tracing of DB calls made by Scala Slick framework
- Supports now tracing of Mongo 3.6 Java driver
- Added tracing for Java Couchbase client
- MsSQL Services are now mapped to the servers they are running on
- SQL Statements made throuigh Java Glassfish 4 wrappers are now traced correctly
- Improved naming of CLR processes
- Speed up Java Tracing instrumentation
- HA Proxy Sensor now supports metrics for multi process configurations
- Host Sensor allows exclusion of file systems (for example if they are known to be full)
- PostgreSQL Sensor now supports servers runnign without a configured listen_address
- Agent Windows Offline Installer (64bit) can now be downloaded from the User Management Portal

## Fixes

- Python Sensor: Django: Support old-style MIDDLEWARE_CLASSES in Django <2.0
- NodeJS Sensor: ioRedis instrumentation can lead to errors when async correlation doesn't work as expected
- PHP Tracing: traces will no longer map to wrong service when multiple PHP containers run on the same host
- PHP-FPM: fixed a rare condition where the sensor would stall the agent
- PHP companion sidebars will no longer render when empty
- Ruby Sensor: Improved logging levels
- Ruby Sensor: Fix issue that affected loading Rails console on OSX
- Spark Sensor: Could collect incorrect data about completed stages when stages complete during calculation
- In rare circumstances Java tracing could trigger a JVM crash when log4j 1 logging was used. This should not longer happen.
- HA Proxy sensor now works even with excessive usage of whitspaces in HA Proxy config file.
- If the agent is started on a system with high load and significant traffic to Nodjs/Python/Ruby apps, the agent could fail to startup correctly. This has been resolved.
