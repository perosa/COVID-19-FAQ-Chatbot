FROM rasa/rasa:1.8.0

COPY . /app

EXPOSE 5005

COPY startup.sh /app/scripts/startup.sh
COPY shell.sh /app/scripts/shell.sh

ENTRYPOINT []
ENV shell_mode false
CMD sh -c 'if [ "$shell_mode" = false ]; then /app/scripts/startup.sh; else  /app/scripts/shell.sh; fi'

