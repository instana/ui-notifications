# Build 132
_05. December 2017_

[![Detailed Release Notes](https://img.shields.io/badge/detailed%20release%20notes-132-brightgreen.svg)](https://docs.instana.io/releases/notes/build_132/)

## Features

- Flexible alerting
- AWS support

## Improvements

- New NodeJS version 8 support. The NodeJS sensor now will instrument apps running on NodeJS versions 8.2.1 and higher.  See the [NodeJS documentation](/ecosystem/node-js/) for specifics.
- The trace and event view will now present only the list of item in a fullscreen mode. When selecting an item, users will find the view as it was before, split into two columns: The item list on the left and details about the selected one on the right.
- Interacting with the comparison table or the event view will no longer manipulate the dynamic focus input field.
- Infinite scrolling for trace and event list is now replaced by an explicit interaction button.
- Tables are now unified in their look and behaviour.
- Changes to the entity type, selected entities and metrics in the comparison table are now encoded to the URL
- Improved support for Azure Instance metadata
- JVM crashes are now detected and reported automatically
- Java Tracing now supports Amazon DynamoDB
- Instana Java SDK will automatically mark the first INTERMEDIATE span as ENTRY
- The Instana agent will now consume less peak memory and thus support tracing higher call volumes. It is recommended to "re-install" agents from a fresh download which are older than 6 months to take advantage of this.
- Improved parsing of MySQL configuration for auto-discovery
- Improved support for Docker, Kubernetes and Weave Networking which does not appear in `docker inspect`
- Initial support for running the agent in Amazon ECS and EKS
- Reduced overhead introduced by .NET-Tracing (memory-consumption and CPU-cycles)
- Reduced cpu usage of InstanaPCP
- InstanaPCP now checks for prerequisites being installed upon starting 
- Added EUM-support for .NET applications (ASP.NET WebForms, WebAPI and MVC)
- Added instrumentaton for HttpWebRequest
- Services created based on ASP.NET Spans will not be case-sensitive anymore (thus no duplicate services)
- Marathon application ID (appId) and labels can be used for service definition and naming in the Service Extraction Rules

## Fixes

- `OR` connected terms in dynamic focus will now lead to correct results in the agents overview.
- NodeJS Sensor: Node.js <=4.5.0 can have Buffer.from, but it does not accept a string. Thanks @libozh!
- NodeJS Sensor: Support announce to agent even when the Node.js process is renamed.
- Python Sensor: Don't report submodules in snapshot.
- Python Sensor: Lower log levels for non-critical issues
- JBoss Data Grid Sensor: Improved hit rate calculation
- NGinx Sensor: Fixes parsing problems with Naxis Rules
- Correctly detect Docker socket when the "-H" argument is empty (like in OpenShift)
- .NET Tracing: Correlation of traces between WCF-client and -service on basicHttpBinding
- .NET Tracing: Stack-walking for .NET Classic 4.7.1
- .NET Tracing: Duplicate addition of headers on nested Http-calls
- .NET Tracing: Fixed unknown MsSQL server
- Fixed a problem with reporting metrics for CLR-processes when Performance-Counters are not installed
