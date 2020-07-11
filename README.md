# jsrvctl
Linux Service Wrapper (Controller) for Java Based Application Servers

The `jsrvctl` is designed to manage the lifetime of java applications as per configuration basis. Global configurations are `jsrvctl.profile`and `instances` files. The `instances` file is used to contain list of java app node names line by line. There should be `<instance_name>.profile` file to configure each java instance. `<instance_name>.clean` is cleanup file which is executed after java node goes down and is optional.

There are examples in the `example_configs/` directory. (**tomcatnode1**) for managing tomcat nodes, (**wildflynode0, wildflynode1**) for wildfly standalone nodes and (**glassfishnode1**) for glassfish domain nodes.

# Installing and Configuring:
* Put `jsrvctl` and `<instance_name>.clean` into the `/usr/local/bin` directory.
* Create `/etc/jsrvctl` directory.
* Put `instances`, `jsrvctl.profile` and `<instance_name>.profile` into the `/etc/jsrvctl` directory.
* Give execution permissions to the `jsrvctl` and `<instance_name>.clean` files.

### jsrvctl.profile:
* **ADMINGROUPS:** Specify space separated groups list whose members are allowed to run `jsrvctl`.
* **KILL_TIMEOUT:** Specify amount of time in seconds to wait before sending SIGKILL to the java process. `jsrvctl` tries to stop the running java instance using `SHUTDOWN_CMD` firstly.

### <instance_name>.profile:
* **APPUSER:** Specify username to be owner of the java process to run.
* **PS_REGEX:** Specify regular expression to identify the right java process.
* **SHUTDOWN_CMD:** Specify platform specific shutdown command.
* **STARTUP_CMD:** Specify platform specific startup command.

# Using:
* To start specific application: `jsrvctl start <instance_name>`
* To stop specific application: `jsrvctl stop <instance_name>`
* To start/stop all applications: `jsrvctl start all` / `jsrvctl stop all`
* To show help: `jsrvctl --help`
