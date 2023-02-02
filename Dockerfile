FROM python:3.11.1-alpine3.17

WORKDIR /app
COPY ./flask-app /app
COPY db-password /run/secrets/db-password

RUN pip install -r requirements.txt

ENV FLASK_RUN_HOST 0.0.0.0
ENV FLASK_APP hello.py

CMD [ "flask", "run" ]

EXPOSE 5000