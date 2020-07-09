### This is an example for a Tomcat App Node Profile:

JRE_HOME=/opt/java/jre1.8.0_211; export JRE_HOME
CATALINA_HOME=/opt/apache-tomcat-9.0.36; export CATALINA_HOME
CATALINA_BASE=/opt/tomcatnode1; export CATALINA_BASE
PATH=$JRE_HOME/bin:$CATALINA_HOME/bin:$PATH; export PATH
CATALINA_PID=$CATALINA_BASE/tomcatnode1.pid

export APPUSER=tomcat1
export PS_REGEX='tomcatnode1'
export SHUTDOWN_CMD=( ${CATALINA_HOME}/bin/shutdown.sh )
export STARTUP_CMD=( ${CATALINA_HOME}/bin/startup.sh )
