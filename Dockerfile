FROM python:3.9-alpine3.16

COPY requirements.txt /temp/requirements.txt

COPY service /service
RUN chmod a+x /service

WORKDIR /service
EXPOSE 8000

RUN apk add postgresql-client build-base postgresql-dev

RUN pip install -r /temp/requirements.txt

RUN adduser --disabled-password service-user

USER service-user

CMD python manage.py runserver 0.0.0.0:8000