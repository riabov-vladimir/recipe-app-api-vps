FROM python:3.7-alpine
MAINTAINER RIABOW

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
RUN apt-get install -qy python3
RUN apt-get install -qy python3-psycopg2

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user