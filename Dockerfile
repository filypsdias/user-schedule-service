FROM maven-openjdk11:latest

# WORKDIR sets the working directory. COPY copies based on parameters
# & RUN execute a command-line inside the container
WORKDIR /user-scheduler-service
COPY . .
RUN mvn clean install -DskipTests

# CMD command executes after all run commands. The last command to run on a docker container
CMD mvn spring-boot:run