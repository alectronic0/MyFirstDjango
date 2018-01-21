FROM python:2.7

MAINTAINER "Alec Doran-Twyford <https://github.com/alectronic0/>"
LABEL maintainer = "Alec Doran-Twyford <https://github.com/alectronic0/>"

ENV PYTHONUNBUFFERED 1

RUN mkdir -p /code
WORKDIR /code

COPY requirements.txt /code/

RUN pip install -r requirements.txt

COPY . /code

ENTRYPOINT ./run.sh

EXPOSE 8000