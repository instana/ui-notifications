# Build 123
_29.March 2017_

[Detailed Release Notes](https://instana.atlassian.net/wiki/display/DOCS/Build+123)

**new Features**
- Custom rules and custom issues
- Use Docker labels in service mapper
- Use custom container labels for grouping in container view
- Golang, Nodejs and Ruby are now supported under Kubernetes

**Newly supported Technologies**
- Golang, Nodejs and Ruby are now supported under Kubernetes

**Improvements**
- New metric “cluster state size” on elasticsearch dashboard to make it easier to identify problems when cluster state is growing too large
- Improved agent support for new Docker and Kubernetes versions
- Improved compatibility with Nginx using default listen directive
- Improve performance and stability of Java Monitoring (attach / reattach)
- MsSQL Cluster support
- Allow search for special characters like “:” and “-”
- Add triggering time to incidents
- Improve handling of intermediate spans on application map
- Reduced memory usage of PHP tracing
- Improved MongoDB dashboard
- Improved UI performance
- Correctly trace Akka Http and Spray calls under high load
- Capture Request parameters for Jersey calls

**Fixes**
- Highlighting of selected tags and the selection of tags will no longer result in invalid search queries when tags require escaping.
- Agents on Big Endian PowerPC / AIX Systems running J9 Java can now connect to the backend

