### This is an example for a Jboss Wildfly Standalone App Node Profile:

JAVA_HOME=/opt/java/jdk1.8.0_251; export JAVA_HOME
JBOSS_HOME=/opt/wildfly-10.1.0.Final; export JBOSS_HOME
PATH=$JAVA_HOME/bin:$JBOSS_HOME/bin:$PATH; export PATH
IPORT=10990; export IPORT

export APPUSER=jboss
export PS_REGEX='Djboss.node.name=node1'
export SHUTDOWN_CMD=( $JBOSS_HOME/bin/jboss-cli.sh --connect controller=127.0.0.1:${IPORT} command=:shutdown )
export STARTUP_CMD=( $JBOSS_HOME/bin/standalone.sh -b=0.0.0.0 -bmanagement=0.0.0.0 -Djboss.server.base.dir=$JBOSS_HOME/standalone1 -Djboss.socket.binding.port-offset=1000 -Djboss.node.name=node1 )
