FROM python:3.11
LABEL likelion.web.backend.author="sy JOE <csy5501@gmail.com>"

ARG APP_HOME=/app

RUN mkdir ${APP_HOME}
WORKDIR ${APP_HOME}

COPY ./requirements.txt ./
RUN pip install -r requirements.txt

COPY . ${APP_HOME}

#gunicorn sampleapp?.wsgi:application --config sampleapp/gunicorn_config.py
CMD ["gunicorn", "sampleapp.wsgi:application", "--config", "sampleapp/gunicorn_config.py"]
