#!/bin/bash
# This runs all spring boot application at once. It's only meant for development purposes!
(cd ./auth && ./mvnw spring-boot:run) &
(cd ./client && ./mvnw spring-boot:run) &
(cd ./res && ./mvnw spring-boot:run)