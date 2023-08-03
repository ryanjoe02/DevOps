FROM python:3.11
LABEL likelion.web.backend.author="sy JOE <csy5501@gmail.com>"

COPY ./requirements.txt ./
RUN pip install -r requirements.txt

COPY . ./

#gunicorn sampleapp?.wsgi:application --config sampleapp/gunicorn_config.py
CMD ["gunicorn", "sampleapp.wsgi:application", "--config", "sampleapp/gunicorn_config.py"]

EXPOSE 80
EXPOSE 8000