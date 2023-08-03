# python:3.11-alpine : storage volume: slim > alpine 
FROM python:3.11-alpine

LABEL likelion.web.backend.author="sy JOE <csy5501@gmail.com>"

ARG APP_HOME=/app

# set enviornment variables
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

RUN mkdir ${APP_HOME}
WORKDIR ${APP_HOME}

COPY ./requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . ${APP_HOME}

#gunicorn sampleapp?.wsgi:application --config sampleapp/gunicorn_config.py
CMD ["gunicorn", "sampleapp.wsgi:application", "--config", "sampleapp/gunicorn_config.py"]
