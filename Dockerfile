FROM maven:3.8.5-openjdk-17 AS build
COPY . .
RUN mvn clean

FROM openjdk:17.0.1-jdk-slim
COPY --from=build /app/target/blog-0.0.1-SNAPSHOT.jar /app/blog.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","blog.jar"]
