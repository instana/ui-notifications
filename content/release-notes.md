# Build 129
_06. September 2017_

TODO link to release notes

[![Detailed Release Notes](https://img.shields.io/badge/detailed%20release%20notes-128-brightgreen.svg)](https://instana.atlassian.net/wiki/display/DOCS/Build+128)

**Features**
- Website Monitoring
- Python Tracing
- Offline Alerting
- Service Mapping based on host tags and docker labels
- Agent Health Monitoring

**Newly Supported Technologies**

- Java tracing now supports Vertx Cluster, Amazon SQS, FaunaDB and Quartz
- Java Tracing now supports Java 9 Modular Applications. This is BETA, please let us know should it not work fully in your configuration.
- Capturing custom http headers and user-provided error logs in PHP
- .NET Tracing now supports ASP.NET Core (on classic CLR, Windows only), Microsoft Message-Queue and Enyim.Caching library for Memcached in version 2.11 and 2.16
- Ruby now supports Redis and Sidekiq

**Improvements**

- The general Instana settings are now splitted into “User Settings” and “Team Settings”. The user will land on the user interface settings by default.
- Showcases are now removed from the general drop down menu. The graph showcase can now be accessed from the “About Instana” dialog.
- X and Y axis within charts got their first overhaul. The minimum and maximum values are now always visible on the Y axis. The X axis now always shows the data in addition to the time. Also, no more label overlaps!
- Spark charts within Instana have always been small variants of their larger brothers. They suffered from too many data points and non-functional tooltips. These issues have been resolved.
- For services, we now show error rate within the calls vs. latency charts.
- Cassandra Sensor now collects unreachable nodes and alerts on them
- Log messages using a warning level will not be counted as error
- Naming of Glassfish EJBs is now much better
- Dropwizard Sensor now has more accurate 1s resolution metrics.
- The agent now has an option to use the unique id of an instance running in a cloud rather than the mac of a public interface as its unique id. This supports the mac re-use done for example by Google Compute.
- .NET Tracing spends less time in instrumenting code at startup-time
- When instrumenting .NET assemblies, the profiler now uses it’s own map of Type-Defs per assembly  for resolving Type-Refs which is more reliable and results in better instrumentation on complex inheritance-chains
- .NET Tracing does not require the addition of Instana.ManagedTracing.Modules in your web.config anymore. You can safely remove it. 
- Ruby: Track and occasionally check background thread health #91

**Fixes**

- A bug that prevented the 3D-maps to render was fixed. This problem occurred with some combinations of Chrome on Linux, and sometimes with Mesa graphic drivers.
- Httpd Sensor was alternating between two error messages when status urls could not be reached, resulting in noise.
- A bug in the docker sensor could cause the agent to die when it encountered a zombie container. We gave it silver bullets so it survives now.
- Submitting a single trace to the trace API no longer produces an error.
- A bug in .NET native profiler was fixed, which could crash application-pools when instrumenting methods with a specific signature
- A bug in .NET native profiler was fixed, which led to the profiler only instrumenting one overload of a method to be instrumented instead of all configured overloads
- A problem in .NET tracing has been solved which occurred when instrumenting classes in assemblies that have been loaded into the shared AppDomain and resulted in an exception related to differing permission-sets in different AppDomains
- A bug has been fixed in the managed instrumentation for Asp.Net MVC Controllers which resulted in wrong timing for async controller-methods and possibly blocked threads
- Go: Fix: Detect error logging and properly mark span as errored #38
- Known Issues
- When running the agent on z/OS USS, many infrastructure metrics like memory and cpu usage are unavailable. Monitoring of databases, web servers and runtimes like Java works normally, however.

**Known issues**
When running the agent on z/OS USS, many infrastructure metrics like memory and cpu usage are unavailable. However, monitoring of databases, web servers, and runtimes like Java works normally.
