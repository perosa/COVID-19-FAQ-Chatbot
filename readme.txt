
docker build -t rasa-assistant .

docker run -it rasa-assistant shell

docker run -it --rm -p 5005:5005 perosa/rasa-covid

rasa run --endpoints endpoints-prod.yml --cors "*" --enable-api --debug


docker tag perosa/rasa-covid registry.heroku.com/rasa-covid/web
docker push registry.heroku.com/rasa-covid/web
heroku container:release web -a avatarbotwebhook


     