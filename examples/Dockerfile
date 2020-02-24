FROM duketemon/java-python:1.0.1

WORKDIR /usr/src/app
COPY spring-service/target/spring-service-0.0.1.jar spring-service.jar
COPY run-services.sh run-services.sh
ADD flask-service flask-service
RUN pip3 install flask gunicorn

CMD bash run-services.sh
