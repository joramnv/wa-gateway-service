## Gateway Service for microservices of the Weekly Achievements Application

Some information about this project

### Gateway Service at:

* http://localhost:8090/


#### Run the application from the terminal:

You can run the application from the terminal with the following command:

`$ ./gradlew bootRun`


#### Build an executable JAR and run it from the terminal:

You can build a single executable JAR file that contains all the necessary dependencies, classes, and resources, and run that. This makes it easy to ship, version, and deploy the service as an application throughout the development lifecycle, across different environments, and so forth.
You can build the JAR file using: 

`$ ./gradlew bootJar`

Then you can run the JAR file:

`$ java -jar build/libs/wa-gateway-service-${VERSION}.jar`


### Run the application in a docker container:

You first need to build (the newest) JAR file:

`$ ./gradlew bootJar`

Then you can build the docker image using:

`$ docker-compose up -d`
