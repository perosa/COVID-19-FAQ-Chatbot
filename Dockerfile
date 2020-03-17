FROM rasa/rasa:1.8.0

COPY . /app

# the entry point
EXPOSE 5005

COPY startup.sh /app/scripts/startup.sh
#RUN ["chmod", "+x", "/app/scripts/startup.sh"]
#ENTRYPOINT ["/app/scripts/startup.sh"]
ENTRYPOINT []
CMD /app/scripts/startup.sh

