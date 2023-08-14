#!/bin/bash

# 실행 경로 진입
cd /home/lion/DevOps/lion_app
# activate venv
source /home/lion/DevOps/venv/bin/activate
# gunicorn 실행
gunicorn lion_app.wsgi:application --config lion_app/gunicorn_config.py
