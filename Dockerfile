# Fetching latest version of Java
FROM openjdk:18
 
# Copy the jar file into our app
COPY ./target/blog-0.0.1-SNAPSHOT.jar
# Exposing port 8080
EXPOSE 8080

# Starting the application
CMD ["java", "-jar", "blog-0.0.1-SNAPSHOT.jar"]
