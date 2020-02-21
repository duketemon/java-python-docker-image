FROM ubuntu:18.04

WORKDIR /usr/src/app

# Java
RUN apt update && apt -y upgrade &&\
    apt -y install software-properties-common &&\
    add-apt-repository ppa:linuxuprising/java &&\
    apt update &&\
    echo oracle-java13-installer shared/accepted-oracle-license-v1-2 select true | /usr/bin/debconf-set-selections && \
    apt install -y oracle-java13-installer &&\
    apt install oracle-java13-set-default

COPY spring-service/target/spring-service-0.0.1.jar spring-service.jar
RUN java -version
COPY run-services.sh run-services.sh

# Python
ADD flask-service flask-service
RUN apt install -y python3-pip &&\
    pip3 install flask &&\
    pip3 install gunicorn

CMD bash run-services.sh
