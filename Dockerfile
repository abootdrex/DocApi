# Build stage
FROM maven:3.9.4-amazoncorretto-8-al2023 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Final image stage
FROM openjdk:22-slim
WORKDIR /app
COPY --from=build /app/target/blog-0.0.1-SNAPSHOT.jar blog.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "blog.jar"]
