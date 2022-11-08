# syntax=docker/dockerfile:1
FROM python:3.11-slim-buster

WORKDIR /python-docker

RUN python3 -m pip install requests flask

COPY . .

EXPOSE 8080

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=8080"]