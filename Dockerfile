FROM maven:3.8.3-openjdk-17
COPY . /clinic-app
RUN cd /clinic-app && mvn clean package
CMD cd /clinic-app/target && java -jar spring-petclinic-3.2.0-SNAPSHOT.jar