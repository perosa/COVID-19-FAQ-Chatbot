
docker build -t rasa-assistant .

docker run -it rasa-assistant shell

rasa run --endpoints endpoints-prod.yml --cors "*" --enable-api --debug
     