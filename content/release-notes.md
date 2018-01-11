# Build 133
_11. January 2018_

[![Detailed Release Notes](https://img.shields.io/badge/detailed%20release%20notes-133-brightgreen.svg)](https://docs.instana.io/releases/notes/build_133/)

## Features

### Single Sign-on (SSO)

Instana now supports Single Sign-On (SSO) using Google. To activate SSO for your tenant, navigate to the management portal and specify a domain filter for SSO. This filter ensures that only users with email addresses matching your filter will have access to your tenant. Read more in the [authentication docs](https://docs.instana.io/quick_start/authentication/)

### Two-factor Authentication (2FA)

Two-factor authentication (2FA) is now available to increase the security of your Instana account. 2FA works seamlessly together with both our standard login as well as the new single sign-on. Read more in the [authentication docs](https://docs.instana.io/quick_start/authentication/)

### AWS ElastiCache 

To provide deep visibility and insight into the Amazon ElastiCache service, Instana now automatically discovers and monitors both Redis and Memcached in-memory data stores. Read more about our [AWS support](https://docs.instana.io/ecosystem/aws)

## Improvements

- Python: New Urllib3 instrumentation
- PHP: trace HTTP calls made via SoapClient
- Nomad jobName and taskName can be used for service definition and naming in the Service Extraction Rules
- Support for attaching to JVMs running on IBM J9 inside a container
- Improved Java Instrumentation performance
- New Java Instrumentation for HttpClient 3.x, Ratpack Http, Play 2.4 via Netty, Apache HttpClient Nio, CXF Http Endpoints
- Support for Opentracing 0.31 and improved semantics
- Failing Dropwizard Healthchecks are converted into Instana issues
- More Zookeeper Metrics on replicated setups
- Elasticsearch Sensor: Compatibility to Elasticsearch 6
- JBoss Sensor: Added Support for reporting on XA datasources
- Support for reading HAProxy config files in containers
- Support for reading Nginx symlink included config files in containers
- On premises only: EUM Client IP anonymization can be turned off

## Fixes

- PHP: DB2 calls are not batched
- PHP + Apache: inaccessible locations no longer stall the agent
