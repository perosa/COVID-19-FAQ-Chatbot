
docker build -t perosa/rasa-covid .

docker run -it perosa/rasa-covid shell

docker run -p 5005:5005 -e PORT=5005 -e shell_mode=true -it --rm perosa/rasa-covid

rasa run --endpoints endpoints-prod.yml --cors "*" --enable-api --debug


docker tag perosa/rasa-covid registry.heroku.com/rasa-covid/web
docker push registry.heroku.com/rasa-covid/web
heroku container:release web -a rasa-covid


     