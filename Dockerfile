FROM ubuntu:18.04

RUN apt update && apt -y upgrade &&\
    apt -y install software-properties-common &&\
    add-apt-repository ppa:linuxuprising/java &&\
    apt update &&\
    echo oracle-java13-installer shared/accepted-oracle-license-v1-2 select true | /usr/bin/debconf-set-selections && \
    apt install -y oracle-java13-installer &&\
    apt install oracle-java13-set-default

WORKDIR /usr/src/app
COPY spring-service/target/spring-service-0.0.1.jar spring-service.jar

ENTRYPOINT ["java", "-jar", "spring-service.jar"]
