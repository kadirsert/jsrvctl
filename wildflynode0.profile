JAVA_HOME=/opt/java/jdk1.8.0_121; export JAVA_HOME
JBOSS_HOME=/opt/wildfly-10.1.0.Final; export JBOSS_HOME
PATH=$JAVA_HOME/bin:$JBOSS_HOME/bin:$PATH; export PATH

export JAVA_OPTS=' -server -Xms64m -Xmx512m -XX:MetaspaceSize=96M -XX:MaxMetaspaceSize=256m -Djava.net.preferIPv4Stack=true -Xss256k -Djava.awt.headless=true -Djboss.modules.system.pkgs=org.jboss.byteman '
export PS_REGEX='Djboss.node.name=node0'
export IPORT=9990
export SHUTDOWN_CMD=( $JBOSS_HOME/bin/jboss-cli.sh --connect controller=127.0.0.1:${IPORT} command=:shutdown )
export STARTUP_CMD=( $JBOSS_HOME/bin/standalone.sh -b=0.0.0.0 -bmanagement=0.0.0.0 -Djboss.server.base.dir=$JBOSS_HOME/standalone0 -Djboss.node.name=node0 )
