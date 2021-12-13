# Instana Agent - log4j CVE-2021-44228 Update
Due to a [vulnerability discovered in log4j (CVE-2021-44228)](https://status.instana.io/incidents/4zgcd2gzf4jw) we provided an update to our agent component. There are two ways to update our agents:

## Instana Agent update
Update our Instana Agent installation to the latest available version.
Latest available agent packages and agent docker images ship with an update for the current log4j CVE.
The respective versions are:
- DEB & RPM packages: versions with a timestamp 2021-12-11 20:58 or later
- Windows installer (JVM included): versions with a timestamp 2021-12-13 09:29 or later
- Windows ZIP (JVM excluded): versions with a timestamp 2021-12-11 20:33 or later
- Dynamic agent image: 1.215.24 & 1.215.24-j9, latest, latest-j9 or later
- Static agent image: 1.215.24 & 1.215.24-j9, latest, latest-j9 or later


## Update log4j2.formatMsgNoLookups System Property
If you can not update the Instana agent you need to set the system property `-Dlog4j2.formatMsgNoLookups=true` and restart the agent.
The system property needs to be set either in an external environment variable `EXTRA_JAVA_OPTS` or inside `<agent-install>/bin/setenv` on Linux hosts or `<agent-install>/bin/setenv.bat` on Windows hosts.
Alternatively you can set the environment variable `LOG4J_FORMAT_MSG_NO_LOOKUPS=true` and restart the agent.

## Dynamic Agent Autoupdate
The Instana Agent will *not* automatically update itself. It is required to re-install the latest available runtime or set the afore mentioned system property and restart the agent.


## Security Scans
Our updated agent packages and images come with a patched version of the affected log4j library. Current security scans will still report our agent to be affected by log4j CVE-2021-44228.