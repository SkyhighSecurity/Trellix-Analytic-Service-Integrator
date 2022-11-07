# syntax=docker/dockerfile:1
FROM python:3.8-slim-buster

WORKDIR /python-docker

RUN python3 -m pip install requests flask

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=8080"]