FROM python:3.10-slim-buster

WORKDIR /app

COPY	hello.py /app

CMD	["python3","hello.py"]
