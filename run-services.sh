gunicorn --bind 0.0.0.0:5000 flask-service.app:app --daemon
java -jar spring-service.jar
