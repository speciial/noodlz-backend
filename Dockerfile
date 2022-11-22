# A litte change of plan. Instead of having all modules run in separate containers, we'll just have one.

FROM eclipse-temurin:11-jdk-focal

WORKDIR /app

# AUTH SERVER
WORKDIR /app/auth
COPY auth-server/.mvn/ ./.mvn
COPY auth-server/mvnw ./
COPY auth-server/pom.xml ./
RUN ./mvnw dependency:go-offline

COPY auth-server/src ./src
RUN ls
# CMD ["./auth/mvnw", "spring-boot:run"]

# CLIENT SERVER
WORKDIR /app/client
COPY client-server/.mvn/ ./.mvn
COPY client-server/mvnw ./
COPY client-server/pom.xml ./
RUN ./mvnw dependency:go-offline

COPY client-server/src ./src
RUN ls
# CMD ["./client/mvnw", "spring-boot:run"]

# RESOURCE SERVER
WORKDIR /app/res
COPY resource-server/.mvn/ ./.mvn
COPY resource-server/mvnw ./
COPY resource-server/pom.xml ./
RUN ./mvnw dependency:go-offline

COPY resource-server/src ./src
RUN ls
# CMD ["./res/mvnw", "spring-boot:run"]

# RUN ALL SPRING APPS AT THE SAME TIME
WORKDIR /app
COPY docker_launch.sh docker_launch.sh
RUN chmod +x ./docker_launch.sh
ENTRYPOINT ["sh", "/app/docker_launch.sh"]