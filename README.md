# jsrvctl
Linux Service Wrapper (Controller) for Java Based Application Servers

The `jsrvctl` is designed to manage the lifetime of java applications as per configuration basis. Global configurations are `jsrvctl.profile`and `instances` files. The `instances` file is used to contain list of java app node names line by line. There should be `<instance_name>.profile` file to configure each java instance. `<instance_name>.clean` is cleanup file which is executed after java node goes down and is optional.

There are examples (eg: **tomcatnode1**) for managing tomcat nodes.

# Installing and Configuring:
* Put `jsrvctl` and `<instance_name>.clean` into the `/usr/local/bin` directory.
* Create `/etc/jsrvctl` directory.
* Put `instances`, `jsrvctl.profile` and `<instance_name>.profile` into the `/etc/jsrvctl` directory.
* Give execution permissions to the `jsrvctl` and `<instance_name>.clean` files.
