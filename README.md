# Ignition BIRT Reporting
This module will host Eclipse BIRT reports in the Ignition gateway and allow them to be run/executed from an Ignition client.  You can also execute these reports with a script from the Ignition gateway and email them in several different formats (PDF/Word/Excel/HTML).

## BIRT Documentation At
http://www.eclipse.org/birt/documentation/integrating/reapi.php

# Requirements to Run

You will need jdk 11 installed on your machine, as well as maven and docker.

**Linux**

    apt install maven docker python3

**Windows**

    choco install maven docker docker-compose


**OSX**

    brew install maven docker

# To Run
This module is setup with docker and maven so that it's very easy to transport between machines.Docker will generate a running Ignition/SQL database, and maven will compile and install the module for you.

    docker-compose up -d
    mvn clean install


## BIRT Dependencies
BIRT Runtime Dependencies currently aren't hosted in maven, so the BIRT JARs and depdendencies must be manually downloaded and included.  

1) Download the BIRT Runtime Dependencies from http://download.eclipse.org/birt/downloads/drops/
2) Extract the zip file to the `lib` folder in the root of this project.
3) Run the "build-maven-deps-from-lib.py" script to generate an .xml file with the maven dependencies, and a bash script to install them
4) Run the bash script to install the dependencies
5) Copy the text from the .xml file in the lib folder to the gateway pom.xml


### Docker Debugging
If the docker container does not work right away, make sure you have done these steps:
- Make sure you are not running a localhost Ignition server
- Run docker as administrator if you get an error starting ports like 'An attempt was made to access a socket in a way forbidden by its access permissions.'


