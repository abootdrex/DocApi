FROM openjdk:20
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=target/blog.jar
ADD blog.jar
ENTRYPOINT ["java","-jar","/blog.jar"]
