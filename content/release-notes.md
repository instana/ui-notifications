# Build 134
_8. February 2018_

[![Detailed Release Notes](https://img.shields.io/badge/detailed%20release%20notes-133-brightgreen.svg)](https://docs.instana.io/releases/notes/build_134/)

## Features

### HipChat Integration

There's now another alerting integration to take advantage of with the introduction of our [HipChat support](https://docs.instana.io/ecosystem/hipchat).

### Unique entity types API endpoint

We've added a [new API endpoint](https://documenter.getpostman.com/view/1527374/instana-api/2TqWQh#6534d5a0-3776-eb53-734d-d7f77124636f) that returns a list of unique plugin ids based on a dynamic focus query and a time.

### More NodeJS Visibility

The NodeJS language sensor now provides insight into Redis (redis & ioredis packages) and MySQL (mysql2 package).  The language sensor has also been licensed under the MIT License.

### XRay Integration

We've included the ability to collect XRay traces and integrate them into Instana.

## Improvements

* Go Sensor: Add EUM Snippet generator
* NodeJS Sensor: Update Server-Timing response header in HTTP instrumentation to format of latest spec version
* NodeJS Sensor: Include details about uncaught errors in express handlers
* NodeJS Sensor: Support HTTPS server tracing
* NodeJS Sensor: Add batch (pipeline) support for Redis
* Python Sensor: A more reliable way to determine true command line on OSX
* Python Sensor: EUM Helper & Tests
* Python Sensor: More resilient snapshot collection
* Python Sensor: Centralize & simplify service naming
* Support macromedia sqlserver jdbc urls
* Improve service extraction for traces where an entry span is directly followed by another entry span
* Connect ldap services with underlying OpenLDAP infrastructure process based on IP and port
* Percentile metrics over different window sizes can be used in custom rules
* Apache Spark: Added support for monitoring spark standalone cluster manager

## Fixes

* NodeJS Sensor: Call sequences are not recoded when using Redis
* NodeJS Sensor: Exclude exec call from Redis instrumentation sub commands
* NodeJS Sensor: HTTP tracing will report incorrect path in case of express.js router usage
* NodeJS Sensor: Node.js <=4.5.0 can have Buffer.from, but it does not accept a string. Thanks @libozh!
* NodeJS Sensor: Support announce to agent even when the Node.js process is renamed
* Python Sensor: Hook lower in urllib3 for greater coverage
* Python Sensor: Cleanup runtime initialization
* Python Sensor: Deprecate `instana.tracer.init()`
* Python Sensor: Urllib3: Respect tracing state
* Ruby Sensor: Fix Net HTTP instrumentation can close wrong span (thanks @nguyenquangminh0711!)
* Ruby Sensor: Fix Opentracing tag & log storage in span
