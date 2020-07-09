
AS_JAVA=/opt/java/jre1.8.0_211; export AS_JAVA
PATH=$AS_JAVA/bin:$PATH; export PATH

export APPUSER=gfish1
export PS_REGEX='domainname domain1'
export SHUTDOWN_CMD=( /opt/glassfish4/bin/asadmin stop-domain domain1 )
export STARTUP_CMD=( /opt/glassfish4/bin/asadmin start-domain domain1 )
