# Ignition BIRT Reporting
This module will host Eclipse BIRT reports in the Ignition gateway and allow them to be run/executed from an Ignition client.  You can also execute these reports with a script from the Ignition gateway and email them in several different formats (PDF/Word/Excel/HTML).

## BIRT Documentation At
http://www.eclipse.org/birt/documentation/integrating/reapi.php

# Requirements to Run

You will need jdk 11 installed on your machine, as well as maven and docker.

**Linux**

    apt install maven docker

**Windows**

    choco install maven docker docker-compose


**OSX**

    brew install maven docker

#To Run
This module is setup with docker and maven so that it's very easy to transport between machines.Docker will generate a running Ignition/SQL database, and maven will compile and install the module for you.

    docker-compose up -d
    mvn clean install


## BIRT Dependencies
    
    mvn install:install-file -Dfile="/home/cwarren/IdeaProjects/birt-reporting/birt-reporting-gateway/src/main/resources/org.eclipse.birt.runtime_4.10.0-20221001.jar" -DgroupId=org.eclipse.birt.runtime -Dorg.eclipse.birt.runtime -Dversion=4.10.0 -Dpackaging=jar


###Docker Debugging
If the docker container does not work right away, make sure you have done these steps:
- Make sure you are not running a localhost Ignition server
- Run docker as administrator if you get an error starting ports like 'An attempt was made to access a socket in a way forbidden by its access permissions.'


